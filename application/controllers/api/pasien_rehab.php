<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');


require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Pasien_rehab extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pasien_rehab_model', 'pasien_rehab');
        $this->methods['index_get']['limit'] = 10;
        $this->methods['index_delete']['limit'] = 10;
        $this->methods['index_post']['limit'] = 10;
        $this->methods['index_put']['limit'] = 10;
    }

    public function index_get()
    {
        $id_pasien_rehab = $this->get('id_pasien_rehab');
        if ($id_pasien_rehab == null) {
            $pasien_rehab = $this->pasien_rehab->getPasien_rehab();
        } else {
            $pasien_rehab = $this->pasien_rehab->getPasien_rehab($id_pasien_rehab);
        }


        if ($pasien_rehab) {
            $this->set_response([
                'status' => true,
                'data' => $pasien_rehab
            ], REST_Controller::HTTP_OK);
        } else {
            $this->set_response([
                'status' => false,
                'message' => 'id not found'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function index_delete()
    {
        $id_pasien_rehab = $this->delete('id_pasien_rehab');
        if ($id_pasien_rehab == null) {
            $this->set_response([
                'status' => false,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->pasien_rehab->deletePasien_rehab($id_pasien_rehab) > 0) {
                //ok
                $this->set_response([
                    'status' => true,
                    'id' => $id_pasien_rehab,
                    'message' => 'deleted'
                ], REST_Controller::HTTP_NO_CONTENT);
            } else {
                //id not found
                $this->set_response([
                    'status' => false,
                    'message' => 'id not found'
                ], REST_Controller::HTTP_BAD_REQUEST);
            }
        }
    }

    public function index_post()
    {
        $data = [
            'id_kelurahan' => $this->post('id_kelurahan'),
            'id_kecamatan' => $this->post('id_kecamatan'),
            'id_pekerjaan' => $this->post('id_pekerjaan'),
            'tanggal_lahir' => $this->post('tanggal_lahir'),
            'tempat_rehab' => $this->post('tempat_rehab'),
            'lama_rehab' => $this->post('lama_rehab'),
            'surat_selesai' => $this->post('surat_selesai'),
            'tahun' => $this->post('tahun')
        ];

        if ($this->pasien_rehab->createPasien_rehab($data) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'new pasien rehabilitasi has been created'
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->set_response([
                'status' => false,
                'message' => 'failed to create new data'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

    public function index_put()
    {
        $id_pasien_rehab = $this->put('id_pasien_rehab');
        $data = [
            'id_kelurahan' => $this->put('id_kelurahan'),
            'id_kecamatan' => $this->put('id_kecamatan'),
            'id_pekerjaan' => $this->put('id_pekerjaan'),
            'tanggal_lahir' => $this->put('tanggal_lahir'),
            'tempat_rehab' => $this->put('tempat_rehab'),
            'lama_rehab' => $this->put('lama_rehab'),
            'surat_selesai' => $this->put('surat_selesai'),
            'tahun' => $this->put('tahun')
        ];

        if ($this->pasien_rehab->updatePasien_rehab($data, $id_pasien_rehab) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'data pasien rehabilitasi has been updated'
            ], REST_Controller::HTTP_NO_CONTENT);
        } else {
            $this->set_response([
                'status' => false,
                'message' => 'failed to update data'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
