// button type="submit" class="btn btn-primary sign-out-button"Sign Out

// all JS lives here.
var $searchBar = $('.search-bar');
var $expandCard = $('.expand-card-btn');

var $addCardBtn = $('.addCardBtn');
var $unitCards = $('.unitCards');

var unitsByManager = '';

var $signOutBtn = $('.sign-out-button');

var error = 'Help me computer!';

$addCardBtn.click(function() {
  window.location.href = '/unit/add';
  return false;
});

// $('.search-bar')


$('#userInput').keyup(function() {
    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

    $('.card').show().filter(function() {
        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
        return !~text.indexOf(val);
    }).hide();
});

$expandCard.on('click', function() {
  window.location.href = '/unit/expand';
  return false;
});

function getOwnerInfo() {
  $.ajax({
    'url': ''
  });
}

function getUnitCardSet() {
  $.ajax({
    'url': '/unit/index',
    'method': 'GET',
    'success': function(unitsByManager) {
      addFullCard(unitsByManager);
    },
    'error': function(error) {
        alert(error);
    }
  });
}

$signOutBtn.click(function() {
  window.location.href = '/managers/sign_out';
  return false;
});

function addFullCard(unitsByManager) {
  for (var i = 0; i < unitsByManager.length; i++) {

    // div for each card
    var $cardPanel = $('<div>').attr({
      'class': 'panel col-sm-3 card'
    }).appendTo($unitCards); // needs append to

    // header for card
    var $headerDiv = $('<div>').attr({
      'class': 'panel-heading card-head'
    }).appendTo($cardPanel);

    // title for card
    var $titleDiv = $('<h1>').attr({
      'class': 'panel-title card-title'
    }).text(unitsByManager[i].name).appendTo($headerDiv);

    // panel body for card
    var $bodyDiv = $('<div>').attr({
      'class': 'panel-body card-body'
    }).appendTo($cardPanel);

    // list info for card
    var $unitInfoList = $('<ul>').attr({
      'class': 'unit-info-list'
    }).text("At a Glance:").appendTo($bodyDiv);// unitInfo needs to contain the li's for the unordered listen

    // card list items
    var $unitAddress = $('<li>').attr({
      'class': 'address-list list'
    }).text('Address' + ': ' + unitsByManager[i].address).appendTo($unitInfoList);
    var $unitTickets = $('<li>').attr({
      'class': 'open-tickets list'
    }).text('Open Tickets: ' + unitsByManager[i].open_tickets).appendTo($unitInfoList);

    // $('.foobar').appendTo($cardPanel);

    // expand button - redirects to /unit/:unit_id/expanded
    var $expandCard = $('<div>').attr({
      'class': 'input-group expand-card'
    }).appendTo($cardPanel);
    var $unitExpandBtn = $('<button>').attr({
      'class': 'btn btn-primary expand-card-btn',
      'type': 'submit'
    }).text('Expand').appendTo($cardPanel);
  }
} // probably want to try and do something with an index here for getting the expand buttons to work.


getUnitCardSet(unitsByManager);


// var counter = 0;
//
// $("button").click(function() {
//     $("h2").append("<p class='test'>click me " + (++counter) + "</p>")
// });
//
// // With on():
//
// $("h2").on("click", "p.test", function(){
//     alert($(this).text());
// });
