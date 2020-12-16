<?php

class Kecamatan_model extends CI_Model
{
    public function getKecamatan($id_kecamatan = null)
    {
        if ($id_kecamatan == null) {
            return $this->db->get('tb_kecamatan')->result_array();
        } else {
            return $this->db->get_where('tb_kecamatan', ['id_kecamatan' => $id_kecamatan])->result_array();
        }
    }

    public function deleteKecamatan($id_kecamatan)
    {
        $this->db->delete('tb_kecamatan', ['id_kecamatan' => $id_kecamatan]);
        return $this->db->affected_rows();
    }

    public function createKecamatan($data)
    {
        $this->db->insert('tb_kecamatan', $data);
        return $this->db->affected_rows();
    }

    public function updateKecamatan($data, $id_kecamatan)
    {
        $this->db->update('tb_kecamatan', $data, ['id_kecamatan' => $id_kecamatan]);
        return $this->db->affected_rows();
    }
}
