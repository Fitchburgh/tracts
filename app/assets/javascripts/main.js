// all JS lives here.

var $expandCard = $('.expand-card-btn');

var $addCardBtn = $('.addCardBtn');
var $unitCards = $('.unitCards');

var unitsByManager = '';

var error = 'Help me computer!';

$addCardBtn.click(function() {
  window.location.href = '/unit/add';
  return false;
});

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
    // expand button - redirects to /unit/:unit_id/expanded
    var $expandCard = $('<div>').attr({
      'class': 'input-group expand-card'
    }).appendTo($cardPanel);
    var $unitExpandBtn = $('<button>').attr({
      'class': 'btn btn-primary expand-card-btn',
      'type': 'submit'
    }).text('Expand').appendTo($cardPanel);
  }
}

getUnitCardSet(unitsByManager);
