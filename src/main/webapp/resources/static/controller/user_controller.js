'use strict';
 
angular.module('myApp').controller('ProjectController', ['$scope', 'ProjectService', function($scope, ProjectService) {
    var self = this;
    self.project={id:null,code:'',description:''};
    self.projects=[];
 
    self.submit = submit;
    self.edit = edit;
    self.remove = remove;
    self.reset = reset;
 
 
    fetchAllProjects();
 
    function fetchAllProjects(){
        ProjectService.list()
            .then(
            function(d) {
                self.projects = d;
            },
            function(errResponse){
                console.error('Error while fetching Projects');
            }
        );
    }
 
    function createProject(project){
        ProjectService.addProject(project) //with  ProjectService
            .then(
            fetchAllProjects,
            function(errResponse){
                console.error('Error while creating Project');
            }
        );
    }
 
    function updateProject(project, id){
        ProjectService.updateProject(project, id)
            .then(
            fetchAllProjects,
            function(errResponse){
                console.error('Error while updating Project');
            }
        );
    }
 
    function deleteProject(id){
        ProjectService.removeProject(id)
            .then(
            fetchAllProjects,
            function(errResponse){
                console.error('Error while deleting Project');
            }
        );
    }
 
    function submit() {
        if(self.project.id===null){
            console.log('Saving New Project', self.project);
            createProject(self.project);
        }else{
            updateProject(self.project, self.project.id);
            console.log('Project updated with id ', self.project.id);
        }
        reset();
    }
 
    function edit(id){
        console.log('id to be edited', id);
        for(var i = 0; i < self.projects.length; i++){
            if(self.projects[i].id === id) {
                self.project = angular.copy(self.projects[i]);
                break;
            }
        }
    }
 
    function remove(id){
        console.log('id to be deleted', id);
        if(self.project.id === id) {//clean form if the project to be deleted is shown there.
            reset();
        }
        deleteProject(id);
    }
 
 
    function reset(){
        self.project={id:null,code:'',description:''};;
        $scope.myForm.$setPristine(); //reset Form
    }
 
}]);