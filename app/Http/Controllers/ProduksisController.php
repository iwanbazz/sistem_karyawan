<?php

namespace App\Http\Controllers;

use App\Produksi;
use App\Http\Controllers\Controller;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;
use Illuminate\Http\Request;

class ProduksisController extends VoyagerBaseController
{
    public function print($id)
    {
        $produksi = Produksi::findOrFail($id);
        $title = "Laporan Produksi ke" . $produksi->id;
        $pdf = \PDF::loadview('vendor.voyager.produksis.print', [
            'produksi' => $produksi, 'title' => $title
        ])
            ->setPaper('a4', 'portrait')
            ->stream($title . ".pdf", array("Attachment" => false));
        return $pdf;
    }
}
