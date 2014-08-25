$(function(){
var pusher = new Pusher(window.PUSHER);
var channel = pusher.subscribe(window.CHANNEL);

	channel.bind('new-salute', function(data) {
		$("#salutes").prepend(data.content);
	});

	$("#new_salute").submit(newSalute);
});


function newSalute(){
	console.log("NEW SALUTE!");
	$.post("/salutes",
		$("#new_salute").serialize()
		)
		return false;
};
