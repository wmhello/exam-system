<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Test extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $data =  parent::toArray($request);
        $data['start_time'] = $data['start_time'] * 1000;
        $data['end_time'] = $data['end_time'] * 1000;
        return $data;

    }

    public function with($request)
    {
        return [
          "status" => "success",
          "status_code" => 200
        ];
    }
}
