﻿var characterCreate;

$(document).ready(function () {

    characterCreate = new Vue({
        el: '#createCharacter',
        data: {
            pageNo: 1,
            showSubRaceInfo: false,
            panelHeading: null,
            panelDescription: null,

            //page 1 - race
            races: null,
            raceId: null,
            raceName: null,
            raceDescription: null,
            hasSubRace: false,

            //page 2 - subRace
            subRaces: null,
            subRaceId: null,
            subRaceName: null,
            subRaceDescription: null,

            //page 3 - class
            classes: null,
            classId: null,
            className: null,
            classDescription: null,
            archetypeLevel: null,

            //page 4 - archetype
            archetypes: null,
            archetypeId: null,
            archetypeName: null,
            archetypeDescription: null,

            //page 5 - background
            backgrounds: null,
            backgroundId: null,
            backgroundName: null,
            backgroundDescription: null,

            //page 6 - alignment
            alignments: null,
            alignmentId: null,

            //page 7 - languages
            languages: null,
            selectedLanguages: [],

            //page 8 - skills
            skills: null,
            selectedSkills: [],

            //page 9 - features
            features: null,
            selectedFeatures: [],

            //page 10 - cantrips
            cantrips: null,
            selectedCantrips: [],

            //page 11 - spells
            spells: null,
            selectedSpells: [],

            //page 12 - personality
            personalityTraits: null,
            ideals: null,
            bonds: null,
            flaws: null,

            //page 13 - appearance
            age: null,
            gender: null,
            heightFt: null,
            heightIn: null,
            weight: null,
            skinColour: null,
            hairColour: null,
            eyeColour: null,

            //page 14 - confirmation
            name: null
        },
        methods: {
            previous: function () {
                if (this.pageNo > 0) {
                    this.pageNo--;
                    this.setPage("previous");    
                }
            },
            next: function () {
                if (this.pageNo < 14) {
                    this.pageNo++;
                    this.setPage("next");                    
                }
            },
            setPage: function (direction) {
                if (this.pageNo === 2) { //SubRace
                    if (this.hasSubRace) {
                        this.getSubRaces(true);
                    }
                    else if (direction === "next") {
                        this.next();
                    }
                    else if (direction === "previous") {
                        this.previous();
                    }
                }
                else if (this.pageNo === 3) { //Class
                    this.getClasses(true);
                }
                else if (this.pageNo === 4) { //Archetype
                    if (this.archetypeLevel === 1) {
                        this.getArchetypes(true);
                    }
                    else if (direction === "next") {
                        this.next();
                    }
                    else if (direction === "previous") {
                        this.previous();
                    }
                }
                else if (this.pageNo === 5) { //Background
                    this.getBackgrounds(true);
                }
                else if (this.pageNo === 6) { //Alignment
                    this.getAlignments(true);
                }
                else if (this.pageNo === 7) { //Languages
                    this.panelHeading = this.languageName;
                    this.panelDescription = this.languageDescription;
                }
                else if (this.pageNo === 8) { //Skills
                    this.panelHeading = this.skillName;
                    this.panelDescription = this.skillDescription;
                }
                else if (this.pageNo === 9) { //Features
                    this.panelHeading = this.featureName;
                    this.panelDescription = this.featureDescription;
                }
                else if (this.pageNo === 10) { //Cantrips
                    this.panelHeading = this.cantripName;
                    this.panelDescription = this.cantripDescription;
                }
                else if (this.pageNo === 11) { //Spells
                    this.panelHeading = this.spellName;
                    this.panelDescription = this.spellDescription;
                }
                else if (this.pageNo === 12) { //Personality
                    this.panelHeading = null;
                    this.panelDescription = null;
                }
                else if (this.pageNo === 13) { //Appearance
                    this.panelHeading = null;
                    this.panelDescription = null;
                }
                else if (this.pageNo === 14) { //Confirmation
                    this.panelHeading = null;
                    this.panelDescription = null;
                }
            },
            getRaces: function () {
                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetRaces',
                    data: {
                    },
                    success: function (result) {
                        that.races = result;
                        if (that.races.length > 0) {
                            that.raceId = that.races[0].value;
                            that.updateRaceInfo(true);
                        }
                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            getSubRaces: function () {
                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetSubRaces',
                    data: {
                        raceId: that.raceId
                    },
                    success: function (result) {
                        that.subRaces = result;
                        if (that.subRaces.length > 0) {
                            that.subRaceId = that.subRaces[0].value;
                            that.updateSubRaceInfo(true);
                        }
                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            getClasses: function () {
                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetClasses',
                    data: {
                    },
                    success: function (result) {
                        that.classes = result;
                        if (that.classes.length > 0) {
                            that.classId = that.classes[0].value;
                            that.updateClassInfo(true);
                        }
                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            getArchetypes: function () {

                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetArchetypes',
                    data: {
                        classId: that.classId
                    },
                    success: function (result) {
                        that.archetypes = result;
                        if (that.archetypes.length > 0) {
                            that.archetypeId = that.archetypes[0].value;
                            that.updateArchetypeInfo(true);
                        }
                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            getBackgrounds: function () {
                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetBackgrounds',
                    data: {
                    },
                    success: function (result) {
                        that.backgrounds = result;
                        if (that.backgrounds.length > 0) {
                            that.backgroundId = that.backgrounds[0].value;
                            that.updateBackgroundInfo(true);
                        }
                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            },
            getAlignments: function () {
                var that = this;

                $.ajax({
                    type: 'POST',
                    url: '/PlayerCharacter/GetAlignments',
                    data: {
                    },
                    success: function (result) {
                        that.alignments = result;
                        if (that.alignments.length > 0) {
                            that.alignmentId = that.alignments[0].value;
                            that.updateAlignmentInfo(true);
                        }
                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
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

                        if (toggleInfo) {
                            that.panelHeading = that.raceName;
                            that.panelDescription = that.raceDescription;
                        }
                                                
                        that.subRaces = null;
                        that.subRaceId = null;
                        that.subRaceName = null;
                        that.subRaceDescription = null;
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

                        if (toggleInfo) {
                            that.panelHeading = that.subRaceName;
                            that.panelDescription = that.subRaceDescription;
                        }
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
                        that.archetypeLevel = result.archetypeLevel;

                        if (toggleInfo) {
                            that.panelHeading = that.className;
                            that.panelDescription = that.classDescription;
                        }

                        that.archetypes = null;
                        that.archetypeId = null;
                        that.archetypeName = null;
                        that.archetypeDescription = null;
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

                        if (toggleInfo) {
                            that.panelHeading = that.archetypeName;
                            that.panelDescription = that.archetypeDescription;
                        }

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

                        if (toggleInfo) {
                            that.panelHeading = that.backgroudName;
                            that.panelDescription = that.backgroudDescription;
                        }
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
                    url: '/PlayerCharacter/GetAlignmentDetails',
                    data: {
                        alignmentId: that.alignmentId
                    },
                    success: function (result) {

                        that.aligmentName = result.name;
                        that.aligmentDescription = result.description;

                        if (toggleInfo) {
                            that.panelHeading = that.aligmentName;
                            that.panelDescription = that.aligmentDescription;
                        }
                    },
                    error: function () {
                        alert('An error occured when processing this request');
                    }
                });
            }
        },
        mounted: function () {
            this.getRaces();
        }
    });
});