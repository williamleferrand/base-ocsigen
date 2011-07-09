open Lwt 
open Eliom_output.Html5

{shared{
  open Eliom_pervasives
  open HTML5.M
}}

{client{
  open Js
  open OClosure_extra
}}

(* client logic ***************************************************************************)

{client{
        
  let init btn box = 
    let document = Dom_html.document ## documentElement in 
    
    let coord = jsnew Goog.Math.coordinate(Js.some 0.0, Js.some 0.0) in
    
    let pos = jsnew viewPortClientPosition((Goog.Tools.Union.i2 coord), Js.null) in
    let popup = jsnew Goog.Ui.popup (Js.some box, Js.some pos) in
    
    popup##setHideOnEscape(Js._true);
    popup##setAutoHide(Js._false);
    popup##setVisible(Js._false);
    
    let reposition () = 
      let width = document ## scrollWidth in
      let height = document ## scrollHeight in
      let margin = jsnew Goog.Math.box (height / 2, 0, 0, width / 2) in
      pos##reposition (box, Goog.Positioning.Corner.TOP_LEFT, Js.some margin, Js.null) in 
    
    let click popup _ =
      if Js.to_bool popup##isVisible() then popup##setVisible(Js._false) else ( popup##setVisible(Js._true); reposition () ) in
    
    Dom_html.window ## onresize <- Dom_html.handler (fun _ -> reposition () ; Js._true) ; 
    Event_arrows.run (Event_arrows.clicks btn (Event_arrows.arr (click popup))) () ;  (* at one moment, we'll have to unify the way we handle events ... *)
    
}}

(* handler *******************************************************************************)

let handler _ _ =
  let btn = div ~a:[ a_id "btn" ] [ pcdata "click here" ] in
  let box = div ~a:[ a_id "box" ] [ pcdata "this is a google closure popup" ] in
 
  Eliom_services.onload
    {{
      init (to_element %btn) (to_element %box)
    }} ;  
 
  return 
    (Nutshell.app_home
       [
         div [
           h2 [ pcdata "Hello world" ] ; 
           btn; 
         ]
       ])
    
(* service registration ******************************************************************)
 
let _ = 
  Appl.register ~service:Services.home handler
