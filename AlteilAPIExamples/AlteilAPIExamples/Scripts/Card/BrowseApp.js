
var browseApp = angular.module('browseApp', ['ngResource']);


BrowseController = function ($scope, $resource) {
    $scope.selectedCard = {
        id: 0,
        Name: 'Verlaat'
    };
    $scope.loadCard = function (card) {
        $scope.selectedCard = card;
        //Todo: Communicate with iframe directly instead of a full reload
    };

    $scope.Refess = [
        {
            id: 0,
            Name: 'Verlaat'
        },
        {
            id: 198,
            Name: 'Folrart-Spear-Knight'
        },
        {
            id: 297,
            Name: 'Garfath'
        }, {
            id: 412,
            Name: 'Orthos'
        }, {
            id: 586,
            Name: 'True-Retear'
        },  ];
    $scope.Gowen = [
        {
            id: 538,
            Name: 'Beast-King-Rivera'
        },
        {
            id: 230,
            Name: 'Extension'
        },      
        {
            id: 455,
            Name: 'River-of-Fire'
        }, 
        {
            id: 237,
            Name: 'Fire-Dragon'
        }, 
        {
            id: 619,
            Name: 'Cassandra'
        },     
    ];
    $scope.Lawtia = [
            {
                id: 26,
                Name: 'Eskatia'
        },
        {
            id: 41,
            Name: 'Magic-Doll'
        },
        {
            id: 215,
            Name: 'Dragon-of-the-Mercurial-Night'
        },
        {
            id: 324,
            Name: 'Novice-Assassin'
        },
        {
            id: 523,
            Name: 'Zalzagul'
        },
    ];

    $scope.Falkow = [
         {
             id: 259,
             Name: 'Femiel'
         },
        {
            id: 271,
            Name: 'Roc'
        },
        {
            id: 351,
            Name: 'Rapier-Fencer-of-Regus'
        },
        {
            id: 633,
            Name: 'Metia'
        },
        {
            id: 563,
            Name: 'Mermaid-Soldier'
        },
    ];    
};


angular.bootstrap(document, ['browseApp']);


