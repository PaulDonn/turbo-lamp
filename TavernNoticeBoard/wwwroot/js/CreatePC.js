var characterCreate;

$(document).ready(function () {

    characterCreate = new Vue({
        el: '#createCharacter',
        data: {
            pageNo: 1,
            showSubRaceInfo: false,
            showClassInfo: false,
            showArchetypeInfo: false,
            showBackgroundInfo: false,
            showAlignmentInfo: false,

            name: null,
            raceId: $('#RaceId  option:selected')[0].value,
            raceName: null,
            raceDescription: null,
            hasSubRace: false,
            subRaces: $('#SubRaces'),
            subRaceId: null,
            subRaceName: null,
            subRaceDescription: null,
            age: null,
            height: null,
            weight: null,
            eyeColour: null,
            skinColour: null,
            hairColour: null,

            //classId: $('#ClassId  option:selected')[0].value,
            className: null,
            classDescription: null,
            selectSubclass: false,
            //archetypeId: $('#SubClassId  option:selected')[0].value,
            archetypeName: null,
            archetypeDescription: null,

            //backgroundId: $('#BackgroundId  option:selected')[0].value,
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
            updateRaceInfo: function (toggleInfo) {

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
                        that.hasSubRace = result.hasSubRace;
                        
                        that.subRaces = null;
                        that.subRaceId = null;
                        that.subRaceName = null;
                        that.subRaceDescription = null;
                        that.showSubRaceInfo = false;

                        if (that.hasSubRace) {
                            that.updateSubRaces();
                            showSubRaceInfo = true;
                        }

                        if (toggleInfo) {
                            $('#collapse_race').collapse('show');
                        }

                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            updateSubRaces: function () {

                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetSubRaces',
                    data: {
                        raceId: that.raceId
                    },
                    success: function (result) {
                        that.subRaces = result;
                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });

            },
            updateSubRaceInfo: function (toggleInfo) {

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
            updateClassInfo: function (toggleInfo) {

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
            updateArchetypeInfo: function (toggleInfo) {

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
            updateBackgroudInfo: function (toggleInfo) {

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
            updateAlignmentInfo: function (toggleInfo) {

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
        },
        mounted: function () {
            this.updateRaceInfo(true);
        }
    });
});