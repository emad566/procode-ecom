#=======================================================================
# 01
#=======================================================================
php artisan --version

#=======================================================================
# 02
#=======================================================================
git init
git add README.md
git add .
git commit -m "first commit"
git checkout -b begin                     // Create new branch
branch                                    // Get current branch name
git push -u origin begin                  // push in a branch
git push -u origin master                   // // push in a master to hold all version of project
// Go to settings>branches  ans set the master to be the default branch

#=======================================================================
# 03
#=======================================================================
*** Set Routes
- copy web to site.php
- copy web to admin.php
- app>Providers>RoutServiceProvider.php  // in function map()
    $this->mapSiteRoutes();
    $this->mapAdminRoutes();

    // Duplicate the: protected function mapWebRoutes() function for each route name

*** Arrange Folders:
- Create two folders in controller folder (Dashboard & Site)
- Create a folder "Models" in App folder, then Mover User.php model to model folder and change
        namespace to App\Models

*** Install packages
1- package for translatable "astroic/laravel-translatable"
https://github.com/Astrotomic/laravel-translatable

2- package for Admin translatable "mcamara/laravel-localization"
https://github.com/mcamara/laravel-localization

17:30
3- package for datatable "yajra/laravel-datatable"
https://github.com/yajra/laravel-datatables
php artisan vendor:publish --provider="Yajra\DataTables\DataTablesServiceProvider"

#=======================================================================
# 04
#=======================================================================
*** Set Public files (Template Files):
    1- copy files from ahmed emam reposatory (public/assets) to public folder (assets)
    2- Delete folder in public/assets/images (Its are not needed)
*** Set resoures view folders:
    1- Create folders in resources/view folder
                    +dashboard
                        +includes
                            +alerts
                    +site
                        +includes
                            +alerts
                    +layouts
                        -admin.blade.php //(Copy it from the reposatory)
                        -login.blade.php //(Copy it from the reposatory)

#=======================================================================
# 05
#=======================================================================
*** Delet if statment from body tag
*** Copy includes forlder form resources/view/admin to resources/view/dashboard
*** Delete all {{  }} in sidebar.blade.php
*** Test view in browser with creating route in web.php
    Route::get('/test', function () {
        return view('layouts/admin');
    });

#=======================================================================
# 06: make admin table using migration - eCommerce multi languages and tenancy
#=======================================================================
*** Create the database and link it in .env file
*** Run php artisan config:cache // to load the new config settings
*** To create admins table from migration run:
    -> php artisan make:migration create_admins_table --create=admins

        Schema::create('admins', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->timestamps();
        });

    -> open app\providers\AppServiceProvider.php
        - Then add/change to be:
            use Illuminate\Support\Facades\Schema;
            public function boot()
            {
                Schema::defaultStringLength(191);
            }

    -> php artisan migrate


*** In file: config/auth
    1- Create new guard named admin in gards to be:
    'guards' => [
        'web' => [
            'driver' => 'session',
            'provider' => 'users',
        ],

        'admin' => [
            'driver' => 'session',
            'provider' => 'users',
        ],

        'api' => [
            'driver' => 'token',
            'provider' => 'users',
            'hash' => false,
        ],
    ],

    2- Create a new provider for the new guard admin in providers,
        and change path to the new Model User.php path
        and create new Model named Admin.php and change path to reffer to it
        to be:

        'providers' => [
            'users' => [
                'driver' => 'eloquent',
                'model' => App\Models\User::class,
            ],

            'users' => [
                'driver' => 'eloquent',
                'model' => App\Models\Admin::class,
            ],

            // 'users' => [
            //     'driver' => 'database',
            //     'table' => 'users',
            // ],
        ],

#=======================================================================
# 07: admin authentication - guard and tinker account to login
#=======================================================================
*** php artisan make:model Models\\Admin
    Then change it to:

    class Admin extends Model
    {
        protected $table = 'admins';
        protected $guarded=[]; // to include all fields
        public $timestamps = true;
    }

*** In routes\admin
    Route::group(['namespace' => 'Dashboard', 'middleware'=>'auth:admin'], function () {

    });

*** Create first admin from tinker
    php artisan tinker
    $admin = new App\Models\Admin
    $admin->name ='Emadeldeen'
    $admin->email ='emade09@gmail.com'
    $admin->password =bcrypt('12345678')
    $admin->save()

#=======================================================================
# 08: prevent admin routes using admin middle ware
#=======================================================================
*** In routes\admin: Add prefix to route in admin to be:
    Route::group(['namespace' => 'Dashboard', 'middleware'=>'auth:admin', 'prefix'=>'admin'], function () {
        Route::get('users', function () {
            return "in admin";
        })->name("admin.login");
    });

*** In routes\admin: Make route for none auth
    Route::group(['namespace' => 'Dashboard', 'prefix'=>'admin'], function () {

    });

*** In: app\Http\Middleware\Authenticate.php: add rule to use auth:admin middleware if is admin
    to be:
    use Request;
    if (! $request->expectsJson()) {
        if(Request::is('admin/*'))
            return route('admin.login');
        else
            return route('login');
    }

*** In: routes\admin: add login route, to be:
    Route::group(['namespace' => 'Dashboard', 'prefix'=>'admin'], function () {
        Route::get('login', function () {
            return "please: logIn";
        })->name("admin.login");
    });
