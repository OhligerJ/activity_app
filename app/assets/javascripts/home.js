$(".flash").ready(function(){
	$(".flash").delay(3000).slideUp(2500);
});

var frm = "form.time_form";

$(frm).on("submit", function(e){
	if($('input[name="days"]').val() == "" && $('input[name="hours"]').val() == "" && $('input[name="minutes"]').val() == ""){
		alert("Please put in a time");	
		e.preventDefault();
});

var is_email = new RegExp("\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b");

var nu_frm = "form.new_user";

$(nu_frm).on("submit", function(e){
	e.preventDefault();
	if (document.getElementById("user_username").value.match(is_email) == null){
		alert("Your username needs to be an email");
	}
	if (document.getElementById("user_password").value == ""){
		alert("Please create a password for this account.");
	}

});

var lg_frm = ".signuplog-form form";

$(lg_frm).on("submit", function(e){
	e.preventDefault();
	if (document.getElementById("user_username").value.match(is_email) == null){
		alert("Your username is an email.");
	}
	if (document.getElementById("user_password").value == ""){
		alert("Please input a password for this account.");
	}

});