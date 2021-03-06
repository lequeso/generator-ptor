describe "Built With Angular", ->

  page = require("../pageObjects/builtWithAngular.js")

  beforeEach ->
    page.go "http://builtwith.angularjs.org/"

  it "should mention 207 sites were done with this fw", ->
    amount = page.getProjectsAmount()
    expect(amount.getText()).toEqual "207"

  it "should be able to search projects", ->
    page.search "airline"
    projectsList = page.getProjectsList()
    expect(projectsList.count()).toBe 1

  it "should be click on a project and display details", ->
    page.search "airline"
    project = page.getProjectsListByRow(0)
    expect(project.getText()).toMatch /WhichAirline/
    project.click()

