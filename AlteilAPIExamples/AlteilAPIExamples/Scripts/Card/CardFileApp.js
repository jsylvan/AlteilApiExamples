
var cardFileApp = angular.module('cardFileApp', ['ngResource']);


CardFileController = function ($scope, $resource) {
    //TODO: Pull cardFiles from API instead of hardcoded values.  Copy and paste from old code due to time constraints. 
    //TODO: Add ability to take in a dynamic list of soul cards and play cards
    //TODO: Create new directive to dynamicly change background style, similar to ng-src for background image
    //      http://stackoverflow.com/questions/13781685/angularjs-ng-src-equivalent-for-background-imageurl

    $scope.Sphere = getParameterByName('starter'); //Todo: Use a directive
    $scope.selectedCardID = getParameterByName('activeCard');
    $scope.setSelectedCardID = function (cardID, area) {
        //TODO: Communicate with iframed directly instead of full refresh. SignlaR or direct javascript calls (requires same domain).
        $scope.selectedCardID = cardID;
        $scope.area = area;
    };    
};

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(window.location.search);
    if (results == null)
        return "";
    else
        return decodeURIComponent(results[1].replace(/\+/g, " "));
}


angular.bootstrap(document, ['cardFileApp']);


