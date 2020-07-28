<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Servicios extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function seguridadciudadana() {

		$data['contenido'] = 'servicios/seguridadciudadana';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}	

	public function equipomec() {

		$data['contenido'] = 'servicios/equipomec';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}	

	public function desarrollo_agropecuario() {

		$data['contenido'] = 'servicios/desarrollo_agropecuario';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}	

	public function sci() {

		$data['contenido'] = 'servicios/sci';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function codisec() {

		$data['contenido'] = 'servicios/codisec';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function transferencia() {

		$data['contenido'] = 'servicios/transferencia';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('home/header1', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function itse() {

		$data['contenido'] = 'servicios/itse';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}


	public function vasoleche() {

		$data['contenido'] = 'servicios/vasoleche';
		$data['titulo'] = 'Servicios';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}



	public function demuna() {

		$data['contenido'] = 'servicios/demuna';
		$data['titulo'] = 'demuna';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function deportes() {

		$data['contenido'] = 'servicios/deportes';
		$data['titulo'] = 'sisfoh';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function defensacivil() {

		$data['contenido'] = 'servicios/defensacivil';
		$data['titulo'] = 'omaped';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function registrocivil() {

		$data['contenido'] = 'servicios/registrocivil';
		$data['titulo'] = 'omaped';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}	

	public function sisfoh() {

		$data['contenido'] = 'servicios/sisfoh';
		$data['titulo'] = 'omaped';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}


}
