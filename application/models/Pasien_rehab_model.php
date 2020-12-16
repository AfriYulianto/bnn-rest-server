<?php

class Pasien_rehab_model extends CI_Model
{
    public function getPasien_rehab($id_pasien_rehab = null)
    {
        if ($id_pasien_rehab == null) {
            return $this->db->get('tb_pasien_rehab')->result_array();
        } else {
            return $this->db->get_where('tb_pasien_rehab', ['id_pasien_rehab' => $id_pasien_rehab])->result_array();
        }
    }

    public function deletePasien_rehab($id_pasien_rehab)
    {
        $this->db->delete('tb_pasien_rehab', ['id_pasien_rehab' => $id_pasien_rehab]);
        return $this->db->affected_rows();
    }

    public function createPasien_rehab($data)
    {
        $this->db->insert('tb_pasien_rehab', $data);
        return $this->db->affected_rows();
    }

    public function updatePasien_rehab($data, $id_pasien_rehab)
    {
        $this->db->update('tb_pasien_rehab', $data, ['id_pasien_rehab' => $id_pasien_rehab]);
        return $this->db->affected_rows();
    }
}
