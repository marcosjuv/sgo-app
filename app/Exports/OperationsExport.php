<?php

namespace App\Exports;

use App\Models\Operation;
// use Illuminate\Support\Facades\DB;

use PhpOffice\PhpSpreadsheet\Shared\Date;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithDrawings;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class OperationsExport implements FromQuery, WithDrawings, WithHeadings, WithMapping, WithColumnWidths, WithColumnFormatting, WithStyles
{
    use Exportable;
    public function map($row): array
    {
        return [           
            $row->custom->name,
            $row->file,
            $row->client->name,
            $row->customs_presentation,
            $row->dispatcher,
            $row->bill,
            $row->merchandise_description,
            $row->transport_vehicle,
            $row->null,
            $row->comment,
        ];
    }

    public function query(){
	    $this->headings();
        $this->columnFormats();
   		$this->columnWidths(); 
        $this->drawings();
        return Operation::query()->where('status','=',1);
    }

 

    public function drawings(){
        $drawing = new Drawing();
        $drawing->setName('Logo');
        $drawing->setDescription('Aduanera del zulia');
        $drawing->setPath(public_path('../recursos/logo_azuca.jpg'));
        $drawing->setHeight(90);
        $drawing->setCoordinates('A1');

        return $drawing;
    }

    public function headings(): array
    {
        return [        
        	['REPORTE DE GESTION DIARIA'],
            [''],
            ['ADUANA',
            'EXP',
            'CLIENTE',
            'FECHA PRESENTACION',
            'FECHA DESPACHO',
            'FACTURA',
            'PRODUCTO',
            'TRANSPORTE',
            'CARROS',
            'OBSERVACION']
        ];
    }

    public function columnWidths(): array
    {
        return [
            'A' => 27,
            'B' => 15,            
            'C' => 40,            
            'D' => 20,            
            'E' => 20,            
            'F' => 20,            
            'G' => 20,            
            'H' => 20,            
            'I' => 20,            
            'J' => 20,            
            'K' => 20,            
        ];
    }

     public function columnFormats(): array
    {
        return [
            'D' =>  NumberFormat::FORMAT_DATE_DDMMYYYY,
        ];
    }

    // public function insertRow(Spreadsheet $spreadsheet)
    // {
        // $spreadsheet = new Spreadsheet();
    //     return $spreadsheet->getActiveSheet()->insertNewRowBefore(1, 8);
    // }

     public function styles(Worksheet $sheet)
    {        
        return [
            // Style the first row as bold text.
            1    => ['font' => ['bold' => true]],
            2    => ['font' => ['bold' => true]],
           
            // Styling a specific cell by coordinate.
            // 'B2' => ['font' => ['italic' => true]],
            'A1' => ['font' => ['size' => 16]],
            'A2:J2' => ['font' => ['size' => 12]],

            // Styling an entire column.
            // 'C'  => ['font' => ['size' => 16]],
        ];
    }
}