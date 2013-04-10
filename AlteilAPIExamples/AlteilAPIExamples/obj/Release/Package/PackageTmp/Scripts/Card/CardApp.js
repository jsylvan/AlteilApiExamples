var myApp = angular.module('myApp', ['ngResource']);

CardController = function ($scope, $resource) {
    $scope.userId = 'googlebuzz';
    //http://alteilapistable.apphb.com/AlteilService.svc/GetCardById/22?alt=json&callback=angular.callbacks._1&visibility=undefined
    $scope.Activity = $resource('http://alteilapistable.apphb.com/AlteilService.svc/GetCardById/:cardID', {
        get: {
            method: 'JSONP',           
        },        
    });
    $scope.fetch = function () {
        me = this;
        this.Loading = "loading";
        this.card = this.Activity.get({
            cardID: 62
        }, function () { me.Loading = ""; me.Skills = $scope.getSkills(); });
      
        //this.Loading = "";
    };
    $scope.getSkills = function()
    {
        
        if (!this.card) {            
            return;
        }
        return [this.card.Skills.Skill0,
          this.card.Skills.Skill1,
          this.card.Skills.Skill2,
          this.card.Skills.Skill3];
    };
    $scope.fetch();      
};
