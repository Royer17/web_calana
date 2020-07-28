<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Superadmin extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function index() {

		$data['contenido'] = 'home/index';
		$data['titulo'] = 'superadmin';
	
		
		$this->load->view('superadmin/head', $data);
		$this->load->view('superadmin/header', $data);
		$this->load->view('superadmin/sidebar', $data);
		$this->load->view('superadmin/index', $data);
		$this->load->view('superadmin/footer', $data);
		//$this->load->view('footer', $data);	
	}

	public function icons() {

		$data['contenido'] = 'superadmin/icons';
		$data['titulo'] = 'superadmin';
	
		
		$this->load->view('superadmin/head', $data);
		$this->load->view('superadmin/icons', $data);
		$this->load->view('superadmin/footer', $data);	
	}


	public function login() {

		$data['contenido'] = 'superadmin/login';
		$data['titulo'] = 'superadmin';
	
		
				
		$this->load->view('superadmin/head', $data);
	
		$this->load->view('superadmin/login', $data);
		
		//$this->load->view('template2', $data);
		//$this->load->view('footer', $data);	
	}


	public function funcionarios() {

		$data['contenido'] = 'superadmin/funcionarios';
		$data['titulo'] = 'superadmin';
	
		
		$this->load->view('header', $data);
		//$this->load->view('template2', $data);
		//$this->load->view('footer', $data);	
	}

	public function comisiones() {

		$data['contenido'] = 'superadmin/comisiones';
		$data['titulo'] = 'superadmin';
	
		
		$this->load->view('header', $data);
		//$this->load->view('template2', $data);
		//$this->load->view('footer', $data);	
	}

	public function vision_mision() {

		$data['contenido'] = 'superadmin/vision_mision'	;
		$data['titulo'] = 'superadmin';
	
		
		$this->load->view('header', $data);
		//$this->load->view('template2', $data);
		//$this->load->view('footer', $data);	
	}



}
