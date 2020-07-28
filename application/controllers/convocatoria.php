<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Convocatoria extends Check_Authentication_Controller {

	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Convocatoria');
		
	//	$this->form_validation->set_message('required', 'Debe ingresar campo %s');
    //  $this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
    //  $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
		$this->data = $this->validate_session('convocatoria', 
			['index2', 'search', 'create', 'insert', 'edit', 'update', 'delete']);
    }

	public function index() {

		$data['contenido'] = 'convocatoria/index';
		$data['titulo'] = 'convocatoria';
		$data['query'] = $this->Model_Convocatoria->all();
		
		/*$this->load->view('layout_index/head');
		$this->load->view('layout_index/header');
		$this->load->view('layout_index/navbar');
		$this->load->view('inicio2',$data);
		$this->load->view('layout_index/footer');*/
		$this->load->view('home/header1', $data);
		$this->load->view('home/template2',$data);
		$this->load->view('home/footer', $data);	
	}

	public function index2() {

		$this->data['contenido'] = 'convocatoria/index2';
		$this->data['titulo'] = 'convocatoria';
		$this->data['query'] = $this->Model_Convocatoria->all();
		
		/*$this->load->view('layout_index/head');
		$this->load->view('layout_index/header');
		$this->load->view('layout_index/navbar');
		$this->load->view('inicio2',$this->data);
		$this->load->view('layout_index/footer');*/
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}



	public function create(){
	
		$this->data['contenido'] ='convocatoria/create';
		$this->data['titulo'] = 'Crear Convocatoria';

		$this->load->view('ssadmin/head');
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer');	
	}	

	public function crear(){
	
		$this->data['contenido'] ='convocatoria/create2';
		$this->data['titulo'] = 'Crear Convocatoria';

		$this->load->view('ssadmin/head');
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer');	
	}

	public function insert() {

		//$registro = $this->input->post();
		$config['upload_path'] = './portaltransparencia/convocatoria';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);

		$pdfs = array('bases', 'aptos', 'resultados');

		$this->data = array(
			'referencia'	=>	$this->input->post('referencia'),
			'unidad'		=>	$this->input->post('unidad'),
			'fecha' 		=> $this->input->post('fecha'),
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

		$this->Model_Convocatoria->insert($this->data);
		redirect('convocatoria/index2');
	}


	public function edit($id) {
		// $id = $this->uri->segment(3);
		$this->data['contenido'] = 'convocatoria/edit';
		$this->data['titulo'] = 'Actualizar Convocatoria';
		$this->data['registro'] = $this->Model_Convocatoria->find($id);
		
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function update() {

			$config['upload_path'] = './portaltransparencia/convocatoria';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);

		$id = $this->input->post('idnoti');
		$registro = $this->Model_Convocatoria->find($id);
		
		$pdfs = array(
		'bases' => $registro->bases,
		 'aptos' => $registro->aptos , 
		'resultados' => $registro->resultados
		);

		$this->data = array(
			'idnoti'		=>	$this->input->post('idnoti'),
			'referencia'	=>	$this->input->post('referencia'),
			'unidad'		=>	$this->input->post('unidad'),
		);


		foreach ($pdfs as $pdf => $file)
		{	

			if (isset($_FILES[$pdf]) && ($_FILES[$pdf]['name']!=''))
			{
		       $archivo_a_borrar = realpath($config['upload_path']) . "/" .$file;
		       unlink($archivo_a_borrar);
				if($this->upload->do_upload($pdf)){
					$archivo = $this->upload->data();
					$this->data[$pdf] = $archivo['file_name'];
				}  else {
					return var_dump($this->upload->display_errors());
				}
			}
		}

		$this->Model_Convocatoria->update($this->data);
		redirect('convocatoria/index2');
		
	}

	public function delete($id) {
		$this->Model_Convocatoria->delete($id);
		redirect('convocatoria/index2');
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







}
