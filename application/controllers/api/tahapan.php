<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');


require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Tahapan extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Tahapan_model', 'tahapan');
        $this->methods['index_get']['limit'] = 10;
        $this->methods['index_delete']['limit'] = 10;
        $this->methods['index_post']['limit'] = 10;
        $this->methods['index_put']['limit'] = 10;
    }

    public function index_get()
    {
        $id_tahapan = $this->get('id_tahapan');
        if ($id_tahapan == null) {
            $tahapan = $this->tahapan->getTahapan();
        } else {
            $tahapan = $this->tahapan->getTahapan($id_tahapan);
        }


        if ($tahapan) {
            $this->set_response([
                'status' => true,
                'data' => $tahapan
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
        $id_tahapan = $this->delete('id_tahapan');
        if ($id_tahapan == null) {
            $this->set_response([
                'status' => false,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->tahapan->deleteTahapan($id_tahapan) > 0) {
                //ok
                $this->set_response([
                    'status' => true,
                    'id' => $id_tahapan,
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
            'tahapan' => $this->post('tahapan')
        ];

        if ($this->tahapan->createTahapan($data) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'new tahapan has been created'
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
        $id_tahapan = $this->put('id_tahapan');
        $data = [
            'tahapan' => $this->put('tahapan')
        ];

        if ($this->tahapan->updateTahapan($data, $id_tahapan) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'data tahapan has been updated'
            ], REST_Controller::HTTP_NO_CONTENT);
        } else {
            $this->set_response([
                'status' => false,
                'message' => 'failed to update data'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
