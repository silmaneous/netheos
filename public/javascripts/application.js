// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
    if($('#homesplash').length > 0) {
        $('#homesplash').carousel(1, false, true);
    }
});