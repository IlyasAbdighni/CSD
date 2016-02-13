angular.module("directoryApp", ['ngAnimate', 'ui.router'])
  .config(function ($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise("/");
    $stateProvider
      .state("home",{
          url : "/",
          templateUrl : "home.html",
          controller : "directoryController as dirList"
        })
      .state('about',{
          url : "/about",
          templateUrl : "about.html"
      });
  })
  .controller("directoryController", function() {

    var dirList = this;
    dirList.toggle = false;
    dirList.list = [{'name': 'ilyas', 'age' : 29, 'img' : 'test_img.jpg'},
                   {'name': 'gvlvm', 'age' : 25, 'img': 'test_img.jpg'},
                   {'name': 'gvlvm2', 'age' : 32, 'img': 'test_img.jpg'},
                   {'name': 'gvlvm3', 'age' : 25, 'img': 'test_img.jpg'}];

    dirList.addPerson = function() {
      dirList.list.push({'name': dirList.name, "age" : dirList.age});
      dirList.name = "";
      dirList.age = 0;
    }
  })
  .directive("person", function () {
    return {
      restrict : 'E',
      templateUrl : "person.html"
    }
  });
