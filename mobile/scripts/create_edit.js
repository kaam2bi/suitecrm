
// *************************************************************
// ** CÓDIGO DE MODIFICACIÓN Y DE CREACIÓN					  **
// *************************************************************

	var editionEnabled = true;
	var lastNewNoteId = "";
	var imageFile = null;

	// Métodos onclick de boton de edición
	$("a#SaveNewNote").click(function(event){ SugarCrmSetNewNote(); });
   	
   	// Método onchange de imagen
   	$('#imageInput').on('change', function() {
   		
   		var fileInput = document.getElementById('imageInput');	    	
	    
   		var file = fileInput.files[0]; // MegaPixImage constructor accepts File/Blob object.
	    var mpImg = new MegaPixImage(file);

	    // Render resized image into image element using quality option.
	    // Quality option is valid when rendering into image element.
	    var resImg = document.getElementById('attachedImage');
	    mpImg.render(resImg, {quality: 0.9 });
	    imageFile = resImg.toDataURL("image/jpeg", { quality: 0.9 }); // , { maxWidth: 300, maxHeight: 300, quality: 0.8 });
    });

	function SugarCrmSetNewNote()
	{
		var subject = $("input#NewNoteSubject").val();
		var description = $("input#NewNoteDescription").val();
		
		$.get(sugarURL+"/service/v2/rest.php", {
			method: "set_entry",
			input_type: "JSON",
			response_type: "JSON",
			rest_data: '{"session":"' + SugarSessionId + '","module_name":"Notes","name_value_list":[{"name":"name","value":"'+ subject +'"},{"name":"description","value":"'+ description +'"},{"name":"parent_type","value":""},{"name":"parent_id","value":""},{"name":"date_entered","value":"' + now(false, true) + '"},{"name":"date_modified","value":"' + now(false, true) + '"},{"name":"created_by","value":"'+SugarCurrentUserId+'"}]}'
		}, function (b) {
			toast(RES_NEW_ITEM_CREATED);
			console.log(b);
		})


	}

