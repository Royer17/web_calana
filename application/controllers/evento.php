<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Evento extends Check_Authentication_Controller {
	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Evento');
		
		//$this->form_validation->set_message('required', 'Debe ingresar campo %s');
        //$this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
 		// $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
 		$this->data = $this->validate_session('evento', 
			['index', 'create', 'insert', 'edit', 'update', 'delete',
			 'index2']);
    }

	public function index() {
		$this->data['contenido'] = 'evento/index';
		$this->data['titulo'] = 'evento';
		$this->data['query'] = $this->Model_Evento->all();
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}
	public function index2() {
		$this->data['contenido'] = 'evento/index';
		$this->data['titulo'] = 'evento';
		$this->data['query'] = $this->Model_Evento->all();
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function inicio() {
		$this->data['contenido'] = 'evento/inicio';
		$this->data['query2'] = $this->Model_Evento->cinco_ultimos();
		$this->load->view('ssadmin/head', $this->data);

		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('inicio', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function detalle($id){
		$data['contenido'] = 'evento/detalle';
		$data['titulo'] = 'Detalles evento';
		$data['registro'] = $this->Model_Evento->find($id);

		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function create(){
		//$id = $this->uri->segment(3);
		$this->data['contenido'] ='evento/create';
		$this->data['titulo'] = 'Crear evento';
		//$this->data['registro'] = $this->Model_Perfil->find($id);
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$this->data['contenido'] = 'evento/edit';
		$this->data['titulo'] = 'Actualizar evento';
		$this->data['registro'] = $this->Model_Evento->find($id);
		
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function update() {
		$registro = $this->input->post();

		//$registro = $this->input->post();
		$config['upload_path'] = './img/eventorPrincipal';
		$config['allowed_types'] = 'gif|jpg|png';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		

		$id = $this->input->post('id_evento');
		$this->load->library('upload', $config);
		$file = $this->input->post('img_evento');
		//return var_dump($file);
		if ( ! $this->upload->do_upload('img_evento') )
		{
			$this->data = array('error' => $this->upload->display_errors());
			$this->data['contenido'] = 'evento/edit';
			//$this->data['titulo'] = 'evento';
			$this->data['registro'] = $this->Model_Evento->find($id);

			$this->load->view('template3', $this->data);

			return var_dump("Error: " . $this->upload->display_errors());
		}	
		else
		{
			$datos_archivo = array('upload_data' => $this->upload->data())["upload_data"];
			//$datos_archivo=$this->upload->get_multi_upload_data();

			$registro=array(
					'id_evento'=>$this->input->post('id_evento'),
					'titulo_evento'=>$this->input->post('titulo_evento'),
					'dia'=>$this->input->post('dia'),
					'mes'=>$this->input->post('mes'),
					'anno'=>$this->input->post('anno'),
					'img_evento' => isset($datos_archivo) ? $datos_archivo['file_name'] : ''				
			);
			//$this->load->view('upload_success', $data);	
			$this->Model_Evento->update($registro);
			//return var_dump($registro);
			redirect('evento/index');
		}
		
	}


	public function delete($id) {
		$this->Model_Evento->delete($id);
		redirect('evento/index');
	}



	public function insert() {

		//$registro = $this->input->post();
		$config['upload_path'] = './img/eventorPrincipal';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);
	
		if ( ! $this->upload->do_multi_upload('userfile'))
		{
			$this->data = array('error' => $this->upload->display_errors());

			$this->data['contenido'] ='evento/create';
			$this->data['titulo'] = 'Crear evento';
			$this->load->view('template3', $this->data);
		}	
		else
		{
			//$data = array('upload_data' => $this->upload->data());
			//$datos_archivo=$this->upload->data(); //cambiar 
			$datos_archivo=$this->upload->get_multi_upload_data();

			$registro=array(
					'titulo_evento'=>$this->input->post('titulo_evento'),				
					'dia'=>$this->input->post('dia'),
					'mes'=>$this->input->post('mes'),
					'anno'=>$this->input->post('anno'),					
					'img_evento'=>isset($datos_archivo[0])?$datos_archivo[0]['file_name']:'',
				
				);
			$this->Model_Evento->insert($registro);
			redirect('evento/index');
			//$this->load->view('upload_success', $data);
		}	
       
	}

}
