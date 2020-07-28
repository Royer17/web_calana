<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Distrito extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function historia() {

		$data['contenido'] = 'distrito/historia';
		$data['titulo'] = 'Distrito';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}
	

}
