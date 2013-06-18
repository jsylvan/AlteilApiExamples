<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html ng-app="myApp" ng-controller="CardController">
<head runat="server">
    <meta name="viewport" content="width=device-width" />    
    <!--link href="/Content/themes/base/minified/jquery-ui.min.css" rel="stylesheet" /-->
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="/Content/bootstrap-responsive.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/Content/angular-ui.css">
    <link href="/Content/Site.css" rel="stylesheet" />
    <script src="/Scripts/jquery-1.9.1.js"></script>
    <script src="/Scripts/angular.js"></script>
    <script src="/Scripts/angular-resource.js"></script>
    <script src="/Scripts/angular-ui.js"></script>
    <script src="/Scripts/bootstrap.min.js"></script>
    <script src="/Scripts/Card/CardApp.js"></script>

    <title>Alteil Card Details: {{card.Name}}
    </title>
</head>

<body class="{{Loading}}" style="overflow: hidden">    
    <div id="main" class="cardSkinWrapper" ng-show="card.Name">
        <div class="cardQuickGlanceWrapper">
            <img ng-src="{{card.ImageURL}}" title="{{card.FlavorText.Text2}}" class="bottomtooltip" />
            <div class="cardRarity">
                Rarity
            </div>
            <div class="rarityHR" style="width: 200px; background-color: black; height: 1px; border: solid 1px double;">
            </div>
            <div style="">
                <div style="background: none repeat 0 0 transparent; border: 0 none; font-size: 15px; margin: 0; outline: 0 none; padding: 0; padding-left: 4px; vertical-align: baseline;" title="{{ToolTips.Rarity}}" ng-repeat="rarity in Rarity">
                    <div style="float: left;" class="cardSprite cardSprite-star"></div>
                </div>
            </div>
        </div>

        <div id="cardDeatilsWrapper" class="cardDeatilsWrapper">
            <div style="width: 382px; padding-left: 7px;">
                <div style="float: left;">
                    <div class="cardName">
                        {{card.Name}}
                    </div>
                    <p class="cardIllustrator">
                        ILLUSTRATOR : {{card.Illustrator}}
                    </p>
                </div>

            </div>

            <div class="cardStatWrapper">
                <div class="cardStatHeaders">
                    <div title="{{ToolTips.HP}}" class="statCell firstCellWidth repeaterSprite repeaterSprite-{{card.Sphere}} cardStats cardStatsHeader {{PlayCardStyle}}">
                        HP
                    </div>
                    <div title="{{ToolTips.AT}}" class="statCell middleCellWidth repeaterSprite repeaterSprite-{{card.Sphere}} cardStats cardStatsHeader {{PlayCardStyle}}">
                        AT
                    </div>
                    <div title="{{ToolTips.DF}}" class="statCell  middleCellWidth repeaterSprite repeaterSprite-{{card.Sphere}} cardStats cardStatsHeader {{PlayCardStyle}}">
                        DF
                    </div>
                    <div title="{{ToolTips.AGI}}" class="statCell middleCellWidth repeaterSprite repeaterSprite-{{card.Sphere}} cardStats cardStatsHeader {{PlayCardStyle}}">
                        AGI
                    </div>
                    <div title="{{ToolTips.RNG}}" class="statCell middleCellWidth repeaterSprite repeaterSprite-{{card.Sphere}} cardStats cardStatsHeader {{PlayCardStyle}}">
                        RNG
                    </div>
                    <div title="{{ToolTips.LP}}" class="statCell lastCellWidth repeaterSprite repeaterSprite-{{card.Sphere}} cardStats  {{SoulCardStyle}}">
                        LP               
                    </div>
                </div>
                <div class="cardStatData" ng-hide="card.CardType == 'Grimoire'">
                    <div title="{{ToolTips.HP}}" class="statCell firstCellWidth cardStats cardStatsValue {{PlayCardStyle}}">
                        {{card.BaseStats.HP}}
                    </div>
                    <div title="{{ToolTips.AT}}" class="statCell middleCellWidth cardStats cardStatsValue {{PlayCardStyle}}">
                        {{card.BaseStats.AT}}
                    </div>
                    <div title="{{ToolTips.DF}}" class="statCell middleCellWidth cardStats cardStatsValue {{PlayCardStyle}}">
                        {{card.BaseStats.DF}}
                    </div>
                    <div title="{{ToolTips.AGI}}" class="statCell middleCellWidth cardStats cardStatsValue {{PlayCardStyle}}">
                        {{card.BaseStats.AGI}}
                    </div>
                    <div title="{{ToolTips.RNG}}" class="statCell middleCellWidth cardStats cardStatsValue {{PlayCardStyle}}">
                        {{card.BaseStats.RNG}}
                    </div>
                    <div title="{{ToolTips.LP}}" class="statCell lastCellWidth  cardStats cardStatsValue {{SoulCardStyle}}">
                        {{card.BaseStats.LP}}                        
                    </div>
                </div>

                <div class="cardStatData" title="{{ToolTips.Grimoire}}" ng-hide="card.CardType != 'Grimoire'">
                    <div class="statCell firstCellWidth {{PlayCardStyle}}">
                        --
                    </div>
                    <div class="statCell middleCellWidth {{PlayCardStyle}}">
                        --
                    </div>
                    <div class="statCell middleCellWidth {{PlayCardStyle}}">
                        --
                    </div>
                    <div class="statCell middleCellWidth {{PlayCardStyle}}">
                        --
                    </div>
                    <div class="statCell middleCellWidth {{PlayCardStyle}}">
                        --
                    </div>
                    <div class="statCell lastCellWidth {{SoulCardStyle}}">
                        --
                    </div>
                </div>
                <div class="cardStatData tabbleBottomWidth">
                    <div class="firstCellWidth tabbleBottom tableSprite tableSprite-{{card.Sphere}}-statbar-bottom">
                    </div>
                    <div class="middleCellWidth tabbleBottom tableSprite tableSprite-{{card.Sphere}}-statbar-bottom">
                    </div>
                    <div class="middleCellWidth tabbleBottom tableSprite tableSprite-{{card.Sphere}}-statbar-bottom">
                    </div>
                    <div class="middleCellWidth tabbleBottom tableSprite tableSprite-{{card.Sphere}}-statbar-bottom">
                    </div>
                    <div class="middleCellWidth tabbleBottom tableSprite tableSprite-{{card.Sphere}}-statbar-bottom">
                    </div>
                    <div class="lastCellWidth tabbleBottom tableSprite tableSprite-{{card.Sphere}}-statbar-bottom notActive">
                    </div>
                </div>
                <div class="cardTypeText cardTypePosition">
                    <div class="" style="text-align: right;"><span title="{{getToolTip(card.MultiSphere)}}">{{card.MultiSphere}} </span><span title="{{ToolTips.CardType}}">Card Type</span>: <span title="{{getToolTip(card.SubType1)}}">{{card.SubType1}}</span> <span ng-show='card.SubType2 && card.SubType1'> / </span><span title="{{getToolTip(card.SubType2)}}">{{card.SubType2}}</span> </div>
                    <div class="" style="text-align: right; line-height: 10px; padding-bottom: 9px;"><span title="{{getToolTip(card.CardType)}}" ng-hide="card.UnitType == 'Character'">{{card.CardType}}</span><span title="{{getToolTip(card.UnitType)}}" ng-hide="card.CardType == 'Grimoire' || card.UnitType != 'Character'"> {{card.UnitType}}</span></div>
                </div>
            </div>

            <div title="{{ToolTips.LV}}" class="cardSprite cardSprite-numberSphere-{{card.Sphere}}" style="float: left; margin-left: -410px; margin-top: -10px;z-index:3;">
                <div class="sphereBigText">{{card.BaseStats.Level}}</div>
                <div class="sphereSmallText">
                    LV.
                </div>
            </div>
            <div class="scrollPane">
                <div class="textnew1" style="clear: both; width: 387px; text-align: right;">
                </div>
                <div ng-repeat="skill in Skills" ng-show="skill" ng-class="skill.Type == 'Soul' &&  SoulCardStyle">
                    <div ng-class="skill.Type != 'Soul' &&  PlayCardStyle">
                        <div class="paddedTop cardSprite cardSprite-Skill-{{card.Sphere}}" style="clear: both; padding-left: 8px;">
                            <div title="{{getToolTip(skill.Type)}}" class="cardSprite cardSprite-Skill-{{skill.Type}} skillTableWidth" style="float: left; margin-top: 2px;"></div>
                            <div class="cardSkillName glow" style="float: left; vertical-align: middle; text-transform: uppercase; padding-left: 6px; padding-top: 2px;">
                                {{skill.Name}}           
                            </div>
                            <div class="skillBoxRightCap" >

                                <div class="cardSkillSP" data-original-title="{{ToolTips.SP}}" style="background-color: black; float: right; height: 16px; overflow: hidden; margin-right: 30px; margin-top: 0px;">
                                    <img src="/Content/images/SP-mark.png" alt="SP" style="margin-top: -2px;" />
                                    SP <span style="">{{skill.SP}}
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="cardSkillComment skillTableWidth">
                            {{skill.Comment}}
                        </div>
                        <script>       
                            $('.bottomtooltip').tooltip(
                            {
                                placement: 'bottom'
                            });
                            $('*').tooltip();
                        </script>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- Sample of how to load new cards -->
    <div style="display:none;">        
        <input id="cardNumber" ng-model="strID" />
        <a id="cardLoader" ng-click="loadCard(strID)">Load card #{{strID}}</a>
    </div>
    <script>

    </script>
</html>
