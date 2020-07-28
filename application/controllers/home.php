<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Home extends Check_Authentication_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Noticia');
		$this->load->model('Model_Slide');
		$this->load->model('Model_Evento');
		$this->load->model('Model_Popup');
		
		$this->load->library('usuarioLib');
		$this->form_validation->set_message('required', 'Debe ingresar un valor para %s');
		$this->form_validation->set_message('loginok', 'Usuario o clave incorrectos');
		$this->form_validation->set_message('matches', '%s no coincide con %s');
		$this->form_validation->set_message('cambiook', 'No se puede realizar el cambio de clave');

	}

	public function index() {

		$data['contenido'] = 'noticias/inicio';
		$data['evento'] = 'evento/inicio';
		$data['carusel'] = 'slide/inicio';
		$data['popup'] = 'popup/inicio';
		$data['obra'] = 'obra/inicio';
		$data['titulo'] = '';
		$data['query'] = $this->Model_Noticia->cinco_ultimos();
		$data['query2'] = $this->Model_Slide->cinco_ultimos();
		$data['query6'] = $this->Model_Evento->cinco_ultimos();
		$data['query9'] = $this->Model_Popup->cinco_ultimos();
		$data['query10'] = $this->Model_Popup->ultimo();


		//$this->db->order_by('orden_slide', 'DESC');
		//$this->db->where('orden_slide', 1);
		//$data['slides'] = $this->db->get('slide')->result_array();
		//var_dump($data['slides']);

		$this->load->view('home/header',$data);
		$this->load->view('home/template',$data);
		$this->load->view('home/footer',$data);
		/*$this->load->view('layout_index/head');
		$this->load->view('layout_index/header');
		$this->load->view('layout_index/navbar');
		$this->load->view('layout_index/slider-principal', $data);
		$this->load->view('inicio',$data);
		//$this->load->view($template);
		$this->load->view('layout_index/footer');*/

		
	}

	/*function load_view($template,$data)
	{
		$this->load->view('layout_index/head');
		$this->load->view('layout_index/header');
		$this->load->view('layout_index/navbar');
		$this->load->view($template,$data);
		$this->load->view('layout_index/footer');
	}*/

	

	public function acerca_de() {
		$data['contenido'] = 'home/acerca_de';
		$data['titulo'] = 'Acerca De';
		$this->load->view('header', $data);
		$this->load->view('template4', $data);
		$this->load->view('footer', $data);	
	}

	public function acceso_denegado() {
		$data['contenido'] = 'home/acceso_denegado';
		$data['titulo'] = 'Denegado';
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function ingreso() {
		
		$this->data['contenido'] = 'ssadmin/login';
		$this->data['titulo'] = 'ssadmin';
					
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/login', $this->data);
		$this->load->view('ssadmin/footer', $this->data);
		
		//$this->load->view('template2', $data);
		//$this->load->view('footer', $data);	
		
		
	}

	public function ingresar() {
		$this->form_validation->set_rules('login', 'Usuario', 'required|callback_loginok');
		$this->form_validation->set_rules('password', 'Clave', 'required');
		if($this->form_validation->run() == FALSE) {
			$this->ingreso();
		}
		else 
		{

			$this->data = $this->validate_session('home', 
				['ingresar']);
			$this->data['contenido'] = 'home/index';
			$this->data['active]']	='active';
			$this->data['titulo'] = 'ssadmin';
					
			$this->load->view('ssadmin/head', $this->data);
			$this->load->view('ssadmin/template', $this->data);
			
			$this->load->view('ssadmin/footer', $this->data);
			
		}
		
	}
	
	public function loginok() {
		$login = $this->input->post('login');
		$password = $this->input->post('password');
		//return $this->usuariolib->login($login, md5($password));
		return $this->usuariolib->login($login, ($password));
	}

	public function salir() {
		$this->session->sess_destroy();
		//muestre un js que diga usted ha salido correctamente 
		redirect();
	}

	public function cambio_clave() {
		$data['contenido'] = 'home/cambio_clave';
		$data['titulo'] = 'Cambiar Clave';
		$this->load->view('superadmin/head', $data);
		$this->load->view('superadmin/header', $data);
		$this->load->view('superadmin/sidebar', $data);
		$this->load->view('superadmin/index2',$data);
		$this->load->view('superadmin/footer', $data);
	}

	public function cambiar_clave() {
		$this->form_validation->set_rules('clave_act', 'Clave Actual', 'required|callback_cambiook');
		$this->form_validation->set_rules('clave_new', 'Clave Nueva', 'required|matches[clave_rep]');
		$this->form_validation->set_rules('clave_rep', 'Repita Nueva', 'required');
		if($this->form_validation->run() == FALSE) {
			$this->cambio_clave();
		}
		else {
			//usted ha cambiado de clave
			redirect('superadmin/index');
		}
	}

	public function cambiook() {
		$act = $this->input->post('clave_act');
		$new = $this->input->post('clave_new');
		return $this->usuariolib->cambiarPWD($act, $new);
		//return $this->usuariolib->cambiarPWD(md5($act), md5($new));
	}

}
