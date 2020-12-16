<?php

class Surat_selesai_model extends CI_Model
{
    public function getSurat_selesai($id_surat = null)
    {
        if ($id_surat == null) {
            return $this->db->get('tb_surat_selesai')->result_array();
        } else {
            return $this->db->get_where('tb_surat_selesai', ['id_surat' => $id_surat])->result_array();
        }
    }

    public function deleteSurat_selesai($id_surat)
    {
        $this->db->delete('tb_surat_selesai', ['id_surat' => $id_surat]);
        return $this->db->affected_rows();
    }

    public function createSurat_selesai($data)
    {
        $this->db->insert('tb_surat_selesai', $data);
        return $this->db->affected_rows();
    }

    public function updateSurat_selesai($data, $id_surat)
    {
        $this->db->update('tb_surat_selesai', $data, ['id_surat' => $id_surat]);
        return $this->db->affected_rows();
    }
}
