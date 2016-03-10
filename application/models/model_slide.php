<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Slide extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
        $query = $this->db->get('slide');
        return $query->result();
    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('slide');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('slide');
        if ($query->result()>0) {
            return $query->num_rows();
        }else{
            return FALSE ; 
        }
    }

    function find($id) {
        $this->db->where('id_slide', $id);
        return $this->db->get('slide')->row();
    }

    function insert($registro) {
        $this->db->set($registro);
        $this->db->insert('slide');
    }

    function update($registro) {
        $this->db->set($registro);
        $this->db->where('id_slide', $registro['id_slide']);
        $this->db->update('slide');
    }

    function delete($id) {
        $this->db->where('id_slide', $id);
        $this->db->delete('slide');
    }

}
