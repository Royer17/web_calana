<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Publicaciones extends Check_Authentication_Controller {

	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Publicaciones');
		
	//	$this->form_validation->set_message('required', 'Debe ingresar campo %s');
    //   $this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
    //    $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
		$this->data = $this->validate_session('publicaciones', 
			['index2', 'search', 'create', 'insert', 'edit', 'update', 'delete']);
    }

	public function index() {
		$data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Todas las Publicaciones';
		$data['query'] = $this->Model_Publicaciones->all();
		$this->load->view('home/header1', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function index2() {
		$this->data['contenido'] = 'publicaciones/index2';
		$this->data['titulo'] = 'Todas las Publicaciones';
		$this->data['query'] = $this->Model_Publicaciones->all();
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);
	}


	public function create(){
		//$id = $this->uri->segment(3);
		$this->data['contenido'] ='publicaciones/create';
		$this->data['titulo'] = 'Crear publicaciones';
		//$this->data['registro'] = $this->Model_Perfil->find($id);
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$this->data['contenido'] = 'publicaciones/edit';
		$this->data['titulo'] = 'Actualizar publicaciones';
		$this->data['registro'] = $this->Model_Publicaciones->find($id);
		
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);
	}

	public function update() {
		$config['upload_path'] = './portaltransparencia/publicaciones';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);

		$pdfs = array('publicaciones');

		$this->data = array(
			'idnor'		=>	$this->input->post('idnor'),
			'fechaemi'=>$this->input->post('fechaemi'),
			'depeorig'=>$this->input->post('depeorig'),
			'numdoc'=>$this->input->post('numdoc'),
			'referenc'=>$this->input->post('referenc'),
			'tipodocu'=>$this->input->post('tipodocu'),
		);

		$id = $this->input->post('idnor');
		$registro = $this->Model_Publicaciones->find($id);
		$archivo_a_borrar = realpath($config['upload_path']) . "/" .$registro->nomfile;
		unlink($archivo_a_borrar);


		foreach ($pdfs as $pdf)
		{	

			if (isset($_FILES[$pdf]) && ($_FILES[$pdf]['name']!=''))
			{
				if($this->upload->do_upload($pdf)){
					$archivo = $this->upload->data();
					$this->data[$pdf] = $archivo['file_name'];
				}  else {
					return var_dump($this->upload->display_errors());
				}
			}
		}

		$this->Model_Publicaciones->update($this->data);
		redirect('Publicaciones/index2');
	}

	public function delete($id) {
		$this->Model_Publicaciones->delete($id);
		redirect('publicaciones/index2');
	}

	/* public function insert_obra(){
		//$id = $this->uri->segment(3);
		$registro = $this->input->post();			
		//$this->form_validation->set_rules('name', 'Nombre', 'required|callback_norep');			
		if ($this->form_validation->run()==FALSE) {
			$this->create_obra();
		}
		else{
			$registro['created'] = date('Y/m/d H:i');
			$registro['updated'] = date('Y/m/d H:i');
			$this->Model_Publicaciones->insert($registro);
			redirect('publicaciones/index');
		}
	} */

	public function acuerdos(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Acuerdos de Concejo';
		$data['query']=$this->Model_Publicaciones->acuerdos();
        $this->load->view('home/header1', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);
	}

	public function ordenanzas(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Ordenanzas Municipales';
		$data['query']=$this->Model_Publicaciones->Ordenanzas();
        $this->load->view('home/header1', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);
	}

	public function resoluciones_alcaldia(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Resoluciones Alcaldia';
		$data['query']=$this->Model_Publicaciones->resoluciones_alcaldia();
        $this->load->view('home/header1', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);
	}

	public function resoluciones_gerencia_municipal(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Resoluciones de Gerencia Municipal';
		$data['query']=$this->Model_Publicaciones->resoluciones_gerencia_municipal();
        $this->load->view('home/header1', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);
	}

	public function decreto_alcaldia(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Decreto Alcaldia';
		$data['query']=$this->Model_Publicaciones->decreto_alcaldia();
        $this->load->view('home/header1', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);
	}

	public function insert() {

		//$registro = $this->input->post();
		$config['upload_path'] = './portaltransparencia/publicaciones';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';

		$this->load->library('upload', $config);

		$pdfs = array('nomfile');

		$this->data = array(
			'fechaemi'=>$this->input->post('fechaemi'),
			'depeorig'=>$this->input->post('depeorig'),
			'numdoc'=>$this->input->post('numdoc'),
			'referenc'=>$this->input->post('referenc'),
			'tipodocu'=>$this->input->post('tipodocu'),
			//'digitador'=>$this->input->post('digitador'),
			//'anno'=>$this->input->post('anno'),
			//'nomfile'=>$this->input->post('nomfile'),
			//'referencia' => $this->input->post('fecha'),
		);

		foreach ($pdfs as $pdf)
		{
			if (isset($_FILES[$pdf]) && ($_FILES[$pdf]['name']!=''))
			{
				$this->upload->do_upload($pdf);
				$nuevo_archivo = $this->upload->data();

				$this->data[$pdf] = $nuevo_archivo['file_name'];
			}
		}

		$this->Model_Publicaciones->insert($this->data);
		redirect('publicaciones/index2');





		
		
	

		
        
	}




}
