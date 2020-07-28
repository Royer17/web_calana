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

    function update($registro,$where) {

        $this->db->where($where);
        $this->db->update('obra',$registro);
        return TRUE;
    }

    function delete($id) {
        $this->db->where('id', $id);
        $this->db->delete('obra');

    }

    function capturarImagen($id){
        $this->db->select("foto");
        $this->db->where("id", $id);
        $this->db->from("obra");
        $resultado = $this->db->get();
        return $resultado->row();
    }

    function actualizar($id,$registro){
        $this->db->where('id', $id);
        $this->db->update('obra', $registro); 
        if ($this->db->affected_rows() > 0) {
            return true;
        }
        else{
            return false;
        }
    }


}
