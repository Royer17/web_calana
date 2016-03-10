<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Noticias extends CI_Controller {

	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Noticia');
		
		//$this->form_validation->set_message('required', 'Debe ingresar campo %s');
        //$this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
       // $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
    }

	public function index() {
		$data['contenido'] = 'noticias/index';
		$data['titulo'] = 'noticias';
		$data['query'] = $this->Model_Noticia->all();
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function inicio() {
		$data['contenido'] = 'noticias/inicio';
		$data['titulo'] = 'noticias';
		$data['query'] = $this->Model_Noticia->cinco_ultimos();
		$this->load->view('layout_index/head', $data);
		$this->load->view('layout_index/header', $data);
		$this->load->view('layout_index/navbar', $data);
		$this->load->view('inicio', $data);
		$this->load->view('layout_index/footer', $data);	
	}



	public function detalle($id){
		$data['contenido'] = 'noticias/detalle';
		$data['titulo'] = 'Detalles Noticias';
		$data['registro'] = $this->Model_Noticia->find($id);

		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function create(){
		//$id = $this->uri->segment(3);
		$data['contenido'] ='noticias/create';
		$data['titulo'] = 'Crear Noticias';
		//$data['registro'] = $this->Model_Perfil->find($id);
		$this->load->view('header', $data);
		$this->load->view('template2',$data);
		$this->load->view('footer', $data);	
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$data['contenido'] = 'noticias/edit';
		$data['titulo'] = 'Actualizar Noticias';
		$data['registro'] = $this->Model_Noticia->find($id);
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function update() {
		$registro = $this->input->post();

		//$registro = $this->input->post();
		$config['upload_path'] = './img/noticia';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']	= '1000';
		//$config['max_width']  = '200';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);
	
		if ( ! $this->upload->do_multi_upload('userfile'))
		{
		$data = array('error' => $this->upload->display_errors());
		$data['contenido'] = 'noticias/edit';
		//$data['titulo'] = 'Noticias';
		$data['registro'] = $this->Model_Noticia->find($id);

		$this->load->view('template2', $data);

			//echo "error";
		}	
		else
		{
			//$data = array('upload_data' => $this->upload->data());
			$datos_archivo=$this->upload->get_multi_upload_data();

			$registro=array(
					'vc_titulo_informacion'=>$this->input->post('vc_titulo_informacion'),
					'vc_resumen_informacion'=>$this->input->post('vc_resumen_informacion'),
					'tx_contenido_informacion'=>$this->input->post('tx_contenido_informacion'),
					'dt_fecha_informacion'=>$this->input->post('dt_fecha_informacion'),
					'in_hits_informacion'=>$this->input->post('in_hits_informacion'),
					'tipo'=>$this->input->post('tipo'),
					'fecha'=>$this->input->post('fecha'),
					'autor'=>$this->input->post('autor'),
					'dia'=>$this->input->post('dia'),
					'mes'=>$this->input->post('mes'),
					'ano'=>$this->input->post('ano'),
					'foto'=>isset($datos_archivo[0])?$datos_archivo[0]['file_name']:'',
					'foto1'=>isset($datos_archivo[1])?$datos_archivo[1]['file_name']:'',
					'foto2'=>isset($datos_archivo[2])?$datos_archivo[2]['file_name']:'',
					'foto3'=>isset($datos_archivo[3])?$datos_archivo[3]['file_name']:'',
					'foto4'=>isset($datos_archivo[4])?$datos_archivo[4]['file_name']:'',
						
				);
			//$this->load->view('upload_success', $data);	
			$this->Model_Noticia->update($registro);
			redirect('noticias/index');
		}
		
	}


	public function delete($id) {
		$this->Model_Noticia->delete($id);
		redirect('noticias/index');
	}



	public function insert() {

		//$registro = $this->input->post();
		$config['upload_path'] = './img/noticia';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
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
			//$datos_archivo=$this->upload->data(); //cambiar 
			$datos_archivo=$this->upload->get_multi_upload_data();

			$registro=array(
					'vc_titulo_informacion'=>$this->input->post('vc_titulo_informacion'),
					'vc_resumen_informacion'=>$this->input->post('vc_resumen_informacion'),
					'tx_contenido_informacion'=>$this->input->post('tx_contenido_informacion'),
					'dt_fecha_informacion'=>$this->input->post('dt_fecha_informacion'),
					'in_hits_informacion'=>$this->input->post('in_hits_informacion'),
					'tipo'=>$this->input->post('tipo'),
					'fecha'=>$this->input->post('fecha'),
					'autor'=>$this->input->post('autor'),
					'dia'=>$this->input->post('dia'),
					'mes'=>$this->input->post('mes'),
					'ano'=>$this->input->post('ano'),					
					'foto'=>isset($datos_archivo[0])?$datos_archivo[0]['file_name']:'',
					'foto1'=>isset($datos_archivo[1])?$datos_archivo[1]['file_name']:'',
					'foto2'=>isset($datos_archivo[2])?$datos_archivo[2]['file_name']:'',
					'foto3'=>isset($datos_archivo[3])?$datos_archivo[3]['file_name']:'',
					'foto4'=>isset($datos_archivo[4])?$datos_archivo[4]['file_name']:'',
				
				);
			$this->Model_Noticia->insert($registro);
			redirect('noticias/index');
			//$this->load->view('upload_success', $data);
		}	
       
	}

}
