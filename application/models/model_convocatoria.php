<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Convocatoria extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
        $this->db->order_by('idnoti','desc');
        $query = $this->db->get('mw_convoca');
     

        return $query->result();

        

    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('mw_convoca');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('mw_convoca');
        if ($query->result()>0) {
            return $query->num_rows();
        }else{
            return FALSE ; 
        }
    }

    function find($id) {
        $this->db->where('idnoti', $id);
        return $this->db->get('mw_convoca')->row();
    }

    function insert($registro) {
        $this->db->set($registro);
        $this->db->insert('mw_convoca');
    }


    function update($registro) {
        $this->db->set($registro);
        $this->db->where('idnoti', $registro['idnoti']);
        $this->db->update('mw_convoca');
    }

    function delete($id) {
        $this->db->where('idnoti', $id);
        $this->db->delete('mw_convoca');
    }

}
