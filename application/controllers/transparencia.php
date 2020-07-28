<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Transparencia extends CI_Controller {

	// Constructor de Clase
	function __construct() {
		parent::__construct();

	}

	public function datos_generales() {

		$data['contenido'] = 'transparencia/datos_generales';
		$data['titulo'] = 'transparencia';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}


	public function planeamiento_y_organizacion() {

		$data['contenido'] = 'transparencia/planeamiento_y_organizacion';
		$data['titulo'] = 'transparencia';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}



	public function informacion_presupuestal() {

		$data['contenido'] = 'transparencia/informacion_presupuestal';
		$data['titulo'] = 'informacion_presupuestal';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function proyectos_e_inversiones() {

		$data['contenido'] = 'transparencia/proyectos_e_inversiones';
		$data['titulo'] = 'proyectos_e_inversiones';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function participacion_ciudadana() {

		$data['contenido'] = 'transparencia/participacion_ciudadana';
		$data['titulo'] = 'participacion_ciudadana';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function informacion_de_personal() {

		$data['contenido'] = 'transparencia/informacion_de_personal';
		$data['titulo'] = 'informacion_de_personal';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function informacion_contrataciones() {

		$data['contenido'] = 'transparencia/informacion_contrataciones';
		$data['titulo'] = 'informacion_contrataciones';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function actividades_oficiales() {

		$data['contenido'] = 'transparencia/actividades_oficiales';
		$data['titulo'] = 'actividades_oficiales';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function informacion_adicional() {

		$data['contenido'] = 'transparencia/informacion_adicional';
		$data['titulo'] = 'informacion_adicional';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}

	public function info_obras() {

		$data['contenido'] = 'transparencia/info_obras';
		$data['titulo'] = 'info_obras';
	
		
		$this->load->view('home/header', $data);
		$this->load->view('home/template2', $data);
		$this->load->view('home/footer', $data);	
	}


}
