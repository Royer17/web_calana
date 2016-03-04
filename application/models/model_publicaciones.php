<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Publicaciones extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
        $query = $this->db->get('norma');
    
        return $query->result();

        $this->db->order_by('norma.fechaemi','desc');

    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('norma');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('norma');
        if ($query->result()>0) {
            return $query->num_rows();
        }else{
            return FALSE ; 
        }
    }

    function find($idnor) {
        $this->db->where('idnor', $idnor);
        return $this->db->get('norma')->row();
    }

    function insert($registro) {
        $this->db->set($registro);
        $this->db->insert('norma');
    }


    function update($registro) {
        $this->db->set($registro);
        $this->db->where('idnor', $registro['idnor']);
        $this->db->update('norma');
    }

    function delete($idnor) {
        $this->db->where('idnor', $idnor);
        $this->db->delete('norma');
    }

    function acuerdos() {
        $this->db->like('tipodocu', 'acuerdo de concejo');
        $query = $this->db->get('norma');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }


    function Ordenanzas() {
        $this->db->like('tipodocu', 'Ordenanza Municipal');
        $query = $this->db->get('norma');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }   



    function resoluciones_alcaldia() {
        $this->db->like('tipodocu', 'resolucion de alcaldia');
        $query = $this->db->get('norma');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }


    function resoluciones_gerencia_municipal() {
        $this->db->like('tipodocu', 'resolucion de gerencia municipal');
        $query = $this->db->get('norma');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }


    function decreto_alcaldia() {
        $this->db->like('tipodocu', 'decreto alcaldia');
        $query = $this->db->get('norma');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }


}
