describe ("<%= name %> Test", function(){

  var page = require('../pageObjects/builtWithAngular.js');

  beforeEach(function() {
      isAngularSite(true);
//    Example
//    page.go("http://builtwith.angularjs.org/");

  });

  it("should", function(){

    // page interactions here

    // expectations here

  });

});