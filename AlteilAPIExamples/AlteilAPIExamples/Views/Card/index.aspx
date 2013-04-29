<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html ng-app="myApp" ng-controller="CardController">
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <script>
        var cardID = 66;
    </script>
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
            <div style="background: none repeat 0 0 transparent; border: 0 none; font-size: 15px; margin: 0; outline: 0 none; padding: 0; vertical-align: baseline;" title="{{ToolTips.Rarity}}">
                <div style="float: left;" class="cardSprite cardSprite-star"></div>
            </div>
        </div>

        <div id="cardDeatilsWrapper" class="cardDeatilsWrapper">
            <div style="width: 382px;">
                <div style="float: left;">
                    <h4 title="{{card.FlavorText.Text2}}">{{card.Name}}
                    </h4>
                    <p class="textnew1">
                        ILLUSTRATOR : {{card.Illustrator}}
                    </p>
                </div>
                <div class="textnew1" style="width: 387px; text-align: right;">
                    <span title="{{ToolTips.CardType}}">Card Type</span>: <span ng-hide="card.SubType1">None</span><span title="{{geToolTip(card.SubType1)}}">{{card.SubType1}}</span>  / <span ng-hide="card.SubType2">None</span><span title="{{geToolTip(card.SubType2)}}">{{card.SubType2}}</span>
                </div>
            </div>
            <div class="cardStatWrapper">
                <div class="cardStatHeaders">
                    <div title="{{ToolTips.HP}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        HP
                    </div>
                    <div title="{{ToolTips.AT}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        AT
                    </div>
                    <div title="{{ToolTips.DF}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        DF
                    </div>
                    <div title="{{ToolTips.AGI}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        AGI
                    </div>
                    <div title="{{ToolTips.RNG}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        RNG
                    </div>
                    <div title="{{ToolTips.LP}}" class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        LP               
                    </div>
                </div>
                <div class="cardStatData">
                    <div title="{{ToolTips.HP}}" class="statsvalue">
                        {{card.BaseStats.HP}}
                    </div>
                    <div title="{{ToolTips.AT}}" class="statsvalue">
                        {{card.BaseStats.AT}}
                    </div>
                    <div title="{{ToolTips.DF}}" class="statsvalue">
                        {{card.BaseStats.DF}}
                    </div>
                    <div title="{{ToolTips.AGI}}" class="statsvalue">
                        {{card.BaseStats.AGI}}
                    </div>
                    <div title="{{ToolTips.RNG}}" class="statsvalue">
                        {{card.BaseStats.RNG}}
                    </div>
                    <div title="{{ToolTips.LP}}" class="statsvalue">
                        {{card.BaseStats.LP}}
                    </div>
                </div>
            </div>

            <div title="{{ToolTips.LV}}" class="cardSprite cardSprite-numberSphere-{{card.Sphere}}" style="float: left; margin-left: -390px;">
                <div class="sphereBigText">{{card.BaseStats.Level}}</div>
                <div class="sphereSmallText"nl
                    LV.
                </div>
            </div>

            <div class="textnew1" style="clear: both; width: 387px; text-align: right;">
            </div>
            <div ng-repeat="skill in Skills" style="padding-top: 20px;">
                <div ng-show="skill">
                    <div class="paddedTop cardSprite cardSprite-Skill-{{card.Sphere}}" style="clear: both; padding-left: 5px;">
                        <div style="float: left; vertical-align: middle; font-size: 14px; color: #FFFFFF; font-family: Times New Roman; text-transform: uppercase; padding-left: 2px; padding-top: 2px;">
                            {{skill.Name}}           
                        </div>
                        <div class="skillBoxRightCap">
                            <div title="{{geToolTip(skill.Type)}}" class="cardSprite cardSprite-Skill-{{skill.Type}}" style="float: left;"></div>
                            <div ui-jq="popover" data-original-title="{{ToolTips.SP}}" ui-jq="tooltip" style="background-color: black; float: left; height: 19px; margin-right: 6px; color: white; font-family: Helvetica; font-weight: bold;">
                                <img src="/Content/images/sp.gif" alt="SP" style="margin-top:-2px;"/>
                                SP <span style="">{{skill.SP}}
                                </span>
                            </div>

                        </div>
                    </div>
                    <div class="cardSkillComment">
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
