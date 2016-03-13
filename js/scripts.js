$(function() {
	$( ".form-album" ).submit(function( event ) {
		$.get( "/albums.php", {
			album_type: $("#album_type").val()
		}, function( resp ) {
			$("#album").val( resp );
		});
		
		event.preventDefault();
	});
    
});