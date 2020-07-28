/* PARA LA VALIDACION DE LOS FORMULARIOS ****************************************************************************************************/
//_Validar: CONTACTO -------------------------------------------------------------------------------------------
function fncValidarContacto(frm){
	var nombre = trim(frm.nombre.value);
	var email = trim(frm.email.value);
	var consulta = trim(frm.consulta.value);
	var codigo = trim(frm.codigo.value);
	var frm_action = frm.action;
	var frm_id = frm.id;
	var msg = "OCURRIERON LOS SIGUIENTES ERRORES:\n\n";
	if(nombre==""){ alert(msg+="- No ingreso el NOMBRE."); frm.nombre.value=''; frm.nombre.focus(); return false; }
	if(email==""){ alert(msg+="- No ingreso el EMAIL."); frm.email.value=''; frm.email.focus(); return false; }
	else{
		if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)==false){
			alert(msg+="- El CORREO ELECTRONICO no es correcto.");
			frm.email.focus(); return false;
		}	
	}
	if(consulta==""){ alert(msg+="- No ingreso la CONSULTA."); frm.consulta.value=''; frm.consulta.focus(); return false; }
	if(codigo==""){ alert(msg+="- No ingreso el CODIGO DE SEGURIDAD."); frm.codigo.value=''; frm.codigo.focus(); return false; }
	else{
		var frm_captcha_val = frm.captcha_val.value;
		if(jQuery("#loading").length>0){ jQuery("#loading").show(); }
		jQuery.ajax({
		  type: "POST",
		  url: frm_captcha_val,
		  data: "codigo="+codigo,
		  dataType: "html",
		  success: function(datos){
				if(datos=="si"){
					if(confirm("\xbfEst\xe1 seguro de la informaci\xf3n a enviar?")){
						jQuery.post(frm_action, jQuery("#"+frm_id).serialize(), function(data){
							switch(data){
								case "1": alert("Su mensaje ah sido enviado satisfactoriamente."); document.location.href="index.php"; break;
								case "2": alert("El codigo de seguridad ingresado es incorrecto."); jQuery("#loading").hide(); break;
								default: 
									alert("No se pudo enviar el mensaje."); frm.reset(); frm.nombre.focus(); 
									if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
									if(jQuery("#frm_captcha").length>0){
										var new_src = jQuery("#frm_captcha").attr("src")+"?timestamp="+new Date().getTime();
										jQuery("#frm_captcha").attr("src",new_src); 
									}
									break;
							}
						});
					}else{
						if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
					}
				}else{ 
					alert(msg+="- El codigo de seguridad ingresado es incorrecto."); 
					if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
					frm.codigo.select(); 
					return false; 
				}
		  },
		  error: function(XMLHttpRequest, textStatus, errorThrown){
				if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
				alert("Error: "+textStatus); 
		  }
		});
	}
	return false;
}
//_Validar: BUZON DE SUGERENCIAS -------------------------------------------------------------------------------
function fncValidarBuzon(frm){
	var nombre = trim(frm.nombre.value);
	var email = trim(frm.email.value);
	var tipo = trim(frm.tipo.value);
	var consulta = trim(frm.consulta.value);
	var codigo = trim(frm.codigo.value);
	var frm_action = frm.action;
	var frm_id = frm.id;
	var msg = "OCURRIERON LOS SIGUIENTES ERRORES:\n\n";
	if(nombre==""){ alert(msg+="- No ingreso el NOMBRE."); frm.nombre.value=''; frm.nombre.focus(); return false; }
	if(email==""){ alert(msg+="- No ingreso el EMAIL."); frm.email.value=''; frm.email.focus(); return false; }
	else{
		if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)==false){
			alert(msg+="- El CORREO ELECTRONICO no es correcto.");
			frm.email.focus(); return false;
		}	
	}
	if(tipo==""){ alert(msg+="- No eligio el tipo de SUGERENCIA."); frm.tipo.focus(); return false; }
	if(consulta==""){ alert(msg+="- No ingreso la SUGERENCIA."); frm.consulta.value=''; frm.consulta.focus(); return false; }
	if(codigo==""){ alert(msg+="- No ingreso el CODIGO DE SEGURIDAD."); frm.codigo.value=''; frm.codigo.focus(); return false; }
	else{
		var frm_captcha_val = frm.captcha_val.value;
		if(jQuery("#loading").length>0){ jQuery("#loading").show(); }
		jQuery.ajax({
		  type: "POST",
		  url: frm_captcha_val,
		  data: "codigo="+codigo,
		  dataType: "html",
		  success: function(datos){
				if(datos=="si"){
					if(confirm("\xbfEst\xe1 seguro de la informaci\xf3n a enviar?")){
						jQuery.post(frm_action, jQuery("#"+frm_id).serialize(), function(data){
							switch(data){
								case "1": alert("Su mensaje ah sido enviado satisfactoriamente."); document.location.href="index.php"; break;
								case "2": alert("El codigo de seguridad ingresado es incorrecto."); jQuery("#loading").hide(); break;
								default: 
									alert("No se pudo enviar el mensaje."); frm.reset(); frm.nombre.focus(); 
									if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
									if(jQuery("#frm_captcha").length>0){
										var new_src = jQuery("#frm_captcha").attr("src")+"?timestamp="+new Date().getTime();
										jQuery("#frm_captcha").attr("src",new_src); 
									}
									break;
							}
						});
					}else{
						if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
					}
				}else{ 
					alert(msg+="- El codigo de seguridad ingresado es incorrecto."); 
					if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
					frm.codigo.select(); 
					return false; 
				}
		  },
		  error: function(XMLHttpRequest, textStatus, errorThrown){
				if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
				alert("Error: "+textStatus); 
		  }
		});
	}
	return false;
}
//_Validar: LIBRO DE RECLAMOS ----------------------------------------------------------------------------------
function fncValidarReclamo(frm){
	var nombre = trim(frm.nombre.value);
	var domicilio = trim(frm.domicilio.value);
	var tipo_doc_nro = trim(frm.tipo_doc_nro.value);
	var descrip_bien = trim(frm.descrip_bien.value);
	var descrip_rec = trim(frm.descrip_rec.value);
	var codigo = trim(frm.codigo.value);
	var frm_action = frm.action;
	var frm_id = frm.id;
	var msg = "OCURRIERON LOS SIGUIENTES ERRORES:\n\n";
	if(nombre==""){ alert(msg+="- No ingreso su NOMBRE COMPLETO."); frm.nombre.value=''; frm.nombre.focus(); return false; }
	if(domicilio==""){ alert(msg+="- No ingreso su DOMICILIO."); frm.domicilio.value=''; frm.domicilio.focus(); return false; }
	if(!jQuery('input[name="tipo_doc"]:radio').is(':checked')){ alert(msg+="- No eligio el TIPO DE DOCUMENTO."); return false; }
	if(tipo_doc_nro==""){ alert(msg+="- No ingreso su DOCUMENTO."); frm.tipo_doc_nro.value=''; frm.tipo_doc_nro.focus(); return false; }
	if(!jQuery('input[name="mayor"]:radio').is(':checked')){ alert(msg+="- No eligio si es MAYOR DE 18."); return false; }
	if(!jQuery('input[name="tipo_bien"]:radio').is(':checked')){ alert(msg+="- No eligio el TIPO DE BIEN."); return false; }
	if(descrip_bien==""){ alert(msg+="- No ingreso la DESCRIPCION DEL BIEN."); frm.descrip_bien.value=''; frm.descrip_bien.focus(); return false; }
	if(!jQuery('input[name="tipo_rec"]:radio').is(':checked')){ alert(msg+="- No eligio el TIPO DE RECLAMACION."); return false; }
	if(descrip_rec==""){ alert(msg+="- No ingreso la DESCRIPCION DE LA RECLAMACION."); frm.descrip_rec.value=''; frm.descrip_rec.focus(); return false; }
	if(!jQuery('input[name="acepto"]').is(':checked')){ alert(msg+="- No acepto la conformidad."); return false; }
	if(codigo==""){ alert(msg+="- No ingreso el CODIGO DE SEGURIDAD."); frm.codigo.value=''; frm.codigo.focus(); return false; }
	else{
		var frm_captcha_val = frm.captcha_val.value;
		if(jQuery("#loading").length>0){ jQuery("#loading").show(); }
		jQuery.ajax({
		  type: "POST",
		  url: frm_captcha_val,
		  data: "codigo="+codigo,
		  dataType: "html",
		  success: function(datos){
				if(datos=="si"){
					if(confirm("\xbfEst\xe1 seguro de la informaci\xf3n a enviar?")){
						jQuery.post(frm_action, jQuery("#"+frm_id).serialize(), function(data){
							switch(data){
								case "1": alert("Su reclamo ah sido enviado satisfactoriamente."); document.location.href="index.php"; break;
								case "2": alert("El codigo de seguridad ingresado es incorrecto."); jQuery("#loading").hide(); frm.codigo.select(); break;
								case "3": alert("No ingreso todos los campos requeridos."); jQuery("#loading").hide(); frm.nombre.focus(); break;
								default: 
									alert("No se pudo enviar el mensaje."); frm.reset(); frm.nombre.focus(); 
									if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
									if(jQuery("#frm_captcha").length>0){
										var new_src = jQuery("#frm_captcha").attr("src")+"?timestamp="+new Date().getTime();
										jQuery("#frm_captcha").attr("src",new_src); 
									}
									break;
							}
						});
					}else{
						if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
					}
				}else{ 
					alert(msg+="- El codigo de seguridad ingresado es incorrecto."); 
					if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
					frm.codigo.select(); 
					return false; 
				}
		  },
		  error: function(XMLHttpRequest, textStatus, errorThrown){
				if(jQuery("#loading").length>0){ jQuery("#loading").hide(); }
				alert("Error: "+textStatus); 
		  }
		});
	}
	return false;
}

