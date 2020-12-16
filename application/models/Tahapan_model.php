<?php

class Tahapan_model extends CI_Model
{
    public function getTahapan($id_tahapan = null)
    {
        if ($id_tahapan == null) {
            return $this->db->get('tb_tahapan')->result_array();
        } else {
            return $this->db->get_where('tb_tahapan', ['id_tahapan' => $id_tahapan])->result_array();
        }
    }

    public function deleteTahapan($id_tahapan)
    {
        $this->db->delete('tb_tahapan', ['id_tahapan' => $id_tahapan]);
        return $this->db->affected_rows();
    }

    public function createTahapan($data)
    {
        $this->db->insert('tb_tahapan', $data);
        return $this->db->affected_rows();
    }

    public function updateTahapan($data, $id_tahapan)
    {
        $this->db->update('tb_tahapan', $data, ['id_tahapan' => $id_tahapan]);
        return $this->db->affected_rows();
    }
}
