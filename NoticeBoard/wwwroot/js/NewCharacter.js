$(document).ready(function () {

    characterCreate = new Vue({
        el: '#NewCharacterVue',
        data: {
            options: JSON.parse($('#Options').val()),
            selectionId: 0,
            selectionName: null,
            selectionDescription: null,
            selectionImagePath: null
        },
        methods: {
            OnSelection: function () {
                var selectedOption = null;

                for (i = 0; i < this.options.length; i++) {
                    if (this.options[i].Id === Number(this.selectionId)) {
                        this.selectionName = this.options[i].Name;
                        this.selectionDescription = this.options[i].Description;
                        this.selectionImagePath = this.options[i].ImagePath;
                        $('#SelectedOptionId').val(this.selectionId);
                    }
                }
            }
        }

    });

});