<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Convocatoria extends CI_Controller {

	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Convocatoria');
		
	//	$this->form_validation->set_message('required', 'Debe ingresar campo %s');
    //   $this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
    //    $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
    }

	public function index() {
		$data['contenido'] = 'Convocatoria/index';
		$data['titulo'] = 'Convocatoria';
		$data['query'] = $this->Model_Convocatoria->all();
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function create(){
		//$id = $this->uri->segment(3);
		$data['contenido'] ='Convocatoria/create';
		$data['titulo'] = 'Crear Convocatoria';
		//$data['registro'] = $this->Model_Perfil->find($id);
		$this->load->view('header', $data);
		$this->load->view('template2',$data);
		$this->load->view('footer', $data);	
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$data['contenido'] = 'Convocatoria/edit';
		$data['titulo'] = 'Actualizar Convocatoria';
		$data['registro'] = $this->Model_Convocatoria->find($id);
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function update() {
		$registro = $this->input->post();
		$this->Model_Convocatoria->update($registro);
		redirect('Convocatoria/index');
		
	}

	public function delete($id) {
		$this->Model_Convocatoria->delete($id);
		redirect('Convocatoria/index');
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
			$this->Model_Convocatoria->insert($registro);
			redirect('Convocatoria/index');
		}
	} */



	public function insert() {

		//$registro = $this->input->post();
		$config['upload_path'] = './portaltransparencia/convocatoria';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);
	
		if ( ! $this->upload->do_upload())
		{
			$data = array('error' => $this->upload->display_errors());

			$data['contenido'] ='Convocatoria/create';
			$data['titulo'] = 'Crear Convocatoria';
			$this->load->view('template2', $data);
		}	
		else
		{
			//$data = array('upload_data' => $this->upload->data());
			$datos_archivo=$this->upload->data();
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
					'file1'=>$datos_archivo['file_name'],
					//'file2'=>$datos_archivo['file_name[1]'],
					//'file3'=>$datos_archivo['file_name[2]'],


					


					
				);
			$this->Model_Convocatoria->insert($registro);
			redirect('Convocatoria/index');
			//$this->load->view('upload_success', $data);
		}
		


		
		
	

		
        
	}




}
