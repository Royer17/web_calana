<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Obras extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
        $query = $this->db->get('obra');
        return $query->result();
    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('obra');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('obra');
        if ($query->result()>0) {
            return $query->num_rows();
        }else{
            return FALSE ; 
        }
    }


    function find($id) {
        $this->db->where('id', $id);
        return $this->db->get('obra')->row();
    }

    function insert($registro) {
        $this->db->set($registro);
        $this->db->insert('obra');
    }


    function update($registro) {
        $this->db->set($registro);
        $this->db->where('id', $registro['id']);
        $this->db->update('obra');
    }

    function delete($id) {
        $this->db->where('id', $id);
        $this->db->delete('obra');
    }

}
