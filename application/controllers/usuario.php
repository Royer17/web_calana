<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Usuario extends Check_Authentication_Controller {

	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Usuario');
		$this->load->library('usuarioLib');

		$this->form_validation->set_message('required', 'Debe ingresar campo %s');
        $this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
        $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');

		$this->data = $this->validate_session('usuario', 
			['index', 'search', 'create', 'insert', 'edit', 'update', 'delete']);
    }

  
	public function index() {
		$this->data['contenido'] = 'usuario/index';
		$this->data['titulo'] = 'Usuario';
		$this->data['query'] = $this->Model_Usuario->all();

		$this->loadSsAdminViews();
	}

	public function search() {
		$this->data['contenido'] = 'usuario/index';
		$this->data['titulo'] = 'Usuario';
		$value = $this->input->post('buscar');
		$this->data['query'] = $this->Model_Usuario->allFiltered('usuario.name', $value);
		
		$this->loadSsAdminViews();
	}

	public function my_validation() {
		return $this->usuariolib->my_validation($this->input->post());
	}

	public function create() {
		$this->data['contenido'] = 'usuario/create';
		$this->data['titulo'] = 'Crear Usuario';
		$this->data['perfiles'] = $this->Model_Usuario->get_perfiles(); /* Lista de los Perfiles */
		
		$this->loadSsAdminViews();
	}

	public function insert() {
		$registro = $this->input->post();

		$this->form_validation->set_rules('name', 'Nombre', 'required');
        $this->form_validation->set_rules('login', 'Login', 'required|callback_my_validation');
        $this->form_validation->set_rules('email', 'eMail', 'required|valid_email');
        if ($this->form_validation->run() == FALSE) {
            $this->create();
        }
        else {
        	//$registro['password'] = md5($registro['login']); // con codigo de encrio
			$registro['password'] = ($registro['login']); // Por defecto misma login y pwd
			$registro['created'] = date('Y/m/d H:i');
			$registro['updated'] = date('Y/m/d H:i');
			$this->Model_Usuario->insert($registro);
			redirect('usuario/index');
        }
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$this->data['contenido'] = 'usuario/edit';
		$this->data['titulo'] = 'Actualizar Usuario';
		$this->data['registro'] = $this->Model_Usuario->find($id);
		$this->data['perfiles'] = $this->Model_Usuario->get_perfiles(); /* Lista de los Perfiles */
		$this->loadSsAdminViews();
	}

	public function update() {
		$registro = $this->input->post();

		$this->form_validation->set_rules('name', 'Nombre', 'required');
        $this->form_validation->set_rules('login', 'Login', 'required|callback_my_validation');
        $this->form_validation->set_rules('email', 'eMail', 'required|valid_email');
		if($this->form_validation->run() == FALSE) {
			$this->edit($registro['id']);
		}
		else {
			$registro['updated'] = date('Y/m/d H:i');
			$this->Model_Usuario->update($registro);
			redirect('usuario/index');
		}
	}

	public function delete($id) {
		$this->Model_Usuario->delete($id);
		redirect('usuario/index');
	}

}
