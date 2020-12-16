<?php

class Pecandu_model extends CI_Model
{
    public function getPecandu($id_pecandu = null)
    {
        if ($id_pecandu == null) {
            return $this->db->get('tb_pecandu')->result_array();
        } else {
            return $this->db->get_where('tb_pecandu', ['id_pecandu' => $id_pecandu])->result_array();
        }
    }

    public function deletePecandu($id_pecandu)
    {
        $this->db->delete('tb_pecandu', ['id_pecandu' => $id_pecandu]);
        return $this->db->affected_rows();
    }

    public function createPecandu($data)
    {
        $this->db->insert('tb_pecandu', $data);
        return $this->db->affected_rows();
    }

    public function updatePecandu($data, $id_pecandu)
    {
        $this->db->update('tb_pecandu', $data, ['id_pecandu' => $id_pecandu]);
        return $this->db->affected_rows();
    }
}
