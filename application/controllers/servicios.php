<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Servicios extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function seguridad_ciudadana() {

		$data['contenido'] = 'servicios/seguridadciudadana';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('layout_index/head');
		$this->load->view('layout_index/header');
		$this->load->view('layout_index/navbar');
		$this->load->view('inicio2',$data);
		$this->load->view('layout_index/footer');
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
