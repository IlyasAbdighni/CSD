angular.module("directoryApp", [])
  .controller("directoryController", function() {

    var dirList = this;

    dirList.list = [{'name': 'ilyas', 'age' : 29},
                   {'name': 'gvlvm', 'age' : 25},
                   {'name': 'gvlvm2', 'age' : 25},
                   {'name': 'gvlvm3', 'age' : 25}];

    dirList.addPerson = function() {
      dirList.list.push({'name': dirList.name, "age" : dirList.age});
      dirList.name = "";
      dirList.age = 0;
    }
  })


