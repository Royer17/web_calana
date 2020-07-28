<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Popup extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
  

        $this->db->order_by('id_popup','desc');
        $query = $this->db->get('popup');
        return $resultado = $query->result();

    }

    function cinco_ultimos() {
        $this->db->select('*');
        $this->db->from('popup');
        $this->db->order_by('id_popup','desc');
        $this->db->limit(5);
        $query=$this->db->get();
        return $query->result();
       // return $this->db->get('popup')->row();
    }

    function ultimo() {
        $this->db->select('*');
        $this->db->from('popup');
        $this->db->order_by('id_popup','desc');
        $this->db->limit(1);
        $query=$this->db->get();
        return $query->result();
       // return $this->db->get('popup')->row();
    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('popup');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('popup');
        if ($query->result()>0) {
            return $query->num_rows();
        }else{
            return FALSE ;
        }
    }

    function find($id) {
        $this->db->where('id_popup', $id);
        return $this->db->get('popup')->row();
    }

    function insert($registro) {
        $this->db->set($registro);
        $this->db->insert('popup');
    }

    function update($registro) {
        $this->db->set($registro);
        $this->db->where('id_popup', $registro['id_popup']);
        $this->db->update('popup');
    }

    function delete($id) {
        $this->db->where('id_popup', $id);
        $this->db->delete('popup');
    }

}
