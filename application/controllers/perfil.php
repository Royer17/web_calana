<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Perfil extends Check_Authentication_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Perfil');
		$this->load->library('perfilLib');
		$this->form_validation->set_message('required', 'Debe ingresar un valor para %s');
		$this->form_validation->set_message('norep', 'Existe un registro con el mismo %s');

		$this->data = $this->validate_session('perfil', 
			['index', 'search', 'create', 'insert', 'edit', 'update', 'delete']);
	}

	public function index() {
		$this->data['contenido'] = 'perfil/index';
		$this->data['titulo'] = 'Perfiles';
		$this->data['query'] = $this->Model_Perfil->all();	
		$this->loadSsAdminViews();	
	}


	public function search() {
		$this->data['contenido'] = 'perfil/index';
		$this->data['titulo'] = 'Perfiles';
		$value = $this->input->post('buscar');
		$this->data['query'] = $this->Model_Perfil->allfiltered('name',$value);	
		$this->loadSsAdminViews();	
	}


	public function create(){
		//$id = $this->uri->segment(3);
		$this->data['contenido'] = 'perfil/create';
		$this->data['titulo'] = 'Crear Perfil';
		//$data['registro'] = $this->Model_Perfil->find($id);
		$this->loadSsAdminViews();	
	}

	public function insert(){
		//$id = $this->uri->segment(3);
		$registro = $this->input->post();	
		
		$this->form_validation->set_rules('name', 'Nombre', 'required|callback_norep');			
		if ($this->form_validation->run()==FALSE) {
			$this->create();
		}
		else{
			$registro['created'] = date('Y/m/d H:i');
			$registro['updated'] = date('Y/m/d H:i');
			$this->Model_Perfil->insert($registro);
			redirect('perfil/index');
		}
	}


	public function edit($id){
		//$id = $this->uri->segment(3);
		$this->data['contenido'] = 'perfil/edit';
		$this->data['titulo'] = 'Actualizar Perfil';
		$this->data['registro'] = $this->Model_Perfil->find($id);
		$this->loadSsAdminViews();	
	}

	public function update(){
		$registro = $this->input->post();

		$this->form_validation->set_rules('name', 'Nombre', 'required|callback_norep');
		// $this->form_validation->set_rules('password', 'Clave', 'required'); // por si existe mas campos
		if($this->form_validation->run() == FALSE) {
			$this->edit($registro['id'] );
		}
		else {
			$registro['updated'] = date('Y/m/d H:i');
			$this->Model_Perfil->update($registro); 
			redirect('perfil/index');
		}


	}

	public function delete($id){
		$this->Model_Perfil->delete($id);
		redirect('perfil/index');
	}
}
