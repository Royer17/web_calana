<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Servicios extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function seguridad_ciudadana() {

		$data['contenido'] = 'servicios/seguridad_ciudadana';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function vaso_leche() {

		$data['contenido'] = 'servicios/vaso_leche';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}



	public function demuna() {

		$data['contenido'] = 'servicios/demuna';
		$data['titulo'] = 'demuna';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function sisfoh() {

		$data['contenido'] = 'servicios/sisfoh';
		$data['titulo'] = 'sisfoh';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function omaped() {

		$data['contenido'] = 'servicios/omaped';
		$data['titulo'] = 'omaped';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


}
