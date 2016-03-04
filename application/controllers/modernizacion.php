<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Modernizacion extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function tributos() {

		$data['contenido'] = 'modernizacion/tributos';
		$data['titulo'] = 'Modernizacion';
	
		
		$this->load->view('header', $data);	
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function licencias_edificaciones() {

		$data['contenido'] = 'modernizacion/licencias_edificaciones';
		$data['titulo'] = 'Modernizacion';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function licencias_funcionamiento() {

		$data['contenido'] = 'modernizacion/licencias_funcionamiento';
		$data['titulo'] = 'Modernizacion';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}

	public function reclamaciones() {

		//$data['contenido'] = 'modernizacion/reclamaciones';
		$data['contenido'] = 'default/estamos_trabajando';
		$data['titulo'] = 'Modernizacion';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}






	

}
