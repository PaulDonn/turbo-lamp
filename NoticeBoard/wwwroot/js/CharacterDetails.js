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
var bonus = 0;

var roll1 = 0;
var roll2 = 0;

function roll(rollType) {//0 - First Roll, 1 - Advantage Roll, 2 - Disadvantage Roll


    var dieRoll = Math.floor(Math.random() * dieType) + 1;
    if (rollType === 0) {
        roll1 = dieRoll;
        roll2 = 0;
        $('#dieRollModal').find('#totalCard1').removeClass('border-success');
        $('#dieRollModal').find('#totalCard2').removeClass('border-success');
    }
    else {
        roll2 = dieRoll;
    }

    var total = bonus + dieRoll;

    
    var bonusString = bonus.toString();
    if (bonus >= 0) {
        bonusString = '+' + bonusString;
    }

    if (rollType === 0) {
        $('#roll2').hide();
        $('#dieRollModal').find('#totalCard1').removeClass('card-advantage').removeClass('card-disadvantage');
        $('#dieRollModal').find('#totalCard2').removeClass('card-advantage').removeClass('card-disadvantage');
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

$(document).ready(function () {
    $(".roll").on('click', function () {
        label = this.dataset.modalLabel;
        $('#dieRollModal').find('#dieRollModalLabel').text(label);

        dieType = parseInt(this.dataset.dieType);
        bonus = parseInt(this.dataset.bonus.replace('+',''));

        roll(0);

        //$('#dieRollModal').find('.modal-title').text(dieRoll.toString() + ' + ' + bonus.toString() + ' = ' + total.toString());
        $('#dieRollModal').modal('show');
    });
});

$('#dieRollModal').on('show.bs.modal', function (event) {
    //var button = $(event.relatedTarget) // Button that triggered the modal
    //var recipient = '' // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    //var modal = $(this);
    //modal.find('.modal-title').text('New message to ' + recipient);
    //modal.find('.modal-body input').val(recipient);
})