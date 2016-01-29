$(function()
{

	var addBtn =  $(".add");
	var subtractBtn =  $(".subtract");

	// value of hidden input is reference what value should to be increase or decrase 
	// by default is the width (two possible values width or length)
	// $("input").focus(function (argument) {
	// 	var tab = $(this).attr('class').split(" ");
	// 	$(this).siblings("input[type='hidden']").val(tab[1]);
	// });
	
	// increase decrase function 
	// if element value is less than zero or is not numeric new value of element will be zero
	// @param action - add or subtract
	$.fn.increaseDecrase = function(action, elemet){
		
		var value = elemet.val();

		if (!$.isNumeric(value)){
			value=0;
			elemet.val(value);
			return;
		}

		switch(action){
			case 'add':
				value++;
				break;
			case 'subtract':
				value--;
				break;
			default:
				return;
		}

		if (value < 0 ){
			value = 0;
		}
		
		elemet.val(value) ;
	};

	addBtn.click(function(e){
		e.preventDefault();

		var cls = $(this).attr('class').split(" ");
		var zone = cls[0].trim(); 

		if (zone == "wall"){
			//value of hidden input /width or length/
			var wl = $(this).siblings(".wallWL").val();
			var elemWL = $(this).siblings("."+wl);
			$(this).increaseDecrase("add", elemWL);
		}
    	
	});


	subtractBtn.click(function(e){
		e.preventDefault();

    	var cls = $(this).attr('class').split(" ");
    	var zone = cls[0].trim(); 

		if ( zone == "wall"){
			var wl = $(this).siblings(".wallWL").val();
			var elemWL = $(this).siblings("."+wl);
			$(this).increaseDecrase("subtract", elemWL);
		}

	});

	// this will clone the <div class=".estimateWall">
	$("#addWall").click(function(e){
		e.preventDefault();
		var container = $(".container");
		var clone = $(".estimateWall").clone(true);
		var inputNumWalls = $("#numWalls");
		$(this).increaseDecrase("add", inputNumWalls);
		clone.appendTo(container);

	});

	$(".calculate").click(function(e){
		e.preventDefault();

		var input = $("input");
		alert(input.length);

	});

	
	
});




















