
// *************************************************************
// ** CÓDIGO DE MODIFICACIÓN Y DE CREACIÓN					  **
// *************************************************************

	var editionEnabled = true;
	var lastNewNoteId = "";

	// Métodos onclick de boton de edición
	$("a#SaveNewNote").click(function(event){ SugarCrmSetNewNote(); });
   	
   	$('#fileInput').on('change', function() {
   		
   		var fileInput = document.getElementById('fileInput');	    	
	    
   		var file = fileInput.files[0];
	    // MegaPixImage constructor accepts File/Blob object.
	    var mpImg = new MegaPixImage(file);

	    // Render resized image into image element using quality option.
	    // Quality option is valid when rendering into image element.
	    var resImg = document.getElementById('attachedImage');
	    mpImg.render(resImg, { maxWidth: 300, maxHeight: 300, quality: 0.8 });

   		/***


	    var file = $('#fileInput').files[0];
	    
	    var mpImg = new MegaPixImage(file); // MegaPixImage constructor accepts File/Blob object.
	    var resImg = $('#attachedImage');
	    mpImg.render(resImg, { maxWidth: 300, maxHeight: 300, quality: 0.8 });
   		*/
    });

	function SugarCrmSetNewNote()
	{
		var subject = $("input#NewNoteSubject").val();
		var description = $("input#NewNoteDescription").val();
		//var fileInput = $('input#fileInput');



	}

