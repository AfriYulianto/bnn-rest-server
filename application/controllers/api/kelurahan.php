<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');


require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Kelurahan extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Kelurahan_model', 'kelurahan');
        $this->methods['index_get']['limit'] = 10;
        $this->methods['index_delete']['limit'] = 10;
        $this->methods['index_post']['limit'] = 10;
        $this->methods['index_put']['limit'] = 10;
    }

    public function index_get()
    {
        $id_kelurahan = $this->get('id_kelurahan');
        if ($id_kelurahan == null) {
            $kelurahan = $this->kelurahan->getKelurahan();
        } else {
            $kelurahan = $this->kelurahan->getKelurahan($id_kelurahan);
        }


        if ($kelurahan) {
            $this->set_response([
                'status' => true,
                'data' => $kelurahan
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
        $id_kelurahan = $this->delete('id_kelurahan');
        if ($id_kelurahan == null) {
            $this->set_response([
                'status' => false,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->kelurahan->deleteKelurahan($id_kelurahan) > 0) {
                //ok
                $this->set_response([
                    'status' => true,
                    'id' => $id_kelurahan,
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
            'id_kecamatan' => $this->post('id_kecamatan'),
            'kelurahan' => $this->post('kelurahan')
        ];

        if ($this->kelurahan->createKelurahan($data) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'new kelurahan has been created'
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
        $id_kelurahan = $this->put('id_kelurahan');
        $data = [
            'id_kecamatan' => $this->put('id_kecamatan'),
            'kelurahan' => $this->put('kelurahan')
        ];

        if ($this->kelurahan->updateKelurahan($data, $id_kelurahan) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'data kelurahan has been updated'
            ], REST_Controller::HTTP_NO_CONTENT);
        } else {
            $this->set_response([
                'status' => false,
                'message' => 'failed to update data'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
