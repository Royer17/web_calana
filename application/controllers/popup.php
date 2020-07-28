 <?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include_once (dirname(__FILE__) . "/check_authentication_controller.php");

class Popup extends Check_Authentication_Controller {
	// Constructor de la clase
	function __construct() {
		parent::__construct();

		$this->load->model('Model_Popup');
		
		//$this->form_validation->set_message('required', 'Debe ingresar campo %s');
        //$this->form_validation->set_message('valid_email', 'Campo %s no es un eMail valido');
 		// $this->form_validation->set_message('my_validation', 'Existe otro registro con el mismo nombre');
		$this->data = $this->validate_session('popup', 
			['index', 'create', 'insert', 'edit', 'update', 'delete']);
    }

	public function index() {
		$this->data['contenido'] = 'popup/index';
		$this->data['titulo'] = 'popup';
		$this->data['query'] = $this->Model_Popup->all();
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function inicio() {
		$this->data['contenido'] = 'popup/inicio';
		$this->data['query9'] = $this->Model_Popup->cinco_ultimos();
		$this->load->view('ssadmin/head', $this->data);

		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('inicio', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function modal_popup() {
		$this->data['contenido'] = 'popup/inicio';
		$this->data['query10'] = $this->Model_Popup->ultimo();
		$this->load->view('ssadmin/head', $this->data);

		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('inicio', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function detalle($id){
		$data['contenido'] = 'popup/detalle';
		$data['titulo'] = 'Detalles popup';
		$data['registro'] = $this->Model_Popup->find($id);

		$this->load->view('header', $data);
		$this->load->view('template2', $data);
		$this->load->view('footer', $data);	
	}


	public function create(){
		//$id = $this->uri->segment(3);
		$this->data['contenido'] ='popup/create';
		$this->data['titulo'] = 'Crear popup';
		//$this->data['registro'] = $this->Model_Perfil->find($id);
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function edit($id) {
		// $id = $this->uri->segment(3);
		$this->data['contenido'] = 'popup/edit';
		$this->data['titulo'] = 'Actualizar popup';
		$this->data['registro'] = $this->Model_Popup->find($id);
		
		$this->load->view('ssadmin/head', $this->data);
		$this->load->view('ssadmin/template', $this->data);
		$this->load->view('ssadmin/footer', $this->data);	
	}

	public function update() {
		$registro = $this->input->post();
		//$registro = $this->input->post();
		$config['upload_path'] = './img/popup';
		$config['allowed_types'] = 'gif|jpg|png';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		

		$id = $this->input->post('id_popup');
		$this->load->library('upload', $config);
		$file = $_FILES['img_popup'];
		
		if( $file["name"] != "" ){
    		if ( ! $this->upload->do_upload('img_popup') )
    		{
    			$this->data = array('error' => $this->upload->display_errors());
    			$this->data['contenido'] = 'popup/edit';
    			//$this->data['titulo'] = 'popup';
    			$this->data['registro'] = $this->Model_Popup->find($id);
    
    			$this->load->view('template3', $this->data);
    
    			return var_dump("Error: " . $this->upload->display_errors());
    		}	
    		else
    		{
    			$datos_archivo = array('upload_data' => $this->upload->data())["upload_data"];
    			//$datos_archivo=$this->upload->get_multi_upload_data();
    
    			$registro['img_popup'] =  isset($datos_archivo) ? $datos_archivo['file_name'] : '';
    		}
    		
    	}
    	
    			//$this->load->view('upload_success', $this->data);	
    			$this->Model_Popup->update($registro);
    			//return var_dump($registro);
    			redirect('popup/index');
		
	}


	public function delete($id) {
		$this->Model_Popup->delete($id);
		redirect('popup/index');
	}



	public function insert() {

		
		$config['upload_path'] = './img/popup';//ruta donde se guarda la imagen
		$config['allowed_types'] = 'gif|jpg|png|pdf'; //tipo de archivos aceptados
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';
		
		$this->load->library('upload', $config); //carga la libreria 
	
		if ( ! $this->upload->do_multi_upload('userfile'))  // se llama a la funcion "do_multi_upload" de la libreria upload
		{
			$this->data = array('error' => $this->upload->display_errors());

			$this->data['contenido'] ='popup/create';
			$this->data['titulo'] = 'Crear popup';
			$this->load->view('template3', $this->data);
		}	
		else
		{
			$datos_archivo=$this->upload->get_multi_upload_data();

			$registro=array(
					'enlace'=>$this->input->post('enlace'),				
					'visible'=>$this->input->post('visible'),
									
					'img_popup'=>isset($datos_archivo[0])?$datos_archivo[0]['file_name']:'',
				
				);
			$this->Model_Popup->insert($registro);
			redirect('popup/index');
			//$this->load->view('upload_success', $this->data);
		}	
       
	}

}
