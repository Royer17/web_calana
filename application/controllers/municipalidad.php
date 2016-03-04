<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Municipalidad extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function alcalde() {

		$data['contenido'] = 'municipalidad/alcalde';
		$data['titulo'] = 'Municipalidad';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function concejo() {

		$data['contenido'] = 'municipalidad/concejo';
		$data['titulo'] = 'Municipalidad';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function funcionarios() {

		$data['contenido'] = 'municipalidad/funcionarios';
		$data['titulo'] = 'Municipalidad';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function comisiones() {

		$data['contenido'] = 'municipalidad/comisiones';
		$data['titulo'] = 'Municipalidad';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function vision_mision() {

		$data['contenido'] = 'default/estamos_trabajando';
		$data['titulo'] = 'Municipalidad';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}



}
