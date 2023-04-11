/**
 * 
 */

 console.log("Hello World!");
 
 $('#hamburgerMenu').click(function() {
	 $('#menus').toggle('#menuOpen');
	 $('#hamburgerMenu span').toggleClass('hamburgerMenuOpen');
	 $('.headerIcon').toggleClass('menu');
	 $('.headerIcon').toggleClass('remove');
 });
