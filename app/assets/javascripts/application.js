// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .


function cotiza() {
    
    var clase = document.getElementById('coche_clase').value
    var subtipo = document.getElementById('coche_subtipo').value
    
    window.open('/rates/cotizacion?clase=' + clase + "&subtipo=" + subtipo ,'nueva','top=100,left=100,width=400,height=300,status=yes,scrollbars=yes')

    console.log('envio')
    
}