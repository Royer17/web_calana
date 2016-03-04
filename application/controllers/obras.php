<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Obras extends CI_Controller {

	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Obras');
		
	//	$this->form_validation->set_message('required', 'Debe ingresar campo %s');
    //   $this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
    //    $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
    }

	public function index() {
		$data['contenido'] = 'obras/index';
		$data['titulo'] = 'Obras';
		$data['query'] = $this->Model_Obras->all();
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function detalle($id){
		$data['contenido'] = 'obras/detalle';
		$data['titulo'] = 'Detalles Obras';
		$data['registro'] = $this->Model_Obras->find($id);

		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function create(){
		//$id = $this->uri->segment(3);
		$data['contenido'] ='obras/create';
		$data['titulo'] = 'Crear Obras';
		//$data['registro'] = $this->Model_Perfil->find($id);
		$this->load->view('header', $data);
		$this->load->view('template2',$data);
		$this->load->view('footer', $data);	
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$data['contenido'] = 'obras/edit';
		$data['titulo'] = 'Actualizar Obras';
		$data['registro'] = $this->Model_Obras->find($id);

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
		$data['contenido'] = 'obras/edit';
		//$data['titulo'] = 'Actualizar Obras';
		$data['registro'] = $this->Model_Obras->find(29);


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
			$this->Model_Obras->update($registro);
			redirect('Obras/index');
		}
		
	}

	public function delete($id) {
		$this->Model_Obras->delete($id);
		redirect('obras/index');
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
			$this->Model_Obras->insert($registro);
			redirect('Obras/index');
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

			$data['contenido'] ='obras/create';
			$data['titulo'] = 'Crear Obras';
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
			$this->Model_Obras->insert($registro);
			redirect('Obras/index');
			//$this->load->view('upload_success', $data);
		}
		


		
		
	

		
        
	}




}
