// $(document).ready(function() {

// 	// booleans for later use
// 	var bool1 = false,
// 			bool2 = false,
// 			bool3 = false,
// 			bool4 = false;

// 	// cache ids of fact boxes
// 	var $factBox1 = $('#fact-box1'),
// 			$factBox2 = $('#fact-box2'),
// 			$factBox3 = $('#fact-box3'),
// 			$factBox4 = $('#fact-box4');

// 	// cache numbers
// 	var num1 = 416,
// 			num2 = 100,
// 			num3 = 1000,
// 			num4 = 1;

// 	// cache regular text
// 	var regText1 = "trillion gallons per year",
// 			regText2 = "thousand gallons per year",
// 			regText3 = "gallons per year",
// 			regText4 = "million miles";

// 	// cache text that appears on hover
// 	var hoverText1 = "That's the equivalent of 54,953,000,000 plastic water bottles!",
// 			hoverText2 = "",
// 			hoverText3 = "",
// 			hoverText4 = "";

// 	var swapText1 = function() {
// 		if (bool1 == false) {
// 			$('#fact-box1 .number').html("");
// 			$('#fact-box1 .text').html(hoverText1);
// 			bool1 = true;
// 		} else {
// 			$('#fact-box1 .number').html(num1);
// 			$('#fact-box1 .text').html(regText1);
// 			bool1 = false;
// 		}
// 	}

// 	$factBox1.mouseenter(function() {
// 		swapText1();
// 	});
// 	$factBox1.mouseleave(function() {
// 		swapText1();
// 	});

// })