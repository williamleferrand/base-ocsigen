open Lwt 

open HTML5.M
open Eliom_output.Html5

module M = 
  Eliom_output.Eliom_appl
    (struct
      open HTML5.M 
      let application_name = "base"
      let params = 
	  { 
          Eliom_output.default_appl_params with 
	      Eliom_output.ap_title = "Ocsigen-base";
	      Eliom_output.ap_headers_before =
            [
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/css/common.css") ();
	        (* link ~rel:[ `Stylesheet ] ~href:(uri_of_string "http://fonts.googleapis.com/css?family=Josefin+Sans") (); *)
	        
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/common.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/button.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/dialog.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/linkbutton.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/menu.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/menuitem.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/menuseparator.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/tab.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/tabbar.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/toolbar.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/colormenubutton.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/palette.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/colorpalette.css") () ;
	        
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/editor/bubble.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/editor/dialog.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/editor/linkdialog.css") () ;
	        link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/closure-library/closure/goog/css/editortoolbar.css") () ;
	        
	        script ~a:[ HTML5.M.a_src (HTML5.M.uri_of_string "/base_oclosure.js") ] (pcdata "")
	      ]}
     end)
    
include M
    
