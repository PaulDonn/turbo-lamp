var stats = new Vue({
    el: '#stats',
    data: {
        pcid:1,

        classes: [],
        background: '',
        playerName: '',
        race: '',
        alignment: '',
        experiencePoints: 0,

        advantage: false,
        disadvantage: true,
        editMode: false,

        abilityScores: [
            { id: 1, score: 0, bonus:0 },
            { id: 2, score: 0, bonus:0 },
            { id: 3, score: 0, bonus:0 },
            { id: 4, score: 0, bonus:0 },
            { id: 5, score: 0, bonus:0 },
            { id: 6, score: 0, bonus:0 }
        ],
        inspiration: false,
        proficiencyBonus: 2,
        savingThrows: [
            { Id: 1, Bonus: 0, Selected: false },
            { Id: 2, Bonus: 0, Selected: false },
            { Id: 3, Bonus: 0, Selected: false },
            { Id: 4, Bonus: 0, Selected: false },
            { Id: 5, Bonus: 0, Selected: false },
            { Id: 6, Bonus: 0, Selected: false }
        ],
        skills: [
            { Id: 1, Bonus: 0, Selected: false },
            { Id: 2, Bonus: 0, Selected: false },
            { Id: 3, Bonus: 0, Selected: false },
            { Id: 4, Bonus: 0, Selected: false },
            { Id: 5, Bonus: 0, Selected: false },
            { Id: 6, Bonus: 0, Selected: false },
            { Id: 7, Bonus: 0, Selected: false },
            { Id: 8, Bonus: 0, Selected: false },
            { Id: 9, Bonus: 0, Selected: false },
            { Id: 10, Bonus: 0, Selected: false },
            { Id: 11, Bonus: 0, Selected: false },
            { Id: 12, Bonus: 0, Selected: false },
            { Id: 13, Bonus: 0, Selected: false },
            { Id: 14, Bonus: 0, Selected: false },
            { Id: 15, Bonus: 0, Selected: false },
            { Id: 16, Bonus: 0, Selected: false },
            { Id: 17, Bonus: 0, Selected: false },
            { Id: 18, Bonus: 0, Selected: false },
        ],

        armorClass: 0,
        initiative: 0,
        speed: 0,
        hpMaximum: 0,
        hpCurrent: 0,
        temporaryHp: 0,
        deathSaveSuccess: 0,
        deathSaveFailure: 0,
        attacksAndSpellcasting: [],

        features: [],
        otherProficiencies: []
    },
    mounted: function () {
        this.$nextTick(function () {
            // Code that will run only after the
            // entire view has been rendered
            var that = this;

            $.ajax({
                type: 'POST',
                "beforeSend": function (xhr) {
                    xhr.setRequestHeader("XSRF-TOKEN", $("input:hidden[name=__RequestVerificationToken]").val());
                },
                url: '/PlayerCharacter/DetailsMount',
                data: { pcid: that.pcid },
                success: function (result) {

                    that.classes = [{ name: result.playerClass.name, level: result.level }];
                    that.background = result.background.name;
                    that.playerName = result.player.name;
                    if (result.subRace !== null) {
                        that.race = result.subRace.name;
                    }
                    else {
                        that.race = result.race.name;
                    }
                    that.alignment = result.alignment.name;
                    that.experiencePoints = result.experiencePoints;

                    that.abilityScores = [
                        { id: 1, score: result.abilityScores[0].score, bonus: result.abilityScores[0].bonus },
                        { id: 2, score: result.abilityScores[1].score, bonus: result.abilityScores[1].bonus },
                        { id: 3, score: result.abilityScores[2].score, bonus: result.abilityScores[2].bonus },
                        { id: 4, score: result.abilityScores[3].score, bonus: result.abilityScores[3].bonus },
                        { id: 5, score: result.abilityScores[4].score, bonus: result.abilityScores[4].bonus },
                        { id: 6, score: result.abilityScores[5].score, bonus: result.abilityScores[5].bonus }
                    ];

                    
                },
                error: function () {
                    alert('An error occured when processing this request');
                }
            });
        });
    }
});
