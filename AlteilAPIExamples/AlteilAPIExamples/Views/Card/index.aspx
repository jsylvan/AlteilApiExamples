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
    <!--script src="/Scripts/jquery-ui-1.10.2.js"></script-->
    <script src="/Scripts/Card/CardApp.js"></script>

    <title>Alteil Card Details: {{card.Name}}</title>
</head>

<body class="{{Loading}}">
    <div id="main" style="background-image: url(/Content/images/detail-bg1.png); width: 730px; height: 462px; margin-top: 53px; background-repeat: no-repeat; padding-left: 65px; padding-top: 60px;" ng-show="card.Name">
        <div style="float: left;">
            <img ng-src="{{card.ImageURL}}" />
            <div style="background: none repeat scroll 0 0 transparent; border: 0 none; font-size: 15px; margin: 0; outline: 0 none; padding: 0; vertical-align: baseline;">
                Rarity
                <div style="float: left;" class="cardSprite cardSprite-star"></div>
            </div>
        </div>

        <div style="float: left; padding-left: 15px;">
            <h4>{{card.Name}}
            </h4>
            <p class="textnew1">
                ILLUSTRATOR : {{card.Illustrator}}
            </p>

            <div style="margin-top: 10px; margin-left: 50px; float: left; text-align: center;">
                <div style="width: 420px; clear: both;">
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
                <div style="width: 340px; clear: both;">
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
                    <div tooltip="{{ToolTips.RNG}}" title="Range determins how many columns a unit's attack can reach. Only occcupied columns count against range." class="statsvalue">
                        {{card.BaseStats.RNG}}
                    </div>
                    <div title="{{ToolTips.LP}}" class="statsvalue">
                        {{card.BaseStats.LP}}
                    </div>
                </div>
            </div>

            <div title="{{ToolTips.LV}}" class="cardSprite cardSprite-numberSphere-{{card.Sphere}}" style="float: left; margin-left: -470px;">
                <div class="sphereBigText">{{card.BaseStats.Level}}</div>
                <div class="sphereSmallText">
                    LV.
                </div>
            </div>
            <div class="textnew1" style="width: 387px; text-align: right;">
                Card Type: <span ng-hide="card.SubType1">None</span> {{card.SubType1}} / <span ng-hide="card.SubType2">None</span>{{card.SubType2}} 
            </div>
            <div class="textnew1" style="clear: both; width: 387px; text-align: right;">
                <span title="{{getCardTypeTip(card.SubType1)}}" ><span ng-hide="card.TypeSummary">None</span> {{card.TypeSummary}} </span>
            </div>
            <div ng-repeat="skill in Skills" style="padding-top: 20px;">
                <div ng-show="skill">
                    <div class="cardSprite cardSprite-Skill-{{card.Sphere}}" style="clear: both; padding-top: 3px; padding-left: 5px;">
                        <div style="float: left; vertical-align: middle; font-size: 14px; color: #FFFFFF; font-family: Times New Roman; text-transform: uppercase; padding-left: 2px; padding-top: 2px;">
                            {{skill.Name}}           
                        </div>
                        <div style="float: right;">
                            <div title="{{getSkillTip(skill.Type)}}" class="cardSprite cardSprite-Skill-{{skill.Type}}" style="float: left;"></div>
                            <div ui-jq="popover" data-original-title="{{ToolTips.SP}}" ui-jq="tooltip" style="background-color: black; float: left; height: 19px; margin-right: 6px;color:white;">
                                <img src="/Content/images/sp.gif" alt="icn" />
                                SP<span style="font-family: Helvetica; font-weight: bold;">{{skill.SP}}
                                </span>
                            </div>

                        </div>
                    </div>
                    <div style="width: 387px; font-family: 'helvetica'; font-size: 12px; margin-left: 7px; font-weight: bold;">
                        {{skill.Comment}}
                    </div>
                    <script>
                        $('*').tooltip();
                    </script>
                </div>
            </div>
        </div>
    </div>
    {{loadCard(66)}}
    <div class="modal"></div>
    <script>
        
        $('*').tooltip();
    </script>
</html>
