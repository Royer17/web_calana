//------------------------------------------------------------------------
// Variablea Globales
//------------------------------------------------------------------------
var nav4 = window.Event ? true : false;

// Funcion para limpiar los espacios en blanco
function ltrim(s) { return s.replace(/^\s+/, ""); }  
function rtrim(s) { return s.replace(/\s+$/, ""); }  
function trim(s)  { return rtrim(ltrim(s)); }

function fncLimpiarFormulario(frm,obj){
	frm.reset();
	obj.focus();
}
function convertirMayuscula(obj){
	obj.value = obj.value.toUpperCase();
}
function colorFondo(src,clrOver) {
	src.bgColor = clrOver;
}
function colorBorde(src,prop){
	src.style.border = prop;
}
function soloMayusculas(obj){
	obj.value = obj.value.toUpperCase();	
}
function cambiarEstilo(obj,estilo){
	obj.className = estilo;
}
function enviarFrm(frm){
	frm.submit();
}
function oClick(url){
	document.location.href = url;
}
function mostrarOcultarCapa(capa,opc){
	document.getElementById(capa).style.display = opc;
}
function contar(form,name) {
	n = document.forms[form][name].value.length;
	t = 150; 
	if (n > t) {
		document.forms[form][name].value = document.forms[form][name].value.substring(0, t);
	}else{
		document.forms[form]['result'].value = t-n;
	}
}
function soloNumero(evt){
	if(navigator.appName.indexOf("Explorer")!=-1){ // Si se trata del Explorer
		var key=window.event.keyCode;
		if (key < 48 || key > 57){ window.event.keyCode=0; }
	}else{ // Cualquier otro navegador
		var key = nav4 ? evt.which : evt.keyCode;	//46
		return (key <= 13 || (key >= 48 && key <= 57));
	}
}
function soloNumeroyDecimal(value,evt){
	var key = nav4 ? evt.which : evt.keyCode;	//46
	punto = '.';
	if(value.indexOf(punto)!=-1) return (key <= 13 || (key >= 48 && key <= 57));
	else return (key <= 13 || (key >= 48 && key <= 57) || key==46);
}
// Funcion para dar formato a la fecha de ingreso en tu "text"
var primerslap=false;
var segundoslap=false;
function IsNumeric(valor){
	var log=valor.length; var sw="S";
	for (x=0; x<log; x++){ 
		v1=valor.substr(x,1);
		v2 = parseInt(v1);
		if (isNaN(v2)) { sw= "N";} //Compruebo si es un valor numérico
	}
	if (sw=="S") {return true;} 
	else { return false; }
}
function formatearFecha(fecha){ // dd-mm-YYY
	var long = fecha.length;
	var dia;
	var mes;
	var ano;
	
	if ((long>=2) && (primerslap==false)) { 
		dia=fecha.substr(0,2);
		if((IsNumeric(dia)==true) && (dia<=31) && (dia!="00")){ fecha=fecha.substr(0,2)+"-"+fecha.substr(3,7); primerslap=true; }
		else{ fecha=""; primerslap=false;}
	}else{
		dia=fecha.substr(0,1);
		if (IsNumeric(dia)==false){ fecha=""; }
		if ((long<=2) && (primerslap=true)){ fecha=fecha.substr(0,1); primerslap=false; }
	}
	if((long>=5) && (segundoslap==false)){ 
		mes=fecha.substr(3,2);
		if((IsNumeric(mes)==true) &&(mes<=12) && (mes!="00")){ fecha=fecha.substr(0,5)+"-"+fecha.substr(6,4); segundoslap=true; }
		else{ fecha=fecha.substr(0,3); segundoslap=false; }
	}else{
		if((long<=5) && (segundoslap=true)) { fecha=fecha.substr(0,4); segundoslap=false; }
	}
	if(long>=7){ 
		ano=fecha.substr(6,4);
		if(IsNumeric(ano)==false) { fecha=fecha.substr(0,6); }
		else{ 
			if(long==10){ 
				if ((ano==0) || (ano<1900) || (ano>2500)){ fecha=fecha.substr(0,6); } 
			}
		}
	}
	if (long>=10){
		fecha=fecha.substr(0,10);
		dia=fecha.substr(0,2);
		mes=fecha.substr(3,2);
		ano=fecha.substr(6,4);
		// Año no viciesto y es febrero y el dia es mayor a 28
		if( (ano%4 != 0) && (mes ==02) && (dia > 28) ){ fecha=fecha.substr(0,2)+"/"; }
	}
	return (fecha);
}

//_Para saber si un elemento es visible o no
function isVisible(id){
	var element = jQuery(id);
	if (element.length > 0 && element.css('visibility') !== 'hidden' && element.css('display') !== 'none') {
		return true;
	} else {
		return false;
	}
}