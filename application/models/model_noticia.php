<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Noticia extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
        $query = $this->db->get('info_informacion');
        return $query->result();
    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('info_informacion');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('info_informacion');
        if ($query->result()>0) {
            return $query->num_rows();
        }else{
            return FALSE ; 
        }
    }

    function find($id) {
        $this->db->where('in_id_informacion', $id);
        return $this->db->get('info_informacion')->row();
    }

    function insert($registro) {
        $this->db->set($registro);
        $this->db->insert('info_informacion');
    }

    function update($registro) {
        $this->db->set($registro);
        $this->db->where('in_id_informacion', $registro['in_id_informacion']);
        $this->db->update('info_informacion');
    }

    function delete($id) {
        $this->db->where('in_id_informacion', $id);
        $this->db->delete('info_informacion');
    }

}
