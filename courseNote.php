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
