
jQuery(document).ready(function(){
//_Para jugar con el SCROLL -------------------------------------------------------------------------
	jQuery(window).on('scroll', function(){
	//_Para la PUBLICIDAD

	//_Para el MENU
		if(jQuery("#header-wrapper #header_menu").length>0){
			if(jQuery(window).scrollTop()>=187){
				jQuery("#header-wrapper #header_menu").addClass('header_menu_fijo');
			}else{
				jQuery("#header-wrapper #header_menu").removeClass('header_menu_fijo');
			}
		}
  });
//_Para la carga del MENU ---------------------------------------------------------------------------
	if(jQuery("#touch-menu").length>0){
	//_Para quitarle el click a las opciones padre
		if(jQuery(".menu_movil").length>0){
			jQuery(".menu_movil").on("click",function(e){
				e.preventDefault();
				var submenu = jQuery(this).data("sub");
				if(jQuery("#"+submenu).is(":visible")==false){
					jQuery(".menu_movil").removeClass("menu_eleg");
					jQuery(this).addClass("menu_eleg");
					jQuery(".submenu").hide("slow");
					jQuery("#"+submenu).slideDown(300);
				}else{
					jQuery("#"+submenu).slideUp(300);
					jQuery(this).removeClass("menu_eleg");
				}
			});
		}
	//_Para mostrar el MENU RESPONSIVE
		jQuery("#touch-menu").on("click", function(e){
			e.preventDefault();
			if(isVisible("#header-wrapper #header_menu #nav_movil ul#list_sec")==true){ //--> Cerrar
				jQuery("#header-wrapper #header_menu #nav_movil ul#list_sec").slideUp(300);
				jQuery(".menu_movil").removeClass("menu_eleg");
				jQuery(".submenu").hide("slow");
			}else{ //-----------------------------------------------------------------------> Abrir
				jQuery("#header-wrapper #header_menu #nav_movil ul#list_sec").slideDown(300);
			}
		});
	//_Cuando hacemos click fuera del contenedor del menu
		jQuery("#header-wrapper #header_menu #nav_movil").clickoutside(function(){
			if(jQuery("#header-wrapper #header_menu #nav_pc").is(":visible")==false){
				jQuery("#header-wrapper #header_menu #nav_movil ul#list_sec").slideUp(300);
				jQuery(".menu_movil").removeClass("menu_eleg");
				jQuery(".submenu").hide("slow");
			}
		});
	//_Para ocultar el MENU RESPONSIVE cuando se GIRE o AGRANDE la pantalla
  	jQuery(window).resize(function(e){
			if(Modernizr.touch){ e.preventDefault(); }
			else{ 
				jQuery(".menu_movil").removeClass("menu_eleg"); jQuery(".submenu").hide("slow"); 
				jQuery("#header-wrapper #header_menu #nav_movil ul#list_sec").hide(); 
			}
    });
  	jQuery(window).on("orientationchange", function(e){
			if(Modernizr.touch){ 
				jQuery(".menu_movil").removeClass("menu_eleg"); jQuery(".submenu").hide("slow"); 
				jQuery("#header-wrapper #header_menu #nav_movil ul#list_sec").hide(); 
			}
			else{ e.preventDefault(); }
    });
	//_Para evitar problemas
		if(jQuery(".mnu_pri").length>0){
			jQuery(".mnu_pri").on("click",function(e){ jQuery(".submenu").hide(); });
			jQuery(".list_sec li a").on("click",function(e){ jQuery(".submenu").hide(); });
		}
	}
//_Jquery fix (owl carousel) ------------------------------------------------------------------------
	if(jQuery('.owl-carousel-top').length>0){
		mainOwlCarousel(); // does the carousel loading
		jQuery(window).resize(function () {
			jQuery('.owl-carousel-top').trigger('destroy.owl.carousel').removeClass('owl-carousel owl-loaded');
			jQuery('.owl-carousel-top').find('.owl-stage-outer').children().unwrap();
			mainOwlCarousel();
		});
	}
//_Para que aparezca la PUBLICIDAD ------------------------------------------------------------------
	if(jQuery("#mdp_pub_enl").length>0){
		jQuery("#mdp_pub_enl").on("click",function(e){
			e.preventDefault(); jQuery("#mdp_pub").show();
		});
		jQuery("#mdp_pub_enl").trigger("click");
		if(jQuery("#mdp_pub_list").length>0){
			jQuery("#mdp_pub_list").owlCarousel({
				items			: 1,
				margin		: 5,
				loop			: true,
				autoplay	: true,
				autoHeight: true,
				merge			: true
			});
		}
		jQuery("#mdp_pub_close").on("click",function(e){
			e.preventDefault(); jQuery("#mdp_pub").hide();
		});
	}
//_Para el rotador de las CABECERAS -----------------------------------------------------------------
	if(jQuery("#slider").length>0){
		jQuery("#slider").owlCarousel({
			items 		   : 1,
			margin		   : 0,
			stagePadding : 0,
			loop			   : true,
			autoplay	   : true,
			autoWidth    : false,
			autoHeight   : false,
			dots				 : false,
	    animateIn		 : 'fadeIn',
			animateOut	 : 'fadeOut'
		});
	}
//_Para el rotador de los ACCESOS DIRECTOS ----------------------------------------------------------
	if(jQuery("#footer_enlaces_list").length>0){
		jQuery("#footer_enlaces_list").owlCarousel({
			margin		: 0,
			loop			: true,
			autoplay	: true,
			autoWidth : true,
			autoHeight: true,
			merge			: true,
			autoplayTimeout: 2000,
			smartSpeed: 200,
			responsive:{
				0:   { items: 1, loop: true, center:true },
				600: { items: 3, loop: true },
				1000:{ items:	5, loop: true }
			}
		});
	}
//_Efecto fancybox ----------------------------------------------------------------------------------
	if(jQuery(".fancybox").length>0){
		var auto = false;
		if(jQuery(".fancybox").length>1){ auto=true; }
		jQuery(".fancybox").fancybox({
			autoPlay    : auto,
			openEffect	: 'none',
			closeEffect	: 'none',
			overlay 		: { speedOut: 0 },
			helpers 		: {
        overlay : {
					  css : { 'background' : 'rgba(255, 255, 255, 0.65)' }
        }
			}
		});
	}
	if(jQuery(".fancybox-media").length>0){
		jQuery(".fancybox-media").fancybox({
			openEffect  : 'none',
			closeEffect : 'none',
			helpers : {
				media : {},
				title : { type: 'inside' }
			}
		});
	}
//_Formateo de ingreso en cajas de texto ------------------------------------------------------------
	if(jQuery('.upper').length>0){
		jQuery('.upper').on("keyup blur", function(event){
			obj = jQuery(this);
			valor = obj.val().toUpperCase();
			obj.val(valor);
		});
	}
//_Funciones propias de la pagina web ---------------------------------------------------------------
//_Para el BOTON DE BUSCAR
	if(jQuery(".btn_search").length>0){
		jQuery(".btn_search").on("click",function(e){
			var frm = jQuery(this).data("frm");
			if(jQuery("#"+frm).length>0){
				jQuery("#"+frm).submit();
			}
			e.preventDefault();
		});
	}
//_Para las tablas de DOCUMENTOS INSTITUCIONALES
	if(jQuery(".tra_doc_tbl").length>0){
		jQuery(".tra_doc_tbl tbody td.txt ul").addClass("list_esp");
		jQuery(".tra_doc_tbl tbody td.txt ol").addClass("list_esp");
		jQuery(".tra_doc_tbl").dataTable({
			"bLengthChange" : false,
			"searching": false,
			"ordering": false,
      "order": [[ 2, "desc" ]],
			"iDisplayLength": 15,
			"dom": '<"top"iflp<"clear">>rt<"bottom"iflp<"clear">>',
			"responsive": true,
			"pagingType": "full",
			"language":{
				"lengthMenu": "Viendo _MENU_ registros por pagina",
				"zeroRecords": "No se encontraron registros",
				"info": "Viendo pagina _PAGE_ de _PAGES_",
				"infoEmpty": "",
				"oPaginate": {
					"sPrevious": "<span>&lt;</span>",
					"sNext": "<span>&gt;</span>",
					"sFirst": "<span>&laquo;</span>",
					"sLast": "<span>&raquo;</span>"
				}
			},
			"fnDrawCallback": function(){
				//jQuery(".top .paginate_button").tooltip({ position: { my:"center top-58" } });
				//jQuery(".bottom .paginate_button").tooltip({ position: { my:"center bottom+58" } });
			}
    });
		//jQuery(".top .paginate_button").tooltip({ position: { my:"center top-58" } });
		//jQuery(".bottom .paginate_button").tooltip({ position: { my:"center bottom+58" } });
	}
//_Para el enlace en el LISTADO DE NOTICIAS
	if(jQuery(".not_other").length>0){
		jQuery(".not_other").on("click",function(){
			var url = jQuery(this).data("url");
			if(url!=""){ document.location.href=url; }
		});
	}
//_Para la galeria de audios del DETALLE DE NOTICIAS
	if(jQuery('.progression-playlist').length>0){
		jQuery('.progression-playlist').mediaelementplayer({
			audioWidth				: 400, // width of audio player
			audioHeight				: 40, // height of audio player
			startVolume				: 0.5, // initial volume when the player starts
			loop							: false, // useful for <audio> player loops
			features					: ['playlistfeature', 'prevtrack', 'playpause', 'nexttrack','current', 'progress', 'duration', 'volume', 'playlist'],
			playlist					: true, //Playlist Show
			playlistposition	: 'bottom' //Playlist Location
		});
	}
//_Para el enlace en el LISTADO DE ENLACES MUNICIPALES
	if(jQuery(".enl_prin").length>0){
		jQuery(".enl_prin").on("click",function(){
			var url = jQuery(this).data("url");
			if(url!=""){ document.location.href=url; }
		});
	}
//_Para la marquesina de NOTICIAS
	if(jQuery("#js-news").length>0){
		jQuery("#js-news").ticker({
			controls: false,
			titleText: 'ULTIMAS NOTICIAS:'
		});
	}
//_Para el SLIDER de NOTICIAS
	if(jQuery("#noticias_sli").length>0){
		jQuery("#noticias_sli #not_slider").bxSlider({
			mode: 'horizontal',
			auto: true,
			pager: false,
			controls: true,
			captions: true,
			adaptiveHeight: true,
			infiniteLoop: true,
			hideControlOnEnd: true
		});
	}	
	//_Para el SLIDER de EVENTOS
	if(jQuery("#eventos_sli").length>0){
		jQuery("#eventos_sli #eve_slider").bxSlider({
			mode: 'horizontal',
			auto: true,
			pager: false,
			controls: true,
			captions: true,
			adaptiveHeight: true,
			infiniteLoop: true,
			hideControlOnEnd: true
		});
	}
	//_Para el SLIDER de POPUPS
	if(jQuery("#popups_sli").length>0){
		jQuery("#popups_sli #pop_slider").bxSlider({
			mode: 'horizontal',
			auto: true,
			pager: false,
			controls: true,
			captions: true,
			adaptiveHeight: true,
			infiniteLoop: true,
			hideControlOnEnd: true
		});
	}
	//_Para el SLIDER de VIDEOS
	if(jQuery("#videos_sli").length>0){
		jQuery("#videos_sli #vid_slider").bxSlider({
			mode: 'horizontal',
			auto: true,
			pager: false,
			controls: true,
			captions: true,
			adaptiveHeight: true,
			infiniteLoop: true,
			hideControlOnEnd: true
		});
	}
//_Para el SLIDER de OBRAS
	if(jQuery("#obras_sli").length>0){
		jQuery("#obras_sli #obr_slider").bxSlider({
			mode: 'horizontal',
			auto: true,
			pager: false,
			controls: true,
			captions: true,
			adaptiveHeight: true,
			infiniteLoop: true,
			hideControlOnEnd: true
		});
	}


//_Para el FILTRO EN LOS DOCUMENTOS MUNICIPALES
	if(jQuery(".filtro_cmb").length>0){
		jQuery(".filtro_cmb").on("change",function(){
			var frm = jQuery(this).data("frm");
			if(jQuery("#"+frm).length>0){ jQuery("#"+frm).submit(); }
		});
	}
});
//_Funciones independientes --------------------------------------------------------------------------
