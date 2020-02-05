<?php

namespace App\Http\Controllers;

use App\Service;
use App\Http\Controllers\Controller;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;
use Illuminate\Http\Request;

class ServicesController extends VoyagerBaseController
{
    public function print($id)
    {
        $service = Service::findOrFail($id);
        $title = "Laporan Servis ke " . $service->id;
        $pdf = \PDF::loadview('vendor.voyager.services.print', [
            'service' => $service, 'title' => $title
        ])
            ->setPaper('a4', 'portrait')
            ->stream($title . ".pdf", array("Attachment" => false));
        return $pdf;
    }
}
