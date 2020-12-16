<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');


require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Pecandu extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pecandu_model', 'pecandu');
        $this->methods['index_get']['limit'] = 10;
        $this->methods['index_delete']['limit'] = 10;
        $this->methods['index_post']['limit'] = 10;
        $this->methods['index_put']['limit'] = 10;
    }

    public function index_get()
    {
        $id_pecandu = $this->get('id_pecandu');
        if ($id_pecandu == null) {
            $pecandu = $this->pecandu->getPecandu();
        } else {
            $pecandu = $this->pecandu->getPecandu($id_pecandu);
        }


        if ($pecandu) {
            $this->set_response([
                'status' => true,
                'data' => $pecandu
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
        $id_pecandu = $this->delete('id_pecandu');
        if ($id_pecandu == null) {
            $this->set_response([
                'status' => false,
                'message' => 'provide an id'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->pecandu->deletePecandu($id_pecandu) > 0) {
                //ok
                $this->set_response([
                    'status' => true,
                    'id' => $id_pecandu,
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
            'jenis_kelamin' => $this->post('jenis_kelamin'),
            'usia' => $this->post('usia'),
            'id_pekerjaan' => $this->post('id_pekerjaan'),
            'alamat' => $this->post('alamat'),
            'id_kelurahan' => $this->post('id_kelurahan'),
            'id_kecamatan' => $this->post('id_kecamatan'),
            'jenis_narkoba' => $this->post('jenis_narkoba'),
            'id_tahapan' => $this->post('id_tahapan'),
            'lembaga_rehab' => $this->post('lembaga_rehab'),
            'tahun' => $this->post('tahun')
        ];

        if ($this->pecandu->createPecandu($data) > 0) {
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
        $id_pecandu = $this->put('id_pecandu');
        $data = [
            'jenis_kelamin' => $this->put('jenis_kelamin'),
            'usia' => $this->put('usia'),
            'id_pekerjaan' => $this->put('id_pekerjaan'),
            'alamat' => $this->put('alamat'),
            'id_kelurahan' => $this->put('id_kelurahan'),
            'id_kecamatan' => $this->put('id_kecamatan'),
            'jenis_narkoba' => $this->put('jenis_narkoba'),
            'id_tahapan' => $this->put('id_tahapan'),
            'lembaga_rehab' => $this->put('lembaga_rehab'),
            'tahun' => $this->put('tahun')
        ];

        if ($this->pecandu->updatePecandu($data, $id_pecandu) > 0) {
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
