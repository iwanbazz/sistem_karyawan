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
                    <td>{{ $service->id }}</td>
                </tr>
                <tr>
                    <td>{{ $service->nama }}</td>
                </tr>
                <tr>
                    <td>{{ $service->pelanggan }}</td>
                </tr>
                <tr>
                    <td>{{ $service->alamat }}</td>
                </tr>
                <tr>
                    <td>{{ $service->model_mesin }}</td>
                </tr>
                <tr>
                    <td>{{ $service->nomor_series }}</td>
                </tr>
                <tr>
                    <td>{{ $service->laporan_kerusakan }}</td>
                </tr>
                <tr>
                    <td>{{ $service->sparepart_yang_diganti }}</td>
                </tr>
                <tr>
                    <td>{{ $service->status }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>