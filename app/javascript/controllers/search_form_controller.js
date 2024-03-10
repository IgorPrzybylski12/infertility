var conditionCounter = 0;
  var groupCounter = 0;

  var button0 = document.getElementById('add_condition_button')
  button0.addEventListener('click', creatingNewCondition)
  button0.groupToAdd = 0

  document.getElementById('add_condition_group').addEventListener('click', function() {
    conditionCounter++;
    groupCounter++;

    var selectField = document.getElementById('conditions_group');
    var clonedSelectField = selectField.cloneNode(true); 
    var selectId = 'additional_select_field_' + conditionCounter;
    var textFieldId = 'additional_text_field_' + conditionCounter;
    var buttonId = 'add_condition_button' + groupCounter;
    var divId = 'additional_conditions'+groupCounter

    clonedSelectField.setAttribute('id', selectId);
    clonedSelectField.querySelector('select').setAttribute('name', 'category' + conditionCounter);

    var textField = clonedSelectField.querySelector('input[type=text]');
    textField.setAttribute('id', textFieldId);
    textField.setAttribute('name', 'search_text' + conditionCounter);

    var div = clonedSelectField.querySelector('div');
    div.setAttribute('id', divId);

    var button = clonedSelectField.querySelector('button');
    button.setAttribute('id', buttonId);
    button.addEventListener('click', creatingNewCondition)
    button.groupToAdd = groupCounter

    clonedSelectField.hidden = false

    document.getElementById('groups').appendChild(clonedSelectField);
  });

  function creatingNewCondition(event){
    conditionCounter++;

    var selectField = document.getElementById('select_and_option');
    var clonedSelectField = selectField.cloneNode(true); 
    var selectId = 'additional_select_field_' + conditionCounter;
    var textFieldId = 'additional_text_field_' + conditionCounter;

    clonedSelectField.setAttribute('id', selectId);
    clonedSelectField.querySelector('select').setAttribute('name', 'category' + conditionCounter);

    var textField = clonedSelectField.querySelector('input[type=text]');
    textField.setAttribute('id', textFieldId);
    textField.setAttribute('name', 'search_text' + conditionCounter);

    document.getElementById('additional_conditions'+event.currentTarget.groupToAdd).appendChild(clonedSelectField);
  }