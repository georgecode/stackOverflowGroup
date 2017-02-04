$(document).ready(function() {

  $('#vote-button-answer').on('click', function(event){
  	event.preventDefault();
  	var button = $(this)
  	var url = $("#answer-button-form").attr('action')
  	console.log(url)

  	$.ajax({
  		url: url,
  		method: 'POST'
  	}).done(function(response){
  		button.val(response);
  		console.log(response)
  	})
  })

  $('#vote-button-question').on('click', function(event){
  	event.preventDefault();
  	var button = $(this)
  	var url = $("#question-button-form").attr('action')
  	console.log(url)

  	$.ajax({
  		url: url,
  		method: 'POST'
  	}).done(function(response){
  		button.val(response);
  		console.log(response)
  	})
  })
});
