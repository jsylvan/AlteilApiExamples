<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html ng-app="cardFileApp" ng-controller="CardFileController">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sample listing of Alteil's cards.">
    <meta name="author" content="Alteil Marketing Team">
    <link rel="stylesheet" href="/Content/angular-ui.css">
    <link rel="stylesheet" href="/Content/bootstrap.min.css">
    <link rel="stylesheet" href="/Content/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="/Content/CardFile.css">
    <link rel="stylesheet" href="/Content/avgrund.css">
    <script src="/Scripts/jquery-1.9.1.js"></script>
    <script src="/Scripts/angular.js"></script>
    <script src="/Scripts/angular-resource.js"></script>
    <script src="/Scripts/angular-ui.js"></script>
    <script src="/Scripts/bootstrap.min.js"></script>

    <script src="/Scripts/Card/CardFileApp.js"></script>
    <title>Starter</title>
</head>
<body style="background-color: transparent;">
    <div style="width: 90%; max-width: 1235px; margin: 0 auto;">
        <div style="float: left;">
            <iframe ng-src="/Card?id={{selectedCardID}}" style="overflow-x: hidden; width: 755px; height: 480px;" frameborder="0"></iframe>
        </div>
        <div style="float: left;">
            <div class="top-zone" style="width: 477px; max-width: 477px;">
                <div>
                    <!-- Todo: hate this copy and paste job. Needs to move to angular backend. That's what it's there for. Need to use stylesheets. -->
                    <div style="margin-top: 40px;">
                        <div style="background-image: url('/Content/images/starter files/{{Sphere}}/unit-cards.png'); height: 215px; width: 462px; padding-top: 40px; padding-left: 15px;">
                            <div ng-show="Sphere == 'Lawtia'">
                                <!-- TODO: This should be pulled from the API, not hardcoded -->
                                <a id="133" ng-click="setSelectedCardID(133);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Shade.png" alt="image " /></a>
                                <a id="A1" ng-click="setSelectedCardID(133);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Shade.png" alt="image " /></a>
                                <a id="1696" ng-click="setSelectedCardID(1696);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Hell-Smoke.png" alt="image " /></a>
                                <a id="A2" ng-click="setSelectedCardID(1696);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Hell-Smoke.png" alt="image " /></a>
                                <a id="A3" ng-click="setSelectedCardID(1696);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Hell-Smoke.png" alt="image " /></a>
                                <a id="1697" ng-click="setSelectedCardID(1697);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Skeleton-Archer.png" alt="image " /></a>
                                <a id="A4" ng-click="setSelectedCardID(1697);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Skeleton-Archer.png" alt="image " /></a>
                                <a id="A5" ng-click="setSelectedCardID(1697);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Skeleton-Archer.png" alt="image " /></a>
                                <a id="1699" ng-click="setSelectedCardID(1699);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Crest-Halberd-Soldier.png" alt="image " /></a>
                                <a id="A6" ng-click="setSelectedCardID(1699);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Crest-Halberd-Soldier.png" alt="image " /></a>
                                <a id="A7" ng-click="setSelectedCardID(1699);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Crest-Halberd-Soldier.png" alt="image " /></a>
                                <a id="1698" ng-click="setSelectedCardID(1698);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Lycanthrope-[Janus].png" alt="image " /></a>
                                <a id="A8" ng-click="setSelectedCardID(1698);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Lycanthrope-[Janus].png" alt="image " /></a>
                                <a id="A9" ng-click="setSelectedCardID(1698);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Lycanthrope-[Janus].png" alt="image " /></a>
                                <a id="1702" ng-click="setSelectedCardID(1702);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Shadow-Hound.png" alt="image " /></a>
                                <a id="A10" ng-click="setSelectedCardID(1702);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Shadow-Hound.png" alt="image " /></a>
                                <a id="A11" ng-click="setSelectedCardID(1702);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Shadow-Hound.png" alt="image " /></a>
                                <a id="1700" ng-click="setSelectedCardID(1700);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Magic-Doll--Lycanthrope-.png" alt="image " /></a>
                                <a id="A12" ng-click="setSelectedCardID(1700);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Magic-Doll--Lycanthrope-.png" alt="image " /></a>
                                <a id="A13" ng-click="setSelectedCardID(1700);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Magic-Doll--Lycanthrope-.png" alt="image " /></a>
                                <a id="1701" ng-click="setSelectedCardID(1701);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Succubus.png" alt="image " /></a>
                                <a id="1695" ng-click="setSelectedCardID(1695);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Zombie-Lord.png" alt="image " /></a>
                                <a id="A14" ng-click="setSelectedCardID(1695);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Zombie-Lord.png" alt="image " /></a>
                                <a id="1703" ng-click="setSelectedCardID(1703);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Consuming-Grudge.png" alt="image " /></a>
                                <a id="1704" ng-click="setSelectedCardID(1704);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Pure-Terror.png" alt="image " /></a>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="bottom-zone">
                    <div class="center-centents1">
                        <div style="background-image: url('/Content/images/starter files/{{Sphere}}/soul-cards.png'); height: 84px; width: 269px; padding-top: 40px; padding-left: 17px;">
                            <div ng-show="Sphere == 'Lawtia'">
                                <!-- TODO: This should be pulled from the API, not hardcoded -->
                                <a id="1693" ng-click="setSelectedCardID(1693);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Magic-Doll--Mini-.png" alt="image " /></a>
                                <a id="1694" ng-click="setSelectedCardID(1694);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Magic-Doll--Melee-.png" alt="image " /></a>
                                <a id="119" ng-click="setSelectedCardID(119);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Assassin.png" alt="image " /></a>
                                <a id="121" ng-click="setSelectedCardID(121);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Mad-Priest.png" alt="image " /></a>
                                <a id="128" ng-click="setSelectedCardID(128);" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Skeleton-Master.png" alt="image " /></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
</body>
</html>
