
php artisan --version
#=======================================================================
# 01
#=======================================================================
git init
git add README.md
git add .
git commit -m "first commit"
git checkout -b begin                     // Create new branch
branch                                    // Get current branch name
git push -u origin begin                  // push in a branch
git push u origin master                   // // push in a master to hold all version of project
// Go to settings>branches  ans set the master to be the default branch
#=======================================================================
# 02
#=======================================================================
Set Routes
- copy web to site.php
- copy web to admin.php
- app>Providers>RoutServiceProvider.php  // in function map()
    $this->mapSiteRoutes();
    $this->mapAdminRoutes();

    // Duplicate the: protected function mapWebRoutes() function for each route name
