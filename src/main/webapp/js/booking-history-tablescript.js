$(document).ready(function() {
    $('#example').DataTable({
      "bLengthChange": false,
      "pageLength" : 7, 
      "columnDefs": [
        { "orderable": false, "targets": 5 }
      ],
      language: {
        'paginate': {
          'previous': '<span>Previous </span>',
          'next': '<span>Next</span>'
        }
      }
    })  
} );

