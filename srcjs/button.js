import 'shiny';

$(document).on('click', '.windy-button', function(evt) {
  var el = $(evt.target);
  el.val(parseInt(el.val()) + 1);
  el.trigger("change");
});

var buttonBinding = new Shiny.InputBinding();

$.extend(buttonBinding, {
  find: function(scope) {
    return $(scope).find('.windy-button');
  },
  getValue: function(el) {
    return parseInt($(el).val());
  },
  setValue: function(el, value) {
    $(el).val(value);
  },
  subscribe: function(el, callback) {
    $(el).on('change.windy-button', function(e) {
      callback();
    });
  },
  unsubscribe: function(el) {
    $(el).off('.windy-button');
  }
});

Shiny.inputBindings.register(buttonBinding);
