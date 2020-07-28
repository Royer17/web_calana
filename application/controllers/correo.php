<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Correo extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function index() {

		$data['contenido'] = 'correo/index';
		$data['titulo'] = 'Correo';
	
		
		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}	




}
