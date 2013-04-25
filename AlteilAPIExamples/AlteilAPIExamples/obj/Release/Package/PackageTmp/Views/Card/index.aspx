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

    <title>Alteil Card Details: {{card.Name}}</title>
</head>

<body class="{{Loading}}">
    <div id="main" class="cardSkinWrapper" ng-show="card.Name">
        <div class="cardQuickGlanceWrapper">
            <img ng-src="{{card.ImageURL}}" title="{{card.FlavorText.Text1}}" />
            <div style="background: none repeat 0 0 transparent; border: 0 none; font-size: 15px; margin: 0; outline: 0 none; padding: 0; vertical-align: baseline;" title="{{ToolTips.Rarity}}" ng-repeat="rarity in Rarity">
                <div style="float: left;" class="cardSprite cardSprite-star"></div>
            </div>
        </div>

        <div id="cardDeatilsWrapper" class="cardDeatilsWrapper">
            <div style="width: 382px;">
                <div style="float: left;">
                    <div title="{{card.FlavorText.Text2}}" class="cardName">{{card.Name}}
                    </div>
                    <p class="cardIllustrator">
                        ILLUSTRATOR : {{card.Illustrator}}
                    </p>
                </div>

            </div>
            <div class="cardStatWrapper">
                <div class="cardStatHeaders">
                    <div title="{{ToolTips.HP}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}} cardStats">
                        HP
                    </div>
                    <div title="{{ToolTips.AT}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}} cardStats">
                        AT
                    </div>
                    <div title="{{ToolTips.DF}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}} cardStats">
                        DF
                    </div>
                    <div title="{{ToolTips.AGI}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}} cardStats">
                        AGI
                    </div>
                    <div title="{{ToolTips.RNG}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}} cardStats">
                        RNG
                    </div>
                    <div title="{{ToolTips.LP}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}} cardStats notActive">
                        LP               
                    </div>
                </div>
                <div class="cardStatData" ng-hide="card.CardType == 'Grimoire'">
                    <div title="{{ToolTips.HP}}" class="statsvalue cardStats">
                        {{card.BaseStats.HP}}
                    </div>
                    <div title="{{ToolTips.AT}}" class="statsvalue cardStats">
                        {{card.BaseStats.AT}}
                    </div>
                    <div title="{{ToolTips.DF}}" class="statsvalue cardStats">
                        {{card.BaseStats.DF}}
                    </div>
                    <div title="{{ToolTips.AGI}}" class="statsvalue cardStats">
                        {{card.BaseStats.AGI}}
                    </div>
                    <div title="{{ToolTips.RNG}}" class="statsvalue cardStats">
                        {{card.BaseStats.RNG}}
                    </div>
                    <div title="{{ToolTips.LP}}" class="statsvalue cardStats notActive">
                        {{card.BaseStats.LP}}                        
                    </div>
                </div>

                <div class="cardStatData" title="{{ToolTips.Grimoire}}" ng-hide="card.CardType != 'Grimoire'">
                    <div class="statsvalue">
                        --
                    </div>
                    <div class="statsvalue">
                        --
                    </div>
                    <div class="statsvalue">
                        --
                    </div>
                    <div class="statsvalue">
                        --
                    </div>
                    <div class="statsvalue">
                        --
                    </div>
                    <div class="statsvalue notActive">
                        --
                    </div>
                </div>
                <div class="cardType sk`TableWidth" style="clear:both; float: right; padding-right: 5px;margin-left: -390px;">
                    <div class="skillTableWidth" style="text-align:right;"><span title="{{getToolTip(card.Sphere)}}">{{card.Sphere}} </span><span title="{{getToolTip(card.MultiSphere)}}">{{card.MultiSphere}} </span><span title="{{ToolTips.CardType}}">Card Type</span>: <span ng-hide="card.SubType1">None</span><span title="{{getToolTip(card.SubType1)}}">{{card.SubType1}}</span>  / <span ng-hide="card.SubType2">None</span> <span title="{{getToolTip(card.SubType2)}}">{{card.SubType2}}</span> </div>
                    <div class="skillTableWidth" style="text-align:right;"><span title="{{getToolTip(card.CardType)}}">{{card.CardType}}</span><span title="{{getToolTip(card.UnitType)}}" ng-hide="card.CardType == 'Grimoire' || card.UnitType != 'Character'">: {{card.UnitType}}</span></div>
                </div>
            </div>

            <div title="{{ToolTips.LV}}" class="cardSprite cardSprite-numberSphere-{{card.Sphere}}" style="float: left; margin-left: -390px;margin-top:-10px;">
                <div class="sphereBigText">{{card.BaseStats.Level}}</div>
                <div class="sphereSmallText">
                    LV.
                </div>
            </div>

            <div class="textnew1" style="clear: both; width: 387px; text-align: right;">
            </div>
            <div ng-repeat="skill in Skills" style="padding-top: 20px;" ng-show="skill">
                <div ng-class="skill.Type == 'Soul' && 'notActive' || ''">
                    <div class="paddedTop cardSprite cardSprite-Skill-{{card.Sphere}}" style="clear: both; padding-left: 3px;">
                        <div title="{{getToolTip(skill.Type)}}" class="cardSprite cardSprite-Skill-{{skill.Type}} skillTableWidth" style="float: left; margin-top: 2px;"></div>
                        <div class="cardSkillName" style="float: left; vertical-align: middle; text-transform: uppercase; padding-left: 6px; padding-top: 2px;">
                            {{skill.Name}}           
                        </div>
                        <div class="skillBoxRightCap">

                            <div class="cardSkillSP" data-original-title="{{ToolTips.SP}}" style="background-color: black; float: right; height: 16px; overflow:hidden; margin-right: 12px; margin-top: 0px; ">
                                <img src="/Content/images/sp.gif" alt="SP" style="margin-top: -2px;" />
                                SP <span style="">{{skill.SP}}
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="cardSkillComment skillTableWidth">
                        {{skill.Comment}}
                    </div>
                    <script>
                        $('*').tooltip();
                    </script>
                </div>
            </div>
        </div>
    </div>
<script>

    $('*').tooltip();
    </script>
</html>
