var characterCreate;

$(document).ready(function () {

    characterCreate = new Vue({
        el: '#createCharacter',
        data: {
            pageNo: 1,

            name: null,
            raceId: $('#RaceId  option:selected')[0].value,
            raceName: null,
            raceDescription: null,
            subraceId: $('#SubRaceId  option:selected')[0].value,
            subraceName: null,
            subraceDescription: null,
            age: null,
            height: null,
            weight: null,
            eyeColour: null,
            skinColour: null,
            hairColour: null,

            classId: $('#ClassId  option:selected')[0].value,
            className: null,
            classDescription: null,
            selectSubclass: false,
            archetypeId: $('#SubClassId  option:selected')[0].value,
            archetypeName: null,
            archetypeDescription: null,

            backgroundId: $('#BackgroundId  option:selected')[0].value,
            backgroundName: null,
            backgroundDescription: null,
            languages: [],

            alignmentId: null,
            traits: [],
            ideals: [],
            bonds: [],
            flaws: [],

            skills: [],
            cantrips: [],
            spells: []
        },
        methods: {
            previous: function () {
                if (page > 0) {
                    page--;
                }
            },
            next: function () {
                if (page < 4) {
                    page++;
                }
            },
            updateRaceInfo: function () {

                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetRaceDetails',
                    data: {
                        raceId: that.raceId
                    },
                    success: function (result) {

                        that.raceName = result.name;
                        that.raceDescription = result.description;

                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });

            },
            updateSubRaceInfo: function () {

                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetSubRaceDetails',
                    data: {
                        subRaceId: that.subRaceId
                    },
                    success: function (result) {

                        that.subRaceName = result.name;
                        that.subRaceDescription = result.description;

                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });

            },
            updateClassInfo: function () {

                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetClassDetails',
                    data: {
                        classId: that.classId
                    },
                    success: function (result) {

                        that.className = result.name;
                        that.classDescription = result.description;

                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            updateArchetypeInfo: function () {

                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetArchetypeDetails',
                    data: {
                        archetypeId: that.archetypeId
                    },
                    success: function (result) {

                        that.archetypeName = result.name;
                        that.archetypeDescription = result.description;

                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            updateBackgroudInfo: function () {

                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetBackgroundDetails',
                    data: {
                        backgroudId: that.backgroudId
                    },
                    success: function (result) {

                        that.backgroudName = result.name;
                        that.backgroudDescription = result.description;

                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            updateAlignmentInfo: function () {

                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetAligmentDetails',
                    data: {
                        aligmentId: that.aligmentId
                    },
                    success: function (result) {

                        that.aligmentName = result.name;
                        that.aligmentDescription = result.description;

                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            }
        }
    });

    characterCreate.updateRaceInfo();
    
});