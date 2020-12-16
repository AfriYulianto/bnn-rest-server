<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');


require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Surat_selesai extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Surat_selesai_model', 'surat_selesai');
        $this->methods['index_get']['limit'] = 10;
        $this->methods['index_delete']['limit'] = 10;
        $this->methods['index_post']['limit'] = 10;
        $this->methods['index_put']['limit'] = 10;
    }

    public function index_get()
    {
        $id_surat = $this->get('id_surat_selesai');
        if ($id_surat == null) {
            $surat_selesai = $this->surat_selesai->getsurat_selesai();
        } else {
            $surat_selesai = $this->surat_selesai->getSurat_selesai($id_surat);
        }


        if ($surat_selesai) {
            $this->set_response([
                'status' => true,
                'data' => $surat_selesai
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
        $id_surat = $this->delete('id_surat');
        if ($id_surat == null) {
            $this->set_response([
                'status' => false,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->surat_selesai->deleteSurat_selesai($id_surat) > 0) {
                //ok
                $this->set_response([
                    'status' => true,
                    'id' => $id_surat,
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
            'surat_selesai' => $this->post('surat_selesai')
        ];

        if ($this->surat_selesai->createSurat_selesai($data) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'new surat selesai has been created'
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
        $id_surat = $this->put('id_surat');
        $data = [
            'surat_selesai' => $this->put('surat_selesai')
        ];

        if ($this->surat_selesai->updateSurat_selesai($data, $id_surat) > 0) {
            $this->set_response([
                'status' => true,
                'message' => 'data surat selesai has been updated'
            ], REST_Controller::HTTP_NO_CONTENT);
        } else {
            $this->set_response([
                'status' => false,
                'message' => 'failed to update data'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
