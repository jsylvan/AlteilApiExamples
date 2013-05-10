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
            <iframe ng-src="/Card?id={{selectedCardID}}&area={{area}}" style="overflow-x: hidden; width: 755px; height: 480px;" frameborder="0"></iframe>
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
                            <div ng-show="Sphere == 'Refess'">
                                <a id="647" ng-click="setSelectedCardID(647);" href="#">
                                    <img src="/Content/images/starter files/Refess/Safiria.png" alt="image " /></a>
                                <a id="A28" ng-click="setSelectedCardID(647);" href="#">
                                    <img src="/Content/images/starter files/Refess/Safiria.png" /></a>
                                <a id="1688" ng-click="setSelectedCardID(1688);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Guardian.png" alt="image " /></a>
                                <a id="A29" ng-click="setSelectedCardID(1688);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Guardian.png" alt="image " /></a>
                                <a id="A30" ng-click="setSelectedCardID(1688);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Guardian.png" alt="image " /></a>
                                <a id="1689" ng-click="setSelectedCardID(1689);" href="#">
                                    <img src="/Content/images/starter files/Refess/Sunlight-Knight.png" alt="image " /></a>
                                <a id="A31" ng-click="setSelectedCardID(1689);" href="#">
                                    <img src="/Content/images/starter files/Refess/Sunlight-Knight.png" alt="image " /></a>
                                <a id="A32" ng-click="setSelectedCardID(1689);" href="#">
                                    <img src="/Content/images/starter files/Refess/Sunlight-Knight.png" alt="image " /></a>
                                <a id="113" ng-click="setSelectedCardID(113);" href="#">
                                    <img src="/Content/images/starter files/Refess/Will-o'-the-Wisp.png" alt="image " /></a>
                                <a id="A33" ng-click="setSelectedCardID(113);" href="#">
                                    <img src="/Content/images/starter files/Refess/Will-o'-the-Wisp.png" alt="image " /></a>
                                <a id="379" ng-click="setSelectedCardID(379);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Knight-Captain.png" alt="image " /></a>
                                <a id="A34" ng-click="setSelectedCardID(379);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Knight-Captain.png" alt="image " /></a>
                                <a id="A35" ng-click="setSelectedCardID(379);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Knight-Captain.png" alt="image " /></a>
                                <a id="114" ng-click="setSelectedCardID(114);" href="#">
                                    <img src="/Content/images/starter files/Refess/Kesaran-Pasaran.png" alt="image " /></a>
                                <a id="1690" ng-click="setSelectedCardID(1690);" href="#">
                                    <img src="/Content/images/starter files/Refess/Light-Magic-Archer.png" alt="image " /></a>
                                <a id="1691" ng-click="setSelectedCardID(1691);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Unicorn-Knight.png" alt="image " /></a>
                                <a id="A36" ng-click="setSelectedCardID(1691);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Unicorn-Knight.png" alt="image " /></a>
                                <a id="A37" ng-click="setSelectedCardID(1691);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Unicorn-Knight.png" alt="image " /></a>
                                <a id="380" ng-click="setSelectedCardID(380);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Spear-Knight.png" alt="image " /></a>
                                <a id="A38" ng-click="setSelectedCardID(380);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Spear-Knight.png" alt="image " /></a>
                                <a id="1692" ng-click="setSelectedCardID(1692);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Charge-Knight.png" alt="image " /></a>
                                <a id="A39" ng-click="setSelectedCardID(t1692);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Charge-Knight.png" alt="image " /></a>
                                <a id="A40" ng-click="setSelectedCardID(1692);" href="#">
                                    <img src="/Content/images/starter files/Refess/Folrart-Charge-Knight.png" alt="image " /></a>
                                <a id="382" ng-click="setSelectedCardID(382);" href="#">
                                    <img src="/Content/images/starter files/Refess/Recovery-Powder.png" alt="image " /></a>
                                <a id="1705" ng-click="setSelectedCardID(1705);" href="#">
                                    <img src="/Content/images/starter files/Refess/Bond-With-the-Fallen.png" alt="image " /></a>
                            </div>
                            <div ng-show="Sphere == 'Falkow'">
                                <a id="163" ng-click="setSelectedCardID(163);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Haste-Soldier.png" alt="image " /></a>
                                <a id="A41" ng-click="setSelectedCardID(163);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Haste-Soldier.png" alt="image " /></a>
                                <a id="A42" ng-click="setSelectedCardID(163);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Haste-Soldier.png" alt="image " /></a>
                                <a id="160" ng-click="setSelectedCardID(160);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Sea-Hunter.png" alt="image " /></a>
                                <a id="A43" ng-click="setSelectedCardID(160);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Sea-Hunter.png" alt="image " /></a>
                                <a id="A44" ng-click="setSelectedCardID(160);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Sea-Hunter.png" alt="image " /></a>
                                <a id="1716" ng-click="setSelectedCardID(1716);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Elite-Fencer-of-Regus.png" alt="image " /></a>
                                <a id="A45" ng-click="setSelectedCardID(1716);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Elite-Fencer-of-Regus.png" alt="image " /></a>
                                <a id="A46" ng-click="setSelectedCardID(1716);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Elite-Fencer-of-Regus.png" alt="image " /></a>
                                <a id="1232" ng-click="setSelectedCardID(1232);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Owl-Sage.png" alt="image " /></a>
                                <a id="A47" ng-click="setSelectedCardID(1232);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Owl-Sage.png" alt="image " /></a>
                                <a id="1717" ng-click="setSelectedCardID(1717);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Pirate-Crewman.png" alt="image " /></a>
                                <a id="A48" ng-click="setSelectedCardID(1717);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Pirate-Crewman.png" alt="image " /></a>
                                <a id="A49" ng-click="setSelectedCardID(1717);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Pirate-Crewman.png" alt="image " /></a>
                                <a id="1715" ng-click="setSelectedCardID(1715);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Aqua-Sorcerer.png" alt="image " /></a>
                                <a id="A50" ng-click="setSelectedCardID(1715);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Aqua-Sorcerer.png" alt="image " /></a>
                                <a id="168" ng-click="setSelectedCardID(168);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Undine.png" alt="image " /></a>
                                <a id="A51" ng-click="setSelectedCardID(168);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Undine.png" alt="image " /></a>
                                <a id="167" ng-click="setSelectedCardID(167);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Sylph.png" alt="image " /></a>
                                <a id="A52" ng-click="setSelectedCardID(167);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Sylph.png" alt="image " /></a>
                                <a id="661" ng-click="setSelectedCardID(661);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Sorcerer-Monk-of-Regus.png" alt="image " /></a>
                                <a id="A53" ng-click="setSelectedCardID(661);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Sorcerer-Monk-of-Regus.png" alt="image " /></a>
                                <a id="1718" ng-click="setSelectedCardID(1718);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Sweeping-Tidalwave.png" alt="image " /></a>
                                <a id="170" ng-click="setSelectedCardID(170);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Return.png" alt="image " /></a>
                                <a id="1719" ng-click="setSelectedCardID(1719);" href="#">
                                    <img src="/Content/images/starter files/Falkow/Withdrawal-Strategy.png" alt="image " /></a>
                            </div>
                            <div ng-show="Sphere == 'Gowen'">
                                <a id="1708" ng-click="setSelectedCardID(1708);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Man-Eating-Tiger.png" alt="image " /></a>
                                <a id="A15" ng-click="setSelectedCardID(1708);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Man-Eating-Tiger.png" alt="image " /></a>
                                <a id="A16" ng-click="setSelectedCardID(1708);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Man-Eating-Tiger.png" alt="image " /></a>
                                <a id="150" ng-click="setSelectedCardID(150);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Salamander.png" alt="image " /></a>
                                <a id="A17" ng-click="setSelectedCardID(150);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Salamander.png" alt="image " /></a>
                                <a id="145" ng-click="setSelectedCardID(145);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Bear-Killing-Axeman.png" alt="image " /></a>
                                <a id="A18" ng-click="setSelectedCardID(145);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Bear-Killing-Axeman.png" alt="image " /></a>
                                <a id="A19" ng-click="setSelectedCardID(145);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Bear-Killing-Axeman.png" alt="image " /></a>
                                <a id="143" ng-click="setSelectedCardID(143);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Fire-Storm-Wyvern.png" alt="image " /></a>
                                <a id="A20" ng-click="setSelectedCardID(143);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Fire-Storm-Wyvern.png" alt="image " /></a>
                                <a id="1709" ng-click="setSelectedCardID(1709);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Samurai-Lady.png" alt="image " /></a>
                                <a id="A21" ng-click="setSelectedCardID(1709);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Samurai-Lady.png" alt="image " /></a>
                                <a id="A22" ng-click="setSelectedCardID(1709);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Samurai-Lady.png" alt="image " /></a>
                                <a id="142" ng-click="setSelectedCardID(142);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Efreet.png" alt="image " /></a>
                                <a id="A23" ng-click="setSelectedCardID(142);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Efreet.png" alt="image " /></a>
                                <a id="1710" ng-click="setSelectedCardID(1710);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Mercenary.png" alt="image " /></a>
                                <a id="A24" ng-click="setSelectedCardID(1710);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Mercenary.png" alt="image " /></a>
                                <a id="A25" ng-click="setSelectedCardID(1710);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Mercenary.png" alt="image " /></a>
                                <a id="136" ng-click="setSelectedCardID(136);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Bellydancer.png" alt="image " /></a>
                                <a id="A26" ng-click="setSelectedCardID(136);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Bellydancer.png" alt="image " /></a>
                                <a id="655" ng-click="setSelectedCardID(655);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Alraune.png" alt="image " /></a>
                                <a id="A27" ng-click="setSelectedCardID(655);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Alraune.png" alt="image " /></a>
                                <a id="148" ng-click="setSelectedCardID(148);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Exploding-Spores.png" alt="image " /></a>
                                <a id="153" ng-click="setSelectedCardID(153);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Folrart-Guardian.png" alt="image " /></a>
                                <a id="1711" ng-click="setSelectedCardID(1711);" href="#">
                                    <img src="/Content/images/starter files/Gowen/Ball-of-Flame.png" alt="image " /></a>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="bottom-zone">
                    <div class="center-centents1">
                        <div style="background-image: url('/Content/images/starter files/{{Sphere}}/soul-cards.png'); height: 84px; width: 269px; padding-top: 40px; padding-left: 17px;">
                            <div ng-show="Sphere == 'Refess'">
                                <a id="109" ng-click="setSelectedCardID(109, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Refess/Boy-Combat-Priest.png" alt="image " /></a>
                                <a id="1684" ng-click="setSelectedCardID(1684, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Refess/Brutal-Mammoth.png" alt="image " /></a>
                                <a id="1685" ng-click="setSelectedCardID(1685, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Refess/Lycanthrope-[Hanuman].png" alt="image " /></a>
                                <a id="1686" ng-click="setSelectedCardID(1686, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Refess/Cait-Sith.png" alt="image " /></a>
                                <a id="1687" ng-click="setSelectedCardID(1687, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Refess/Phoenix.png" alt="image " /></a>
                            </div>

                            <div ng-show="Sphere == 'Falkow'">
                                <a id="165" ng-click="setSelectedCardID(165, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Falkow/Witch.png" alt="image " /></a>
                                <a id="161" ng-click="setSelectedCardID(161, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Falkow/Eagle-Soldier.png" alt="image " /></a>
                                <a id="1712" ng-click="setSelectedCardID(1712, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Falkow/Deep-Squid.png" alt="image " /></a>
                                <a id="1713" ng-click="setSelectedCardID(1713, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Falkow/Giant-Manta-Ray.png" alt="image " /></a>
                                <a id="1714" ng-click="setSelectedCardID(1714, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Falkow/Leviathan.png" alt="image " /></a>
                            </div>
                            <div ng-show="Sphere == 'Lawtia'">
                                <!-- TODO: This should be pulled from the API, not hardcoded -->
                                <a id="1693" ng-click="setSelectedCardID(1693, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Magic-Doll--Mini-.png" alt="image " /></a>
                                <a id="1694" ng-click="setSelectedCardID(1694, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Magic-Doll--Melee-.png" alt="image " /></a>
                                <a id="119" ng-click="setSelectedCardID(119, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Assassin.png" alt="image " /></a>
                                <a id="121" ng-click="setSelectedCardID(121, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Mad-Priest.png" alt="image " /></a>
                                <a id="128" ng-click="setSelectedCardID(128, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Lawtia/Skeleton-Master.png" alt="image " /></a>
                            </div>
                            <div ng-show="Sphere == 'Gowen'">
                                <a id="390" ng-click="setSelectedCardID(390, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Gowen/Dryad-Soldier.png" alt="image " /></a>
                                <a id="1706" ng-click="setSelectedCardID(1706, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Gowen/Volcano-Wyvern.png" alt="image " /></a>
                                <a id="1707" ng-click="setSelectedCardID(1707, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Gowen/Heierrat-Dual-Gunslinger.png" alt="image " /></a>
                                <a id="394" ng-click="setSelectedCardID(394, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Gowen/Gaia-Anaconda.png" alt="image " /></a>
                                <a id="392" ng-click="setSelectedCardID(392, 'Soul');" href="#">
                                    <img src="/Content/images/starter files/Gowen/Giant-Ork.png" alt="image " /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
