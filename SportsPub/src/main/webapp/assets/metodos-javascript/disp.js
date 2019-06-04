$.getScript("assets/js/dashboard.js", function () {
    
});

$(document).ready(function () {
    initializePlugins();
    
    dismissLoader();
    
    table = $('#disptable').DataTable({
        ajax: {
            url: "Bequipos",
            dataSrc: '',
            data: {
                'action': "listarDisponibles",
                'state': "1",
            }
        },
        columns: [
            {data: 'nombre'},
            {data: 'scientific_name'},
            {data: 'lider_equipo'},
            {data: 'tipo de futbol'},
            {data: null}
        ],
        columnDefs: [
            {
                targets: -1,
                data: null,
                defaultContent: '<a style="cursor: pointer; " id="tour_edit"><i class="material-icons" style="font-size:21px">mode_edit</i></a>'
            }
        ],
        language: {
            url: 'https://cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json'
        },
        responsive: true,
        order: [[1, "desc"]]
    });
    
    
});