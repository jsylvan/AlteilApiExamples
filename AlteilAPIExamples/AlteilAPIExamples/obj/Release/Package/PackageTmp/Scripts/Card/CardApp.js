
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
        Start: 'Start Skills happen at the beginning of the turn, before any cards take their actions.',
        Open: 'Open Skills take effect instantly, when the card is first revealed. All Grimoires have Open Skills, as do some units.',
        Auto: 'Auto Skills automatically trigger on the unit\'s turn, right before the Action Menu appears.',
        Action: 'These skills appear on the unit\'s Action menu, along with the default skills: Attack, Standby and Move.',
        Counter: 'Counter Skills are triggered as a counter attack whenever the unit takes damage, but is not killed.',
        Close: 'Close Skills are triggered as a counter attack whenever the unit is killed.',
        Soul: 'Soul Skills are used only if the card is one of your 5 Soul Cards. They\'re triggered when the card\'s LP is depleted.',
        CardType: 'Subtypes represent a unit\'s allegiance, class, or race. Many cards, like Folrart Knight Captain, have effects that depend on your other cards\' subtype.',
        Subtype1: 'Subtypes represent a unit\'s allegiance, class, or race. Many cards, like Folrart Knight Captain, have effects that depend on your other cards\' subtype.',
        Subtype2: 'Subtypes represent a unit\'s allegiance, class, or race. Many cards, like Folrart Knight Captain, have effects that depend on your other cards\' subtype.',
        SolarKingdom: 'A young kingdom with great influence, its capital of Folrart is the seat of power of the Church',
        DuchyOfCrest: 'A duchy founded under the moon and ruled by a collection of ancient noble families with a history of deceit',
        DragonKin: 'The dragons are the most ancient creatures on Lavato, and their Emperors are among the most powerful',
        Beast: 'The Four Beasts are divine creatures sent to assist the chosen one against evil',
        Mazoku: 'A loose confederation of dangerous superbeings that have trouble comprehending the nature of mortals',
        Magic: 'Doll	Doll like golems brought to life using human souls, that seem to exhibit the qualities of sentient beings',
        AbyssalForces: 'An organization within the Duchy of Crest controlled by Chaoslady Annarose with the purpose of perpetuating war',
        WizardKingdom: 'The oldest and most powerful kingdom, ruled by magic and governed by archmages',
        DeepOnes: 'Mermaids exposed to a corrupting curse that leads them to hunt their former comrades',
        Mermaids: 'An ancient people who dwell deep under the ocean. The follow an enormous creature known as Vonderam',
        GreatSpirits: 'Incarnations of the six basic elements of the world, Light, Dark, Earth, Air, Fire and Water',
        TrueGodChurch: 'The true power of the Solar Kingdom comes from the Church, which has its own agenda',
        Lycanthrope: 'Those inflicted with a strange disease that makes them change shape under the light of the moon -- or sometimes, the sun',
        Faerie: 'Pixies and other small magical beings that live in the forests, far from human eyes',
        CursedLegions: 'Those that live deep in the Great Crevasse at the edge of Crest, under the rulership of Zugateroza',
        Wyvern: 'Winged lizards a bit smaller than dragons, but very strong and a lot more prolific',
        FarEast: 'A foreign land to the East of the great Continent, filled with strange warriors called Samurai',
        SeaBehemoth: 'The very largest of creatures, which lie at the bottom of the ocean where their growth is unchecked',
        Royalty: 'Those who are from noble families and were trained in the arts of diplomacy, leadership and inspiring their troops',
        Warrior: 'Pure soldiers who know war above all else, and are generally trained in one or more weapons',
        DragonEmperor: 'Legends even among the legendary dragons, the Emperors were made by the Old Gods personally',
        Assassin: 'Masters of stealth, disguise, espionage, poison and administering death-blows',
        Knight: 'Armored combatants that rely on defensive abilities and training in combat',
        Sorcerer: 'Spellcasters who use magical abilities to fight and support their comrades',
        Archmage: 'Master magicians who use spells to fight and are capable of unique magic',
        MageSoldier: 'Fighters who have incorporated magic and magic weapons into their fighting style.',
        Captain: 'Leaders on the battlefield who inspire their troops to fight more effectively',
        Monster: 'Inhuman creatures, generally originating from the untamed places of the world',
        Strategest: 'Specialists in battlefield manipulation and supporting their troops from behind the lines',
        Archer: 'Ranged fighters who are most effective behind a row of strong defensive units.',
        Priest: 'Those who channel divine spells, often revolving around blessing or cursing, healing and destroying undead',
        Undead: 'The animated bodies of the once-living, they cannot be killed by conventional means',
        Dancer: 'Rarely combatants, dancers inspire others to do their best with their dancing',
        Gunner: 'Fighters who use guns, ranged weapons copied from a strange artifact weapon found in the Wastelands',
        Ork: 'Huge, uncontrollable pig-like humanoids that do nothing but eat everything in their path',
        Pirate: 'Rogues of the high seas, proficient in robbery, dirty tricks and close-quarters combat',
        MartialArtist: 'Fighters who excel in personal combat, either unarmed or using weapons that serve as extensions of their limbs, like the staff',
        Rarity: 'Stars represent a card\'s rarity. More stars indicate a larger rarity, with a maxiumum value of five stars. EX cards are their own set and do not have  a rarity.',
        Refess: 'Refess is the power of sun and birth. Refess is known for toughness and healing. Its adherents supports each other, leading to unstoppable teamwork. They perfer long term advantage over temporary gain.',
        Gowen: 'Gowen is the power of fire and earth. Gowen\'s troops hit hard, fast and explosively. Some rank up to improve their abilities on the fly and are both powerful and efficent combatants in any direct confrontation.'

    };

    $scope.CardSource = $resource('http://api.apocoplay.com/AlteilService.svc/GetCardById/:cardID', {
        get: {
            method: 'JSONP',
        },
    });

    $scope.loadCard = function (id) {
        me = this;
        this.Loading = "loading";
        this.card = this.CardSource.get({
            cardID: id
        }, function () { me.Loading = ""; me.Skills = $scope.getSkills(); me.Rarity = $scope.getRarityEnumerator(); });

    };


    $scope.getRarityEnumerator = function () {
        var starCount = this.card.CardSetRarity.split("★").length - 1;
        var rarityArray = [];
        for (var i = 0; i < starCount; i++) {
            rarityArray.push("★");
        }
        return rarityArray;
    };

    $scope.getSkills = function () {

        if (!this.card) {
            return;
        }
        return [
            this.card.Skills.Skill0,
          this.card.Skills.Skill1,
          this.card.Skills.Skill2,
          this.card.Skills.Skill3,
          this.card.Skills.Soul,
        ];
    };

    $scope.getCardTypeTip = function (cardType) {
        if (cardType === 'Grimoire')
            return $scope.ToolTips.Grimoire;
        if (cardType === 'Unit')
            return $scope.ToolTips.Unit;
        if (cardType === 'Character')
            return $scope.ToolTips.Character;
        return $scope.ToolTips.Character;
    }

    $scope.getToolTip = function (skill) {
        if (skill != null) {
            return $scope.ToolTips[skill.replace(/\s+/g, '')];
        }
        return "";
    }

    $scope.loadCard(getQueryVariable("id"));
};
;



angular.bootstrap(document, ['myApp']);

function getQueryVariable(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split('&');
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split('=');
        if (decodeURIComponent(pair[0]) == variable) {
            return decodeURIComponent(pair[1]);
        }
    }
    console.log('Query variable %s not found', variable);
}

