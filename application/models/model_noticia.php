<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Noticia extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function all() {
        $this->db->order_by('dt_fecha_informacion','desc');
        $query = $this->db->get('info_informacion');
        return $resultado = $query->result();
    }    

    function all2() {
      
        $this->db->select('*');
        $this->db->from('info_informacion');
        $this->db->order_by('in_id_informacion','desc');
       
        $query=$this->db->get();
        return $resultado =$query->result();
    }

    function allFiltered($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('info_informacion');
        if ($query->result()>0) {
            return $resultado = $query->result();
        }else{
            return FALSE ;
        }
    }

    function cinco_ultimos() {
        $this->db->select('*');
        $this->db->from('info_informacion');
        $this->db->order_by('dt_fecha_informacion','desc');
        $this->db->limit(3);
        $query=$this->db->get();
        return $resultado =$query->result();
       // return $this->db->get('info_informacion')->row();
    }

   /* $sel = "SELECT * FROM usuarios LIMIT 3";
    $query = mysql_query($sel) or die(mysql_error());
    while ($row = mysql_fetch_assoc($query) {
    echo $row['nick'];
    }
    */

    function totalResultados($field, $value) {
        $this->db->like($field, $value);
        $query = $this->db->get('info_informacion');
        if ($query->result()>0) {
            return $resultado =$query->num_rows();
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
