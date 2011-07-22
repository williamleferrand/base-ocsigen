open Lwt

open HTML5.M  
open Eliom_output.Html5

(* home related containers ***************************************************************)

let home content =  
  return
    (html
       (head (title (pcdata "base")) 
        [

          link ~rel:[ `Stylesheet ] ~href:(uri_of_string "/common.css") ();
	   (*

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
	   *)
          script ~a:[ a_src (uri_of_string "/runtime.js") ] (pcdata "") ;
	    script ~a:[ a_src (uri_of_string "/internships_oclosure.js") ] (pcdata "") ;
          
        ]) 
        (body [
          div ~a:[ a_id "header"] [
            span [ pcdata "This is the header" ]
          ];
          div ~a:[ a_id "container"] 
            content;
          div ~a:[ a_id "footer" ] [
            span [ pcdata "This is the Footer" ]
          ];
          div ~a:[ a_id "fb-root" ] []
        ]
      )
    )
