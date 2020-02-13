function setPage(pageName) {

    $("#statsBtn").prop('disabled', false);
    $("#characterBtn").prop('disabled', false);
    $("#equipmentBtn").prop('disabled', false);
    $("#spellsBtn").prop('disabled', false);

    $("#statsPage").prop('hidden', true);
    $("#characterPage").prop('hidden', true);
    $("#equipmentPage").prop('hidden', true);
    $("#spellsPage").prop('hidden', true);

    if (pageName === 'stats') {
        $("#statsBtn").prop('disabled', true);
        $("#statsPage").prop('hidden', false);
    }
    else if (pageName === 'character') {
        $("#characterBtn").prop('disabled', true);
        $("#characterPage").prop('hidden', false);
    }
    else if (pageName === 'equipment') {
        $("#equipmentBtn").prop('disabled', true);
        $("#equipmentPage").prop('hidden', false);
    }
    else if (pageName === 'spells') {
        $("#spellsBtn").prop('disabled', true);
        $("#spellsPage").prop('hidden', false);
    }
    else {
        setPage('stats');
    }
}

var dieType = 6;
var numberOfDie = 1;
var bonus = 0;
var damageType = '';

var roll1 = 0;
var roll2 = 0;

function roll(rollType) {//0 - First Roll, 1 - Advantage Roll, 2 - Disadvantage Roll
    

    var dieRoll = Math.floor(Math.random() * dieType) + 1;
    if (rollType === 0) {
        $('#dieRollModal').find('#dieCard1').removeClass('critical-success').removeClass('critical-failure');
        $('#dieRollModal').find('#dieCard2').removeClass('critical-success').removeClass('critical-failure');
        $('#dieRollModal').find('#totalCard1').removeClass('card-advantage').removeClass('card-disadvantage');
        $('#dieRollModal').find('#totalCard2').removeClass('card-advantage').removeClass('card-disadvantage');

        roll1 = dieRoll;
        roll2 = 0;

        if (dieType === 20) {
            if (dieRoll === 1) {
                $('#dieRollModal').find('#dieCard1').addClass('critical-failure');
            }
            else if (dieRoll === 20) {
                $('#dieRollModal').find('#dieCard1').addClass('critical-success');
            }
        }
    }
    else {
        roll2 = dieRoll;

        if (dieType === 20) {
            if (dieRoll === 1) {
                $('#dieRollModal').find('#dieCard2').addClass('critical-failure');
            }
            else if (dieRoll === 20) {
                $('#dieRollModal').find('#dieCard2').addClass('critical-success');
            }
        }
    }

    var total = bonus + dieRoll;

    
    var bonusString = bonus.toString();
    if (bonus >= 0) {
        bonusString = '+' + bonusString;
    }

    if (rollType === 0) {
        $('#roll2').hide();
        $('#advantageBtn').prop('disabled', false);
        $('#disadvantageBtn').prop('disabled', false);
        $('#dieRollModal').find('#dieRoll1').text(dieRoll.toString());
        $('#dieRollModal').find('#bonus1').text(bonusString);
        $('#dieRollModal').find('#total1').text(total.toString());
    }
    else {
        $('#advantageBtn').prop('disabled', true);
        $('#disadvantageBtn').prop('disabled', true);
        $('#roll2').show();
        $('#dieRollModal').find('#dieRoll2').text(dieRoll.toString());
        $('#dieRollModal').find('#bonus2').text(bonusString);
        $('#dieRollModal').find('#total2').text(total.toString());

        if (rollType === 1) {
            if (roll1 > roll2) {
                $('#dieRollModal').find('#totalCard1').addClass('card-advantage');
            }
            else {
                $('#dieRollModal').find('#totalCard2').addClass('card-advantage');
            }
        }
        else {
            if (roll1 < roll2) {
                $('#dieRollModal').find('#totalCard1').addClass('card-disadvantage');
            }
            else {
                $('#dieRollModal').find('#totalCard2').addClass('card-disadvantage');
            }
        }
    }
}

