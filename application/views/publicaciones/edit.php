<style>
	input{
		width: 360px;		
	}
</style>

<div style="margin-left:30px">
	<?= form_open('publicaciones/update', array('class'=>'form-horizontal')); ?>
	<legend> Actualizar Registro </legend>

	<?= my_validation_errors(validation_errors()); ?>

	<div class="form-group" >
		<?= form_label('ID', 'idnor', array('class'=>'form-label')); ?>
		<span class="uneditable-input"><?= $registro->idnor ;?></span>
		<?= form_hidden('idnor', $registro->idnor); ?>
	</div>
	
	<div class="form-group" >
		<?= form_label('tipodocu', 'tipodocu', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'tipodocu','id'=>'tipodocu','value'=>$registro->tipodocu)); ?>
	</div>

	<div class="form-group">
		<?= form_label('fechaemi', 'fechaemi', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'date','name'=>'fechaemi','id'=>'fechaemi','value'=>$registro->fechaemi)); ?>
	</div>

		
	<div class="form-group" >
		<?= form_label('depeorig', 'depeorig', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'depeorig','id'=>'depeorig','value'=>$registro->depeorig)); ?>
	</div>

	<div class="form-group" >
		<?= form_label('numdoc', 'numdoc', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'text','name'=>'numdoc','id'=>'numdoc','value'=>$registro->numdoc)); ?>
	</div>


	<div class="form-group">
		<?= form_label('nomfile', 'nomfile', array('class'=>'form-label')); ?>
		<?= form_input(array('type'=>'file','name'=>'nomfile','id'=>'nomfile','value'=>$registro->nomfile)); ?>
	</div>

	<div class="form-actions">
		<?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'btn btn-primary')); ?>		
		<?= anchor('publicaciones/index', 'Cancelar', array('class'=>'btn-success')); ?>
		<?= anchor('publicaciones/delete/'.$registro->idnor , 'Eliminar', array('class'=>'btn btn-warning','onClick'=>"return confirm('¿Está Seguro?')")); ?>	
	</div>

<?= form_close(); ?>

</div>