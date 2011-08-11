var searchfield_clicked = false;

$(document).ready(function() {

	$("#header-menu li ul").hide();

	$("#header-menu li").hover(
		function () {
			$(this).addClass("selected")
			$(this).children("a").addClass("selected");
			$(this).children("ul").fadeIn();

			if($.browser.msie && $.browser.version.substr(0,1)<=7) {
				$(this).css("background-position","center");
			}
			else {
				$(this).css("background-position","center bottom");
			}

		},function(){
			$(this).removeClass("selected")
			$(this).children("a").removeClass("selected");
			$(this).children("ul").hide();
			}); //hover

			$("#searchfield").click(
				function () {
					if (!searchfield_clicked) {
						$(this).val("");
						searchfield_clicked = true;
					}
				}
			);

			});// document ready
