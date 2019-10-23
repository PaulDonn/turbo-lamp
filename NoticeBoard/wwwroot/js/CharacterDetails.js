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