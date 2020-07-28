<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Evento extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
  

        $this->db->order_by('id_evento','desc');
        $query = $this->db->get('evento');
        return $resultado = $query->result();

    }

    function cinco_ultimos() {
        $this->db->select('*');
        $this->db->from('evento');
        $this->db->order_by('id_evento','desc');
        $this->db->limit(5);
        $query=$this->db->get();
        return $query->result();
       // return $this->db->get('evento')->row();
    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('evento');
        if ($query->result()>0) {
            return $query->result();
        }else{
            return FALSE ; 
        }    
    }

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('evento');
        if ($query->result()>0) {
            return $query->num_rows();
        }else{
            return FALSE ;
        }
    }

    function find($id) {
        $this->db->where('id_evento', $id);
        return $this->db->get('evento')->row();
    }

    function insert($registro) {
        $this->db->set($registro);
        $this->db->insert('evento');
    }

    function update($registro) {
        $this->db->set($registro);
        $this->db->where('id_evento', $registro['id_evento']);
        $this->db->update('evento');
    }

    function delete($id) {
        $this->db->where('id_evento', $id);
        $this->db->delete('evento');
    }

}
