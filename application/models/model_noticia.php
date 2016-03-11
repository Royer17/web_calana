<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Noticia extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
        $this->db->order_by('in_id_informacion','desc');
        $llave = $this->db->get('info_informacion');
        return $llave->result();
    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $llave = $this->db->get('info_informacion');
        if ($llave->result()>0) {
            return $llave->result();
        }else{
            return FALSE ; 
        }    
    }

    function cinco_ultimos() {
        $this->db->select('*');
        $this->db->from('info_informacion');
        $this->db->order_by('in_id_informacion','desc');
        $this->db->limit(5);
        $llave=$this->db->get();
        return $llave->result();
       // return $this->db->get('info_informacion')->row();
    }

   /* $sel = "SELECT * FROM usuarios LIMIT 3";
    $llave = mysql_llave($sel) or die(mysql_error());
    while ($row = mysql_fetch_assoc($llave) {
    echo $row['nick'];
    }
    */

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $llave = $this->db->get('info_informacion');
        if ($llave->result()>0) {
            return $llave->num_rows();
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





