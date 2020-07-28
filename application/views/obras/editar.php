

	<div class="container">
		
		<section class="contenido">
			<div class="row">

			   
			    <div class="tab-content">			       

			            	<div class="col-lg-7">
			            		<div class="panel panel-default">
 									<div class="panel-heading">Editar Empleado</div>
								  	<div class="panel-body">
								  		<form id="form-actualizar" class="form-horizontal" action="<?php echo base_url();?>obras/actualizar" method="post" role="form" style="padding:0 10px;">
								  			<div class="form-group">
								  				<label>id:</label>
								  				<?php echo form_hidden('id',$registro->id); ?>
								  				
								  			</div>
								  			<div class="form-group">
								  				<label>actividad:</label>
								  				<?= form_input(array('type'=>'text','name'=>'actividad','id'=>'actividad','value'=>$registro->actividad)); ?>
								  			</div>
								  			<div class="form-group">
								  				<label>programa:</label>
								  				<?= form_input(array('type'=>'text','name'=>'programa','id'=>'programa','value'=>$registro->programa)); ?>
								  			</div>
								  			<div class="list-group">
												<img src="<?php echo base_url('img/obra/'.$registro->foto ) ?> " style="width: 200px; height: 200px;">
											</div>
								  			<div class="form-group">
								  				<label for=""> Seleccionar Imagen</label>
								  				<input type="file" name="foto_nueva">
								  			</div>
								  			<div class="form-group">
								  				<button type="button" id="btnactualizar" class="btn btn-success btn-block">Guardar</button>

								  			</div>
								  		</form>
								    
								  	</div>
								</div>
			            		
			            	</div>

			            </div>

			       

			    </div>
				

			</div>

		</section>


    </div>

<script type="text/javascript">
$(document).on("ready",inicio);

function inicio(){
	$("#msg-error").hide();
	mostrarDatos("");
	$("#buscar").keyup(function(){
		buscar = $("#buscar").val();
		mostrarDatos(buscar);
	});
	$("#btnbuscar").click(function(){
		mostrarDatos("");
		$("#buscar").val("");
	});
	$("#btnactualizar").click(actualizar);
	$("#form-create-empleado").submit(function (event){

		event.preventDefault();
		var formData = new FormData($("#form-create-empleado")[0]);
		$.ajax({
			url:$("form").attr("action"),
			type:$("form").attr("method"),
			data:formData,
			cache:false,
			contentType:false,
			processData:false,
			
			success:function(respuesta){
				if (respuesta==="exito") {
					alert("Los datos han sido guardados correctamente");
					$("#msg-error").hide();
					$("#form-create-empleado")[0].reset();
				}
				else if(respuesta==="error"){
					alert("Los datos no se pudo guardar");
				}
				else{
					$("#msg-error").show();
					$(".list-errors").html(respuesta);
				}
			}
		});
	});
	$("body").on("click","#listaobras a",function(event){
		event.preventDefault();
		idsele = $(this).attr("href");
		nombressele = $(this).parent().parent().children("td:eq(1)").text();
		apellidossele = $(this).parent().parent().children("td:eq(2)").text();
		dnisele = $(this).parent().parent().children("td:eq(3)").text();
		telefonosele = $(this).parent().parent().children("td:eq(4)").text();
		emailsele = $(this).parent().parent().children("td:eq(5)").text();

		$("#idsele").val(idsele);
		$("#nombressele").val(nombressele);
		$("#apellidossele").val(apellidossele);
		$("#dnisele").val(dnisele);
		$("#telefonosele").val(telefonosele);
		$("#emailsele").val(emailsele);
	});
	$("body").on("click","#listaobras button",function(event){
		idsele = $(this).attr("value");
		eliminar(idsele);
	});
}


function actualizar(){
	var formData = new FormData($("#form-actualizar")[0]);
	$.ajax({
		url:"http://localhost/webmdcn/obras/actualizar",
		type:"POST",
		data:formData,
		cache:false,
		processData:false,
		contentType:false,
		success:function(respuesta){
			alert(respuesta);
			//mostrarDatos("");
		}
	});
}

function eliminar(idsele){
	$.ajax({
		url:"http://localhost/webmdcn/obras/eliminar",
		type:"POST",
		data:{id:idsele},
		success:function(respuesta){
			alert(respuesta);
			mostrarDatos("");
		}
	});
}

	


</script>