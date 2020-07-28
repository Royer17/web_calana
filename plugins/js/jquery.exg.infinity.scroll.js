(function($){
//_Definimos los parámetros junto con los valores por defecto de la función  
	$.defaults_scroll = {
    path: '', //--------------------> Archivo que genera el scroll
		cargador: 'cargador', //--------> Contenedor del cargador
		content: 'scroll', //-----------> Contenedor principal
		wrapper_not: 'not-wrapper', //--> Contenedor principal
    offset: 8, //-------------------> Registro inicial a mostrar
		limit: 8, //--------------------> Cantidad de registros a obtener
		buscar: '', //------------------> Texto a buscar
    trabajando: false, //-----------> Estado del scroll
    final: false //-----------------> Comprueba si se sigue cargando mas contenido
	}
	$.fn.scrollInfinito = function(options){  
	//_Puede recibir un array de parámetros nombrados invocamos a una función genérica que hace el merge   
	// entre los recibidos y los de por defecto   
		var opts = $.extend({}, $.defaults_scroll, options);  
	//_Para cada componente que puede contener el objeto jQuery que invoca a esta función  
		this.each(function(){
			$(window).scroll(function(){
				//if($(window).scrollTop() == $(document).height() - $(window).height() && !opts.trabajando && !opts.final){
					if($(window).scrollTop() >= $("#"+opts.wrapper_not).height() && !opts.trabajando && !opts.final){
					if($("#"+opts.content).length>0 && $.trim(opts.path)!=''){
						opts.trabajando=true;
						if($("#"+opts.cargador).length>0){ $("#"+opts.cargador).show(); }
						params = "offset=" + opts.offset + "&limit=" + opts.limit;
						if($.trim(opts.buscar)!=''){
							params = params + "&" + opts.buscar;
						}
						$.ajax({
							type: "POST",
							data: params,
							url: opts.path,
							dataType: 'html',
							success: function(html) {
								var cargarMas = html;
								if($.trim(cargarMas)!=''){
									var items = $(cargarMas).hide();
									$("#"+opts.content).append(items);
									items.fadeIn(1000);
									opts.offset = opts.offset + opts.limit;
								//_Funciones de efectos visuales -------------------------------------------------
									
								}else{
									$("#"+opts.content).append('');
									opts.final = true;
								}
								if($("#"+opts.cargador).length>0){ $("#"+opts.cargador).hide(); }
								opts.trabajando = false;
							},
							error: function(XMLHttpRequest, textStatus, errorThrown){
								alert ("error: "+textStatus);
							}
						})
					}
				}
			})
		})
	}	
})(jQuery);