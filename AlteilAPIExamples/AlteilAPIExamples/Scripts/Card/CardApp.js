
var myApp = angular.module('myApp', ['ngResource']);


CardController = function ($scope, $resource) {
    $scope.ToolTips = {
        LV: 'To summon a unit, you must have a corresponding Sphere level equal or higher to the card\'s level.',
        HP: 'When a Unit\'s Hit Points are depleted, it flips face down. If you can\'t revive, it will go to the Cemetery.',
        AT: 'Attack represents a unit\'s ability to do damage.',
        DF: 'Defense protects a unit from some of the damage from most attacks.',
        AGI: 'Agility is the unit\'s speed. Units with higher agility go first.',
        RNG: 'A unit can attack over the head of one unit per point of Range over 1. Only occupied rows count against range.',
        LP: 'Life Points are used if this card is one of your 5 Soul Cards. Each of your Soul Cards\' LP must be depleted by the enemy before you can be harmed.',
        battle_time: 'Some units gain bonuses at different times of day or night.',
        SP: 'Spell Points are your basic resource. You spend them to summon units or use special abilities.',
        engage: 'Units become engaged after taking their turn. Engaging an enemy unit forces it to lose a turn.',
        subtract: 'skills that subtract AT directly from the enemy\'s HP bypass Defense.',
        target: 'Standard attacks hit random enemies in range, but some skills give you the ability to aim.',
        Grimoire: 'A Grimoire is a spell card, it takes effect instantly when you play it, and then disappears.',
        Unit: 'A unit card is summoned to the field like a unit in a unit tactics game.',
        Character: 'A unique type of unit card. Multiple copies cannot be in play at one time, on either side of the field.',
        start: 'Start Skills happen at the beginning of the turn, before any cards take their actions.',
        open: 'Open Skills take effect instantly, when the card is first revealed. All Grimoires have Open Skills, and some units.',
        auto: 'Auto Skills automatically trigger on the unit\'s turn, right before the Action Menu appears.',
        action: 'These skills appear on the unit\'s Action menu, along with the default skills: Attack, Standby and Move.',
        counter: 'Counter Skills are triggered as a counter attack whenever the unit takes damage, but is not killed.',
        close: 'Close Skills are triggered as a counter attack whenever the unit is killed.',
        soul: 'Soul Skills are used only if the card is one of your 5 Soul Cards. They\'re triggered when the card\'s LP is depleted.',
    };       
    $scope.Activity = $resource('http://api.apocoplay.com/AlteilService.svc/GetCardById/:cardID', {
        get: {
            method: 'JSONP',
        },
    });

    $scope.loadCard = function (id) {
        me = this;
        this.Loading = "loading";
        this.card = this.Activity.get({
            cardID: id
        }, function () { me.Loading = ""; me.Skills = $scope.getSkills(); });

    };

    $scope.fetch = function () {
        me = this;
        this.Loading = "loading";
        this.card = this.Activity.get({
            cardID: 62
        }, function () { me.Loading = ""; me.Skills = $scope.getSkills(); });
      
    };
    $scope.getSkills = function () {

        if (!this.card) {
            return;
        }
        return [this.card.Skills.Skill0,
          this.card.Skills.Skill1,
          this.card.Skills.Skill2,
          this.card.Skills.Skill3];
    };

    $scope.getCardTypeTip = function(cardType){
        if (cardType === 'Grimoire')
            return $scope.ToolTips.Grimoire;
        if (cardType === 'Unit')
            return $scope.ToolTips.Unit;
        if (cardType === 'Character')
            return $scope.ToolTips.Character;
        return $scope.ToolTips.Character;
    }

    $scope.getSkillTip = function (skill) {
        if (skill === 'Start')
            return $scope.ToolTips.start;

        if (skill === 'Open')
            return $scope.ToolTips.open;

        if (skill === 'Auto')
            return $scope.ToolTips.auto;

        if (skill === 'Action')
            return $scope.ToolTips.action;

        if (skill === 'Counter')
            return $scope.ToolTips.counter;

        if (skill === 'Close')
            return $scope.ToolTips.close;

        if (skill === 'Soul')
            return $scope.ToolTips.soul;

        return skill;
    }

    $scope.toolTip = function (tip) {
        alert(tip);
        return { title: tip };
    };
    

};
;



angular.bootstrap(document, ['myApp']);


