'use strict';
 
angular.module('myApp').factory('ProjectService', ['$http', '$q', function($http, $q){
 
    var REST_SERVICE_URI = 'http://localhost:8080/PleaseRestD/project/';
 
    var factory = {
        list: list,
        addProject: addProject,
        updateProject:updateProject,
        removeProject:removeProject
    };
 
    return factory;
 
    function list() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while fetching Projects');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
    function addProject(project) {
        var deferred = $q.defer();
        $http.post(REST_SERVICE_URI, project)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while creating Project');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
 
    function updateProject(project, id) {
        var deferred = $q.defer();
        $http.put(REST_SERVICE_URI+id, project)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while updating Project');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
    function removeProject(id) {
        var deferred = $q.defer();
        $http.delete1(REST_SERVICE_URI+id)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error while deleting Project');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
 
}]);