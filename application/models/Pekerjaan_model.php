<?php

class Pekerjaan_model extends CI_Model
{
    public function getPekerjaan($id_pekerjaan = null)
    {
        if ($id_pekerjaan == null) {
            return $this->db->get('tb_pekerjaan')->result_array();
        } else {
            return $this->db->get_where('tb_pekerjaan', ['id_pekerjaan' => $id_pekerjaan])->result_array();
        }
    }

    public function deletePekerjaan($id_pekerjaan)
    {
        $this->db->delete('tb_pekerjaan', ['id_pekerjaan' => $id_pekerjaan]);
        return $this->db->affected_rows();
    }

    public function createPekerjaan($data)
    {
        $this->db->insert('tb_pekerjaan', $data);
        return $this->db->affected_rows();
    }

    public function updatePekerjaan($data, $id_pekerjaan)
    {
        $this->db->update('tb_pekerjaan', $data, ['id_pekerjaan' => $id_pekerjaan]);
        return $this->db->affected_rows();
    }
}
