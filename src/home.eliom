open Lwt 

open HTML5.M
open Eliom_output.Html5

let home_handler _ _ =
  Nutshell.home
    [ 
      h1 [ pcdata "hello world" ] ; 
    ]


(* service registration ******************************************************************)

let _ = 
  Appl.register Services.Frontend.home home_handler
