<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html ng-app="browseApp" ng-controller="BrowseController">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sample listing of Alteil's cards.">
    <meta name="author" content="Alteil Core Team">
    <link rel="stylesheet" href="/Content/angular-ui.css">
    <link rel="stylesheet" href="/Content/bootstrap.min.css">
    <link rel="stylesheet" href="/Content/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="/Content/Browse.css">
    <link rel="stylesheet" href="/Content/avgrund.css">
    <script src="/Scripts/jquery-1.9.1.js"></script>
    <script src="/Scripts/angular.js"></script>
    <script src="/Scripts/angular-resource.js"></script>
    <script src="/Scripts/angular-ui.js"></script>
    <script src="/Scripts/bootstrap.min.js"></script>
    <script src="/Scripts/Card/BrowseApp.js"></script>
    <script src="/Scripts/Card/ jquery.avgrund.js"></script>
    <title>Browse Cards</title>
</head>
<body>    
    <div class="iframeHack">
        <center>
               <div class="spacer"></div>
        <div class="browseWrapper">
          

            <div class="row-fluid">
                <div class="span6">
                    <div class="row-fluid">
                        <div ng-repeat="card in Refess" class="span2" ng-click="loadCard(card)">
                            <a href="#join_form">
                                <img src="/Content/images/browse cards/{{card.Name}}.png" /></a>
                        </div>
                    </div>
                </div>
                <div class="span6">
                    <div class="row-fluid">
                        <div class="span2"></div>
                        <div ng-repeat="card in Falkow" class="span2" ng-click="loadCard(card)">
                            <a href="#join_form">
                                <img src="/Content/images/browse cards/{{card.Name}}.png" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="spacer"></div>
            <div class="row-fluid">
                <div class="span6">
                    <div class="row-fluid">
                        <div ng-repeat="card in Gowen" class="span2" ng-click="loadCard(card)">
                            <a href="#join_form">
                                <img src="/Content/images/browse cards/{{card.Name}}.png" /></a>
                        </div>
                    </div>
                </div>
                <div class="span6">
                    <div class="row-fluid">
                        <div class="span2"></div>
                        <div ng-repeat="card in Lawtia" class="span2" ng-click="loadCard(card)">
                            <a href="#join_form">
                                <img src="/Content/images/browse cards/{{card.Name}}.png" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="spacer"></div>
        <div class="spacer"></div>        
            <a href="http://www.alteil.com/index.php/card-list" target="_blank"><img src="/Content/images/viewfullcardlist.png" /></a>
        </center>
    <!-- popup form #2 -->
    <a href="#x" class="overlay" id="join_form"></a>
    <div class="popup">         
        <iframe src="/Card?id={{selectedCard.id}}" style="width: 800px; height: 600px;" frameborder="0"></iframe>

        <a class="close" href="#close"></a>
    </div>
    </div>
</body>
</html>
