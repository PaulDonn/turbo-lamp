$(document).ready(function () {

    

    selectLanguages = new Vue({
        el: '#CheckboxSelect',
        data: {
            maxNumberOfSelections: parseInt($('#NumberOfSelections').val()),
            numberOfSelectedOptions: $('input[type="checkbox"]:checked').length
        },
        methods: {
            OnSelection: function () {
                this.numberOfSelectedOptions = $('input[type="checkbox"]:checked').length;

                if (this.numberOfSelectedOptions >= this.maxNumberOfSelections) {
                    $('input[type="checkbox"]:not(:checked)').prop("disabled", true);
                }
                else {
                    $('input[type="checkbox"][data-no-toggle=False]').prop("disabled", false);
                }
            }
        },
        mounted: function () {
            $(':checkbox[readonly=readonly]').on('click', function () {
                return false;
            });
            this.OnSelection();
        }

    });

});