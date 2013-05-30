$.ajaxSetup({
	type: 'post',
	async: false,
	error: function(data){ alert(data.responseText); }
});

$(document).ready(function(){
	if($("#player").size()) flowplayer("player", "lib/flowplayer/flowplayer-3.2.6.swf", {clip: {autoPlay: false, autoBuffering: true}});
	
	$("#post-your-comment").click(function(){
		$("html, body").animate({scrollTop: $("#blog form").offset().top}, 1000);
	});
	
	$("#blog form").submit(function(){
		if(!required('#nickname', 'You must enter a nickname.')) return false;
		if(!required('#email', 'You must enter a email') || !validateEmail('#email')) return false;
		if(!required('#comment', 'You must enter a comment.')) return false;
		$.ajax({
			url: "comment.php",
			data: $(this).serialize(),
			success: function(){
				$("#blog form")[0].reset();
				$("div.error").remove();
				mo_message("The comment has been registered. Soon we will evaluate it and post.");
			}
		});
		return false;
	});
});

function mo_message(text){
	if(!$("div.message").length) $("form:visible").before('<div class="message"></div>');
	$("div.message").hide().html(text).fadeIn();
}

function mo_error(text){
	if(!$("div.error").length) $("form:visible").before('<div class="error"></div>');
	$("div.error").hide().html('<strong>ERROR: </strong>' + text).fadeIn();
}

var key;
// NOTE: Backspace = 8, Enter = 13, '0' = 48, '9' = 57 , '.' = 46, '-' = 45, ' ' = 32
function type_number(evt){
	(document.all)?key=evt.keyCode:key=evt.which;
	return (key <= 13 || key == 46 || key == 45 || key == 32 || evt.ctrlKey || (key >= 48 && key <= 57));
}

function type_price(evt){
	(document.all)?key=evt.keyCode:key=evt.which;
	return (key <= 13 || key == 46 || (key >= 48 && key <= 57));
}

function required(elem, msg, conten){
	if(conten == null) conten = "";
	if($.trim($(elem).val()) == conten){ mo_error(msg); $(elem).focus(); return false; }
	return true;
}

function maxlength(elem, value, msg){
	if(msg == null) msg = "You must enter " + value + " characters";
	if($.trim($(elem).val()).length < value){ mo_error(msg); $(elem).focus(); return false; }
	return true;
}

function validateEmail(elem){
	if($.trim($(elem).val()) != "" && !emailCheck($.trim($(elem).val()))){ $(elem).focus(); return false; }
	return true;
}

function emailCheck(email){
	var msg = "The email address is invalid. ";
	var atom = '\[^\\s\\(\\)<>@,;:\\\\\\\"\\.\\[\\]\]+';
	var word = "(" + atom + "|(\"[^\"]*\"))";
	var userPat = new RegExp("^" + word + "(\\." + word + ")*$");
	var domainPat = new RegExp("^" + atom + "(\\." + atom +")*$");
	var matchArray = email.match(/^(.+)@(.+)$/);
	if(matchArray == null){ mo_error(msg + "(verify [@] and [.])"); return false; }
	var user = matchArray[1];
	var domain = matchArray[2];
	if(user.match(userPat) == null){ mo_error(msg + "(verify data before [@])"); return false; }
	var IPArray = domain.match(/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/);
	if(IPArray != null){
		for(var i = 1; i <= 4; i++){
			if(IPArray[i] > 255){ mo_error(msg + "(Incorrect destination IP)"); return false; }
		}
		return true;
	}
	if(domain.match(domainPat) == null){ mo_error(msg + "(verify data after [@])"); return false; }
	var atomPat = new RegExp(atom, "g");
	var domArr = domain.match(atomPat);
	var len = domArr.length;
	if(domArr[len - 1].length < 2 || domArr[len - 1].length > 3){
	   mo_error(msg + "(verify data after [.])"); return false;
	}
	if(len < 2){ mo_error(msg + "(verify data after [.])"); return false; }
	return true;
}