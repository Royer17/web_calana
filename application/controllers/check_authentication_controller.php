<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Check_Authentication_Controller extends CI_Controller {	// Constructor de la clase
	function __construct() {
		parent::__construct();

    }  

    private function getURLS($controller='',$views=[]){
    	if( in_array('index', $views) ){
    		$views[] = '';
    	}
    	$urls = [];
    	for( $i = 0; $i < count($views); $i++){
    		$urls[] = base_url($controller . '/'. $views[$i]);
    	}
    	return $urls;
    }

    private function url_in_urls($url, $urls){
    	$encontrado = false;
    	for( $i = 0; ($i < count($urls)) && !$encontrado; $i++){
    		if( strpos($url, $urls[$i]) === 0 ){
    			$encontrado = true;
    		}
    	}
    	return $encontrado;
    }

    public function validate_session($controller='',$protect_views=[]){
    	$urls_protegidas = $this->getURLs($controller, $protect_views);
		$this->load->helper('url');
		$data = [];
		if( base_url('ssadmin/login') != current_url()){
			if( $this->url_in_urls(current_url(), $urls_protegidas) ){
				$sess_id = $this->session->userdata('usuario_id');

			    if(empty($sess_id))
			        redirect(site_url().'ssadmin/login');

			    $data['is_admin'] = $this->session->userdata('perfil_id') == 1;
			    $data['is_secretaria_municipal'] = $this->session->userdata('perfil_id') == 9;
			    $data['is_imagen_institucional'] = $this->session->userdata('perfil_id') == 18;      
                $data['is_personal'] = $this->session->userdata('perfil_id') == 20;
			}		
		}
		return $data;
    }

	public function loadSsAdminViews(){
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template',$this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}
}