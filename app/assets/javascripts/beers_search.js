var addClassToSelectedBeer = function () {
    var $radios = $('.beers-search__radio');
    $.each($radios, function (radio) {
        if (radio.prop('checked')) {
            radio.parent().parent().parent().addClass('beers-search__search-result__selected');
        } else {
            radio.parent().parent().parent().removeClass('beers-search__search-result__selected');
        }
    });
};

$('.beers-search__form-container').on('click', addClassToSelectedBeer)