/* FUNCIONES VARIAS ************************************************************************************************************************/
//_Validar CAMPO FECHA (dd-mm-aaaa) ----------------------------------------------------------------------------
function fncValidarFecha(Cadena){  
	var Fecha= new String(Cadena);   // Crea un string  
	var RealFecha= new Date();   // Para sacar la fecha de hoy  
	// Cadena Año  
	var Ano= new String(Fecha.substring(Fecha.lastIndexOf("-")+1,Fecha.length));
	// Cadena Mes  
	var Mes= new String(Fecha.substring(Fecha.indexOf("-")+1,Fecha.lastIndexOf("-")));
	// Cadena Día  
	var Dia= new String(Fecha.substring(0,Fecha.indexOf("-")));
	
	// Valido el año  
	if (isNaN(Ano) || Ano.length<4 || parseFloat(Ano)<1900){  
		//alert('Año inválido')  
		return false;
	}  
	// Valido el Mes  
	if (isNaN(Mes) || parseFloat(Mes)<1 || parseFloat(Mes)>12){  
		//alert('Mes inválido')  
		return false;
	}  
	// Valido el Dia  
	if (isNaN(Dia) || parseInt(Dia, 10)<1 || parseInt(Dia, 10)>31){  
		//alert('Día inválido')  
		return false;
	}  
	if (Mes==4 || Mes==6 || Mes==9 || Mes==11 || Mes==2) {  
		if (Mes==2 && Dia > 28 || Dia>30) {  
			//alert('Día inválido')  
			return false;
		}  
	}  
	
	return true;
}
