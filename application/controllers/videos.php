<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class videos extends CI_Controller {

	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_videos');
		
	//	$this->form_validation->set_message('required', 'Debe ingresar campo %s');
    //   $this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
    //    $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
    }

	public function index() {
		$data['contenido'] = 'videos/index';
		$data['titulo'] = 'videos';
		$data['query'] = $this->Model_videos->all();
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function detalle($id){
		$data['contenido'] = 'videos/detalle';
		$data['titulo'] = 'Detalles videos';
		$data['registro'] = $this->Model_videos->find($id);

		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function create(){
		//$id = $this->uri->segment(3);
		$data['contenido'] ='videos/create';
		$data['titulo'] = 'Crear videos';
		//$data['registro'] = $this->Model_Perfil->find($id);
		$this->load->view('header', $data);
		$this->load->view('template2',$data);
		$this->load->view('footer', $data);	
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$data['contenido'] = 'videos/edit';
		$data['titulo'] = 'Actualizar videos';
		$data['registro'] = $this->Model_videos->find($id);


		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function update() {
		$registro = $this->input->post();

		//$registro = $this->input->post();
		$config['upload_path'] = './img/obra';
		$config['allowed_types'] = 'gif|jpg|png';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);
	
		if ( ! $this->upload->do_multi_upload('userfile'))
		{
			$data = array('error' => $this->upload->display_errors());
		$data['contenido'] = 'videos/edit';
		//$data['titulo'] = 'Actualizar videos';
		$data['registro'] = $this->Model_videos->find(29);


		$this->load->view('template2', $data);

			//echo "error";
		}	
		else
		{
			//$data = array('upload_data' => $this->upload->data());
			$datos_archivo=$this->upload->get_multi_upload_data();

			$registro=array(
					'programa'=>$this->input->post('programa'),
					'actividad'=>$this->input->post('actividad'),
					'localizacion'=>$this->input->post('localizacion'),
					'fechaini'=>$this->input->post('fechaini'),
					'plazo'=>$this->input->post('plazo'),
					'fechater'=>$this->input->post('fechater'),
					'responsable'=>$this->input->post('responsable'),
					'inspector'=>$this->input->post('inspector'),
					'descripcion'=>$this->input->post('descripcion'),
					'foto'=>isset($datos_archivo[0])?$datos_archivo[0]['file_name']:'',
					'foto1'=>isset($datos_archivo[1])?$datos_archivo[1]['file_name']:'',
					'foto2'=>isset($datos_archivo[2])?$datos_archivo[2]['file_name']:'',
					'foto3'=>isset($datos_archivo[3])?$datos_archivo[3]['file_name']:'',
					'foto4'=>isset($datos_archivo[4])?$datos_archivo[4]['file_name']:'',		
				);
			//$this->load->view('upload_success', $data);	
			$this->Model_videos->update($registro);
			redirect('videos/index');
		}
		
	}

	public function delete($id) {
		$this->Model_videos->delete($id);
		redirect('videos/index');
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
			$this->Model_videos->insert($registro);
			redirect('videos/index');
		}
	} */
	public function insert() {

		//$registro = $this->input->post();
		$config['upload_path'] = './img/obra';
		$config['allowed_types'] = 'gif|jpg|png';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);
	
		if ( ! $this->upload->do_multi_upload('userfile'))
		{
			$data = array('error' => $this->upload->display_errors());

			$data['contenido'] ='videos/create';
			$data['titulo'] = 'Crear videos';
			$this->load->view('template2', $data);
		}	
		else
		{
			//$data = array('upload_data' => $this->upload->data());
			$datos_archivo=$this->upload->get_multi_upload_data();

			$registro=array(
					'programa'=>$this->input->post('programa'),
					'actividad'=>$this->input->post('actividad'),
					'localizacion'=>$this->input->post('localizacion'),
					'fechaini'=>$this->input->post('fechaini'),
					'plazo'=>$this->input->post('plazo'),
					'fechater'=>$this->input->post('fechater'),
					'responsable'=>$this->input->post('responsable'),
					'inspector'=>$this->input->post('inspector'),
					'descripcion'=>$this->input->post('descripcion'),
					'foto'=>isset($datos_archivo[0])?$datos_archivo[0]['file_name']:'',
					'foto1'=>isset($datos_archivo[1])?$datos_archivo[1]['file_name']:'',
					'foto2'=>isset($datos_archivo[2])?$datos_archivo[2]['file_name']:'',
					'foto3'=>isset($datos_archivo[3])?$datos_archivo[3]['file_name']:'',
					'foto4'=>isset($datos_archivo[4])?$datos_archivo[4]['file_name']:'',

					


					
			);
			$this->Model_videos->insert($registro);
			redirect('videos/index');
			//$this->load->view('upload_success', $data);
		}
		


		
		
	

		
        
	}




}
