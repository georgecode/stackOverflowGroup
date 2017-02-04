$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

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

  // $('#vote-button-answer').on('click', function(event){
  // 	event.preventDefault();
  // 	var button = $(this)
  // 	var url = $("#question-button-form").attr('action')
  // 	console.log(url)

  // 	$.ajax({
  // 		url: url,
  // 		method: 'POST'
  // 	}).done(function(response){
  // 		button.val(response);
  // 		console.log(response)
  // 	})
  // })
});
