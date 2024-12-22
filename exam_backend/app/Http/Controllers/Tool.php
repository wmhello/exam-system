<?php


namespace App\Http\Controllers;


trait Tool
{
    public function success()
    {
        return response()->json([
            'status' => 'success',
            'status_code' => 200
        ], 200);
    }

    public function successWithInfo($msg = '操作成功', $code = 200)
    {
        return response()->json([
            'info' => $msg,
            'status' => 'success',
            'status_code' => $code
        ], $code);
    }

    public function successWithData($data = [], $code = 200)
    {
        return response()->json([
           'data' => $data,
           'status' => 'success',
           'status_code' => $code
        ], $code);
    }

    public function error()
    {
        return response()->json([
            'status' => 'error',
            'status_code' => 404
        ], 404);
    }

    public function errorWithInfo($msg = '操作失败', $code = 404)
    {
        return response()->json([
            'info' => $msg,
            'status' => 'error',
            'status_code' => $code
        ], $code);
    }

    public function errorWithData($data = [], $code = 404)
    {
        return response()->json([
            'data' => $data,
            'status' => 'error',
            'status_code' => $code
        ], $code);
    }
}
