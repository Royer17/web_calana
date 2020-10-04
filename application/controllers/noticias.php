<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Noticias extends Check_Authentication_Controller {
	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Noticia');

		//$this->form_validation->set_message('required', 'Debe ingresar campo %s');
        //$this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
        //$this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
		$this->data = $this->validate_session('noticias', 
			['index2', 'inicio', 'create', 'insert', 'edit', 'update', 'delete',
			 'insert2', 'update2']);
    }

	public function index() {
		$data['contenido'] = 'noticias/index';
		$data['titulo'] = 'noticias';
		$data['query'] = $this->Model_Noticia->all();
		$this->load->view('home/header1', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);
	}

	public function search() {
		$data['contenido'] = 'noticias/buscar';
		$data['titulo'] = 'Noticias';
		$value = $this->input->post('buscar');
		$data['query'] = $this->Model_Noticia->allfiltered('vc_titulo_informacion',$value);	
		$this->load->view('home/header', $data);
		
		$this->load->view('home//template2',$data);
			
		$this->load->view('home/footer', $data);		
	}

	public function index2() {

		$this->data['contenido'] = 'noticias/index2';
		$this->data['titulo'] = 'noticias';
		$this->data['query'] = $this->Model_Noticia->all2();
		$this->loadSsAdminViews();
	}

	public function inicio() {
		$this->data['contenido'] = 'noticias/inicio';
		$this->data['titulo'] = 'Notas de Prensa';
		$this->data['query'] = $this->Model_Noticia->cinco_ultimos();
		/* $this->load->view('layout_index/head', $data);
		$this->load->view('layout_index/header', $data);
		$this->load->view('layout_index/navbar', $data);
		$this->load->view('inicio', $data);
		$this->load->view('layout_index/footer', $data);	*/
		$this->loadSsAdminViews();
	}



	public function detalle($id){
		$data['contenido'] = 'noticias/detalle';
		$data['titulo'] = 'Detalles Noticias';
		$data['registro'] = $this->Model_Noticia->find($id);

		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function create(){
		//$id = $this->uri->segment(3);
		$this->data['contenido'] ='noticias/create';
		$this->data['titulo'] = 'Crear Noticias';
		//$data['registro'] = $this->Model_Perfil->find($id);
		$this->loadSsAdminViews();
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$this->data['contenido'] = 'noticias/edit';
		$this->data['titulo'] = 'Actualizar Noticias';
		$this->data['registro'] = $this->Model_Noticia->find($id);

		$this->loadSsAdminViews();
	}

	public function update() {
		$registro = $this->input->post();

		//$registro = $this->input->post();
		$config['upload_path'] = './img/noticia';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']	= '1000';
		//$config['max_width']  = '200';
		//$config['max_height']  = '768';


		$id = $this->input->post('in_id_informacion');
		$this->load->library('upload', $config);

		if ( ! $this->upload->do_multi_upload('userfile'))
		{
		$this->data = array('error' => $this->upload->display_errors());
		$this->data['contenido'] = 'noticias/edit';
		//$this->data['titulo'] = 'Noticias';
		$this->data['registro'] = $this->Model_Noticia->find($id);

		$this->load->view('template2', $this->data);

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
			redirect('noticias/index2');
		}

	}

	public function update2() {
		$registro = $this->input->post();

		//$registro = $this->input->post();
		$config['upload_path'] = './img/noticia';
		$config['allowed_types'] = 'gif|jpg|png';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		

		$id = $this->input->post('in_id_informacion');
		$this->load->library('upload', $config);
		$file = $this->input->post('foto');
		//return var_dump($file);
		if ( ! $this->upload->do_upload('foto') )
		{
			$this->data = array('error' => $this->upload->display_errors());
			$this->data['contenido'] = 'Noticia/edit';
			//$this->data['titulo'] = 'Noticia';
			$this->data['registro'] = $this->Model_Noticia->find($id);

			$this->load->view('template3', $this->data);

			return var_dump("Error: " . $this->upload->display_errors());
		}	
		else
		{
			$datos_archivo = array('upload_data' => $this->upload->data())["upload_data"];
			//$datos_archivo=$this->upload->get_multi_upload_data();

			$registro=array(
					'in_id_informacion'=>$this->input->post('in_id_informacion'),
					'vc_titulo_informacion'=>$this->input->post('vc_titulo_informacion'),
					'vc_resumen_informacion'=>$this->input->post('vc_resumen_informacion'),
					'tx_contenido_informacion'=>$this->input->post('tx_contenido_informacion'),
					'dt_fecha_informacion'=>$this->input->post('dt_fecha_informacion'),
					'tipo'=>$this->input->post('tipo'),
					'fecha'=>$this->input->post('fecha'),
					'dia'=>$this->input->post('dia'),
					'mes'=>$this->input->post('mes'),
					'ano'=>$this->input->post('ano'),
					'foto'=>isset($datos_archivo[0])?$datos_archivo[0]['file_name']:''

				);
			//$this->load->view('upload_success', $data);	
			$this->Model_Noticia->update($registro);
			//return var_dump($registro);
			redirect('noticias/index2');
		}
				
	}


		public function detalle($id){
		$data['contenido'] = 'noticias/detalle';
		$data['titulo'] = 'Noticias Detalle';
		$data['registro'] = $this->Model_Noticia->find($id);

		$this->load->view('home/header',$data);
		$this->load->view('home/template2',$data);
		$this->load->view('home/footer',$data);
	}


	public function delete($id) {
		$this->Model_Noticia->delete($id);
		redirect('noticias/index2');
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
			$this->data = array('error' => $this->upload->display_errors());

			$this->data['contenido'] ='noticias/create';
			$this->data['titulo'] = 'Crear noticias';
			$this->load->view('template2', $this->data);
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
			redirect('noticias/index2');
			//$this->load->view('upload_success', $data);
		}

	}

	public function insert2() {
				//$registro = $this->input->post();
		$config['upload_path'] = './img/noticia';
		$config['allowed_types'] = 'gif|jpg|png|pdf';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config);
	
		if ( ! $this->upload->do_multi_upload('userfile'))
		{
			$this->data = array('error' => $this->upload->display_errors());

			$this->data['contenido'] ='noticias/create';
			$this->data['titulo'] = 'Crear noticias';
			$this->load->view('template3', $this->data);
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
					'tipo'=>$this->input->post('tipo'),
					'fecha'=>$this->input->post('fecha'),
					'dia'=>$this->input->post('dia'),
					'mes'=>$this->input->post('mes'),
					'ano'=>$this->input->post('ano'),
					'foto'=>isset($datos_archivo[0])?$datos_archivo[0]['file_name']:'',
				/*	'foto1'=>isset($datos_archivo[1])?$datos_archivo[1]['file_name']:'',
					'foto2'=>isset($datos_archivo[2])?$datos_archivo[2]['file_name']:'',
					'foto3'=>isset($datos_archivo[3])?$datos_archivo[3]['file_name']:'',
					'foto4'=>isset($datos_archivo[4])?$datos_archivo[4]['file_name']:'', */


				);
			$this->Model_Noticia->insert($registro);
			redirect('noticias/index2');
			//$this->load->view('upload_success', $data);
		}	
	

	}

}


