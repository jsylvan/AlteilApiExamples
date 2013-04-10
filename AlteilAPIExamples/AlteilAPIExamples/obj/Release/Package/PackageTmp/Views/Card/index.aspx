<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html ng-app ng-controller="CardController">
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="/Content/angular-ui.css" >
    <link href="/Content/Site.css" rel="stylesheet" />
    <script src="/Scripts/jquery-1.9.1.js"></script>    
    <script>
        // include angular loader, which allows the files to load in any order
        /*
         AngularJS v1.0.0rc1
         (c) 2010-2012 AngularJS http://angularjs.org
         License: MIT
        */
        'use strict'; (function (i) {
            function d(c, a, e) { return c[a] || (c[a] = e()) } return d(d(i, "angular", Object), "module", function () {
                var c = {}; return function (a, e, f) {
                    e && c.hasOwnProperty(a) && (c[a] = null); return d(c, a, function () {
                        function b(a, b, d) { return function () { c[d || "push"]([a, b, arguments]); return g } } if (!e) throw Error("No module: " + a); var c = [], d = [], h = b("$injector", "invoke"), g = {
                            _invokeQueue: c, _runBlocks: d, requires: e, name: a, provider: b("$provide", "provider"), factory: b("$provide", "factory"), service: b("$provide", "service"),
                            value: b("$provide", "value"), constant: b("$provide", "constant", "unshift"), filter: b("$filterProvider", "register"), directive: b("$compileProvider", "directive"), config: h, run: function (a) { d.push(a); return this }
                        }; f && h(f); return g
                    })
                }
            })
        })(window);

        // include a third-party async loader library
        /*!
         * $script.js v1.3
         * https://github.com/ded/script.js
         * Copyright: @ded & @fat - Dustin Diaz, Jacob Thornton 2011
         * Follow our software http://twitter.com/dedfat
         * License: MIT
         */
        !function (a, b, c) { function t(a, c) { var e = b.createElement("script"), f = j; e.onload = e.onerror = e[o] = function () { e[m] && !/^c|loade/.test(e[m]) || f || (e.onload = e[o] = null, f = 1, c()) }, e.async = 1, e.src = a, d.insertBefore(e, d.firstChild) } function q(a, b) { p(a, function (a) { return !b(a) }) } var d = b.getElementsByTagName("head")[0], e = {}, f = {}, g = {}, h = {}, i = "string", j = !1, k = "push", l = "DOMContentLoaded", m = "readyState", n = "addEventListener", o = "onreadystatechange", p = function (a, b) { for (var c = 0, d = a.length; c < d; ++c) if (!b(a[c])) return j; return 1 }; !b[m] && b[n] && (b[n](l, function r() { b.removeEventListener(l, r, j), b[m] = "complete" }, j), b[m] = "loading"); var s = function (a, b, d) { function o() { if (!--m) { e[l] = 1, j && j(); for (var a in g) p(a.split("|"), n) && !q(g[a], n) && (g[a] = []) } } function n(a) { return a.call ? a() : e[a] } a = a[k] ? a : [a]; var i = b && b.call, j = i ? b : d, l = i ? a.join("") : b, m = a.length; c(function () { q(a, function (a) { h[a] ? (l && (f[l] = 1), o()) : (h[a] = 1, l && (f[l] = 1), t(s.path ? s.path + a + ".js" : a, o)) }) }, 0); return s }; s.get = t, s.ready = function (a, b, c) { a = a[k] ? a : [a]; var d = []; !q(a, function (a) { e[a] || d[k](a) }) && p(a, function (a) { return e[a] }) ? b() : !function (a) { g[a] = g[a] || [], g[a][k](b), c && c(d) }(a.join("|")); return s }; var u = a.$script; s.noConflict = function () { a.$script = u; return this }, typeof module != "undefined" && module.exports ? module.exports = s : a.$script = s }(this, document, setTimeout)
        // load all of the dependencies asynchronously.
        $script([           
            '/Scripts/Card/CardApp.js',
          '/Scripts/angular.js',
           '/Scripts/angular-resource.js,',

           //'/Scripts/angular-ui.js',
           //'/Scripts/bootstrap.js',           
          //'js/services.js',
          //'js/controllers.js',
          //'js/filters.js',
          //'js/directives.js'
        ], function () {
            // when all is done, execute bootstrap angular application
            angular.bootstrap(document, ['myApp']);
        });
    </script>

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
                    <div title="Hit Points represents the unit's ability to take damage." class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        HP
                    </div>
                    <div title="Attack represents the unit's ability to deal damage." class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        AT
                    </div>
                    <div title="Defence absorbs damage against standard attacks.." class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        DF
                    </div>
                    <div title="Agility is the unit's speed. Units with the higher agility go first." class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        AGI
                    </div>
                    <div title="Range determins how many columns a unit's attack can reach. Only occcupied columns count against range." class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        RNG
                    </div>
                    <div title="Life Points are only taken into account for the five cards used to represent a player's health. When one of these five cards is destroyed its soul skill activates. When all five cards are destroyed the player dies." class="statsheader repeaterSprite repeaterSprite-{{card.Sphere}}">
                        LP
                    </div>
                </div>
                <div style="width: 340px; clear: both;">
                    <div title="Hit Points represents the unit's ability to take damage." class="statsvalue">
                        {{card.BaseStats.HP}}
                    </div>
                    <div title="Attack represents the unit's ability to deal damage." class="statsvalue">
                        {{card.BaseStats.AT}}
                    </div>
                    <div title="Defence absorbs damage against standard attacks.." class="statsvalue">
                        {{card.BaseStats.DF}}
                    </div>
                    <div title="Agility is the unit's speed. Units with the higher agility go first." class="statsvalue">
                        {{card.BaseStats.AGI}}
                    </div>
                    <div tooltip="card.BaseStats.RNG" title="Range determins how many columns a unit's attack can reach. Only occcupied columns count against range." class="statsvalue">
                        {{card.BaseStats.RNG}}
                    </div>
                    <div title="Life Points are only taken into account for the five cards used to represent a player's health. When one of these five cards is destroyed its soul skill activates. When all five cards are destroyed the player dies." class="statsvalue">
                        {{card.BaseStats.LP}}
                    </div>
                </div>
            </div>

            <div class="cardSprite cardSprite-numberSphere-{{card.Sphere}}" style="float: left; margin-left: -470px;">
                <div class="sphereBigText">{{card.BaseStats.Level}}</div>
                <div class="sphereSmallText">
                    LV.
                </div>
            </div>
            <div class="textnew1" style="width: 387px; text-align: right;">
                Card Type: <span ng-hide="card.SubType1">None</span> {{card.SubType1}} / <span ng-hide="card.SubType2">None</span>{{card.SubType2}} 
            </div>
            <div class="textnew1" style="clear:both; width: 387px; border: 1px solid black; text-align: right;">
                Card Type: <span ng-hide="card.SubType1">None</span> {{card.SubType1}} / <span ng-hide="card.SubType2">None</span>{{card.SubType2}} 
            </div>
            <div ng-repeat="skill in Skills" style="padding-top: 20px;">
                <div ng-show="skill">
                    <div class="cardSprite cardSprite-Skill-{{card.Sphere}}" style="clear: both; padding-top: 3px; padding-left: 5px;">
                        <div style="float: left; vertical-align: middle; font-size: 14px; color: #FFFFFF; font-family: Times New Roman; text-transform: uppercase; padding-left: 2px; padding-top: 2px;">
                            {{skill.Name }}           
                        </div>
                        <div style="float: right;">
                            <div class="cardSprite cardSprite-Skill-{{skill.Type}}" style="float: left;"></div>
                            <div style="background-color: black; float: left; height: 19px; margin-right: 6px;">
                                <img src="/Content/images/sp.gif" alt="icn" />
                                SP<span style="font-family: Helvetica; font-weight: bold;">{{skill.SP}}
                                </span>
                            </div>

                        </div>
                    </div>
                    <div style="width: 387px; font-family: 'helvetica'; font-size: 12px; margin-left: 7px; font-weight: bold;">
                        {{skill.Comment}}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal"></div>
</body>
</html>