function damageRoll() {

    var total = 0;

    var damageDieRowHtml = '';

    for (i = 0; i < numberOfDie; i++) {
        var roll = Math.floor(Math.random() * dieType) + 1;
        total = total + roll;

        damageDieRowHtml = damageDieRowHtml +
        '<div class="col-4 mb-3">' +
            '<div class="card" id="damageDieCard' + i + '">' +
                '<div class="card-body">' +
            '<div class="text-center"><strong id="damageDieRoll' + i + '">' + roll + '</strong></div>' +
                '</div>' +
                '<div class="card-footer">' +
            '<div class="text-center">D' + dieType + '<span class="float-right"><img type="button" onclick="rerollDamage(\'#damageDieRoll' + i + '\', ' + dieType + ')" class="text-center" src="../img/icon/d6_16x16.png" /></div>' +
                '</div>' +
            '</div>' +
        '</div>';
    }

    total += bonus;

    var bonusString = bonus.toString();
    if (bonus >= 0) {
        bonusString = '+' + bonusString;
    }
    $('#damageRollModal').find('#damageBonus').text(bonusString);

    $('#damageRollModal').find('#damageTotal').text(total.toString());

    $('#damageRollModal').find('#damageType').text(damageType);

    $('#damageDieRow').html(damageDieRowHtml);
}

function rerollDamage(die, thisDieType) {

    dieType = thisDieType;

    var roll = Math.floor(Math.random() * dieType) + 1;
    var previousRoll = parseInt($('#damageRollModal').find(die).text());
    var total = parseInt($('#damageRollModal').find('#damageTotal').text());
    total = total - previousRoll + roll;
    $('#damageRollModal').find(die).text(roll.toString());
    $('#damageRollModal').find('#damageTotal').text(total);

}

function criticalDamage() {

    var damageDieRowHtml = $('#damageDieRow').html();

    total = parseInt($('#damageRollModal').find('#damageTotal').text());

    for (i = 0; i < numberOfDie; i++) {
        var roll = Math.floor(Math.random() * dieType) + 1;
        total = total + roll;

        damageDieRowHtml = damageDieRowHtml +
            '<div class="col-4 mb-3">' +
            '<div class="card" id="damageDieCard' + i + '">' +
            '<div class="card-body">' +
            '<div class="text-center"><strong id="damageDieCritRoll' + i + '">' + roll + '</strong></div>' +
            '</div>' +
            '<div class="card-footer">' +
            '<div class="text-center">D' + dieType + '<span class="float-right"><img type="button" onclick="rerollDamage(\'#damageDieCritRoll' + i + '\', ' + dieType + ')" class="text-center" src="../img/icon/d6_16x16.png" /></div>' +
            '</div>' +
            '</div>' +
            '</div>';
    }

    $('#damageDieRow').html(damageDieRowHtml);

    $('#damageRollModal').find('#damageTotal').text(total);

}

$(document).ready(function () {
    $(".roll").on('click', function () {
        label = this.dataset.modalLabel;
        $('#dieRollModal').find('#dieRollModalLabel').text(label);

        dieType = parseInt(this.dataset.dieType);
        bonus = parseInt(this.dataset.bonus.replace('+',''));

        roll(0);

        $('#dieRollModal').modal('show');
    });

    $(".damage").on('click', function () {
        label = this.dataset.modalLabel;
        $('#damageRollModal').find('#damageRollModalLabel').text(label);

        var damage = this.dataset.damage;
        damageType = this.dataset.damageType;

        var indexOfD = damage.indexOf('d');
        var indexOfBonus = Math.max(damage.indexOf('-'), (damage.indexOf('+'))); 

        numberOfDie = parseInt(damage.substring(0, indexOfD));
        if (indexOfBonus !== -1) {
            dieType = parseInt(damage.substring(indexOfD + 1, indexOfBonus));
            bonus = parseInt(damage.substring(indexOfBonus).replace('+', ''));
        }
        else {
            dieType = parseInt(damage.substring(indexOfD + 1));
            bonus = 0;
        }

        damageRoll();

        $('#damageRollModal').modal('show');
    });

});
