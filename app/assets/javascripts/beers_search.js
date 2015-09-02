$(document).ready(function () {
    console.log('linked afeaefae;foaij')

    var addClassToSelectedBeer = function () {
        console.log('something clicked')
        $('.beers-search__radio').parent().parent().parent().removeClass('beers-search__search-result__selected')    
        $('input:checked').parent().parent().parent().addClass('beers-search__search-result__selected');
    };

    $('.beers-search__form-container').on('click', function(e) {
        addClassToSelectedBeer()
    });    
});