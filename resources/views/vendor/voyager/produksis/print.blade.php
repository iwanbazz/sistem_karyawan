<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $title }}</title>
</head>
<body>
    <div>
        <table>
            <tbody>
                <tr>
                    <td>{{ $produksi->id }}</td>
                </tr>
                <tr>
                    <td>{{ $produksi->nama }}</td>
                </tr>
                <tr>
                    <td>{{ $produksi->model_mesin }}</td>
                </tr>
                <tr>
                    <td>{{ $produksi->nomor_series }}</td>
                </tr>
                <tr>
                    <td>{{ $produksi->laporan_kerusakan }}</td>
                </tr>
                <tr>
                    <td>{{ $produksi->sparepart_yang_diganti }}</td>
                </tr>
                <tr>
                    <td>{{ $produksi->status }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>