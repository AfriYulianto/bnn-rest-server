<?php

class Kelurahan_model extends CI_Model
{
    public function getKelurahan($id_kelurahan = null)
    {
        if ($id_kelurahan == null) {
            return $this->db->get('tb_kelurahan')->result_array();
        } else {
            return $this->db->get_where('tb_kelurahan', ['id_kelurahan' => $id_kelurahan])->result_array();
        }
    }

    public function deleteKelurahan($id_kelurahan)
    {
        $this->db->delete('tb_kelurahan', ['id_kelurahan' => $id_kelurahan]);
        return $this->db->affected_rows();
    }

    public function createKelurahan($data)
    {
        $this->db->insert('tb_kelurahan', $data);
        return $this->db->affected_rows();
    }

    public function updateKelurahan($data, $id_kelurahan)
    {
        $this->db->update('tb_kelurahan', $data, ['id_kelurahan' => $id_kelurahan]);
        return $this->db->affected_rows();
    }
}
