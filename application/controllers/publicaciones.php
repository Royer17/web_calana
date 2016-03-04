<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Publicaciones extends CI_Controller {

	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Publicaciones');
		
	//	$this->form_validation->set_message('required', 'Debe ingresar campo %s');
    //   $this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
    //    $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
    }

	public function index() {
		$data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Todas las Publicaciones';
		$data['query'] = $this->Model_Publicaciones->all();
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function create(){
		//$id = $this->uri->segment(3);
		$data['contenido'] ='publicaciones/create';
		$data['titulo'] = 'Crear publicaciones';
		//$data['registro'] = $this->Model_Perfil->find($id);
		$this->load->view('header', $data);
		$this->load->view('template2',$data);
		$this->load->view('footer', $data);	
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$data['contenido'] = 'publicaciones/edit';
		$data['titulo'] = 'Actualizar publicaciones';
		$data['registro'] = $this->Model_Publicaciones->find($id);
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function update() {
		$registro = $this->input->post();
			
		$this->Model_Publicaciones->update($registro);
		redirect('publicaciones/index');
		
	}

	public function delete($id) {
		$this->Model_Publicaciones->delete($id);
		redirect('publicaciones/index');
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
        $this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);
	}

	public function ordenanzas(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Ordenanzas Municipales';
		$data['query']=$this->Model_Publicaciones->Ordenanzas();
        $this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);
	}

	public function resoluciones_alcaldia(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Resoluciones Alcaldia';
		$data['query']=$this->Model_Publicaciones->resoluciones_alcaldia();
        $this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);
	}

	public function resoluciones_gerencia_municipal(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Resoluciones de Gerencia Municipal';
		$data['query']=$this->Model_Publicaciones->resoluciones_gerencia_municipal();
        $this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);
	}

	public function decreto_alcaldia(){
		
        $data['contenido'] = 'publicaciones/index';
		$data['titulo'] = 'Decreto Alcaldia';
		$data['query']=$this->Model_Publicaciones->decreto_alcaldia();
        $this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);
	}

	public function insert() {

		//$registro = $this->input->post();
		$config['upload_path'] = './portaltransparencia/publicaciones';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);
	
		if ( ! $this->upload->do_upload())
		{
			$data = array('error' => $this->upload->display_errors());

			$data['contenido'] ='publicaciones/create';
			$data['titulo'] = 'Crear publicaciones';
			$this->load->view('template2', $data);
		}	
		else
		{
			//$data = array('upload_data' => $this->upload->data());
			$datos_archivo=$this->upload->data();
			$registro=array(
					'idnor'=>$this->input->post('idnor'),
					'tipodocu'=>$this->input->post('tipodocu'),
					'fechaemi'=>$this->input->post('fechaemi'),
					'depeorig'=>$this->input->post('depeorig'),
					'numdoc'=>$this->input->post('numdoc'),
					'referenc'=>$this->input->post('referenc'),
					'nomfile'=>$datos_archivo['file_name'],
					'digitador'=>$this->input->post('digitador'),
					'anno'=>$this->input->post('anno'),
					'nomfile'=>$this->input->post('nomfile'),
			);

			$this->Model_Publicaciones->insert($registro);
			redirect('publicaciones/index');
			//$this->load->view('upload_success', $data);
		}
		


		
		
	

		
        
	}




}
