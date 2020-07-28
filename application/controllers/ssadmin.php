<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Ssadmin extends Check_Authentication_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();
		$this->data = $this->validate_session('ssadmin', 
			['index']);
	}

	public function index() {
		$this->data['contenido'] = 'home/index';
		$this->data['titulo'] = '';
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);
	}

	public function icons() {

		$data['contenido'] = 'ssadmin/icons';
		$data['titulo'] = 'ssadmin';
	
		
		$this->load->view('ssadmin/head', $data);
		$this->load->view('ssadmin/icons', $data);
		$this->load->view('ssadmin/footer', $data);	
	}


	public function login() {

		$data['contenido'] = 'ssadmin/login';
		$data['titulo'] = 'ssadmin';
		$this->load->view('ssadmin/head', $data);
		$this->load->view('ssadmin/login', $data);
		
	
	}


	public function funcionarios() {

		$data['contenido'] = 'ssadmin/funcionarios';
		$data['titulo'] = 'ssadmin';

		$this->load->view('header', $data);
		//$this->load->view('template2', $data);
		//$this->load->view('footer', $data);	
	}

	public function comisiones() {

		$data['contenido'] = 'ssadmin/comisiones';
		$data['titulo'] = 'ssadmin';
	
		
		$this->load->view('header', $data);
		//$this->load->view('template2', $data);
		//$this->load->view('footer', $data);	
	}

	public function vision_mision() {

		$data['contenido'] = 'ssadmin/vision_mision'	;
		$data['titulo'] = 'ssadmin';
	
		
		$this->load->view('header', $data);
		//$this->load->view('template2', $data);
		//$this->load->view('footer', $data);	
	}



}
