<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');


require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Kecamatan extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Kecamatan_model', 'kecamatan');
        $this->methods['index_get']['limit'] = 10;
        $this->methods['index_delete']['limit'] = 10;
        $this->methods['index_post']['limit'] = 10;
        $this->methods['index_put']['limit'] = 10;
    }

    public function index_get()
    {
        $id_kecamatan = $this->get('id_kecamatan');
        if ($id_kecamatan == null) {
            $kecamatan = $this->kecamatan->getKecamatan();
        } else {
            $kecamatan = $this->kecamatan->getKecamatan($id_kecamatan);
        }


        if ($kecamatan) {
            $this->set_response([
                'status' => true,
                'data' => $kecamatan
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
        $id_kecamatan = $this->delete('id_kecamatan');
        if ($id_kecamatan == null) {
            $this->set_response([
                'status' => false,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->kecamatan->deleteKecamatan($id_kecamatan) > 0) {
                //ok
                $this->set_response([
                    'status' => true,
                    'id' => $id_kecamatan,
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
            'kecamatan' => $this->post('kecamatan')
        ];

        if ($this->kecamatan->createKecamatan($data) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'new kecamatan has been created'
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
        $id_kecamatan = $this->put('id_kecamatan');
        $data = [
            'kecamatan' => $this->put('kecamatan')
        ];

        if ($this->kecamatan->updateKecamatan($data, $id_kecamatan) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'data kecamatan has been updated'
            ], REST_Controller::HTTP_NO_CONTENT);
        } else {
            $this->set_response([
                'status' => false,
                'message' => 'failed to update data'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
