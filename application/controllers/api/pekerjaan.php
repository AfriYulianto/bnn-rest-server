<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');


require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Pekerjaan extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pekerjaan_model', 'pekerjaan');
        $this->methods['index_get']['limit'] = 10;
        $this->methods['index_delete']['limit'] = 10;
        $this->methods['index_post']['limit'] = 10;
        $this->methods['index_put']['limit'] = 10;
    }

    public function index_get()
    {
        $id_pekerjaan = $this->get('id_pekerjaan');
        if ($id_pekerjaan == null) {
            $pekerjaan = $this->pekerjaan->getPekerjaan();
        } else {
            $pekerjaan = $this->pekerjaan->getPekerjaan($id_pekerjaan);
        }


        if ($pekerjaan) {
            $this->set_response([
                'status' => true,
                'data' => $pekerjaan
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
        $id_pekerjaan = $this->delete('id_pekerjaan');
        if ($id_pekerjaan == null) {
            $this->set_response([
                'status' => false,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->pekerjaan->deletePekerjaan($id_pekerjaan) > 0) {
                //ok
                $this->set_response([
                    'status' => true,
                    'id' => $id_pekerjaan,
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
            'pekerjaan' => $this->post('pekerjaan')
        ];

        if ($this->pekerjaan->createPekerjaan($data) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'new pekerjaan has been created'
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
        $id_pekerjaan = $this->put('id_pekerjaan');
        $data = [
            'pekerjaan' => $this->put('pekerjaan')
        ];

        if ($this->pekerjaan->updatePekerjaan($data, $id_pekerjaan) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'data pekerjaan has been updated'
            ], REST_Controller::HTTP_NO_CONTENT);
        } else {
            $this->set_response([
                'status' => false,
                'message' => 'failed to update data'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
