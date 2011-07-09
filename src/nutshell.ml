open Lwt

open HTML5.M  
open Eliom_output.Html5


(* home related containers ***************************************************************)

let app_home content = 
  [ 
    div ~a:[ a_id "container" ]
      [
	div ~a:[ a_id "main" ] content; 
	div ~a:[ a_id "footer" ] []
      ]
  ]

let home content =  
  return 
    (html 
       (head (title (pcdata "Best Picture of the day")) 
	  [
	    link ~rel:[ `Stylesheet ] ~href:(HTML5.M.uri_of_string "/css/common.css") ();
	  (* link ~rel:[ `Stylesheet ] ~href:(HTML5.M.uri_of_string "http://fonts.googleapis.com/css?family=Josefin+Sans") (); *)
	  ])
       (body (app_home content)))
