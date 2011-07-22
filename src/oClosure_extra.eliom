(* Some addons for oclosure *)

(* Goog.Positioning ********************************************************)

{client{
 
  open Js

  class type viewPortClientPosition = object
    inherit Goog.Positioning.abstractPosition 
    method reposition : #Dom_html.element t -> Goog.Positioning.Corner.corner -> Goog.Math.box t opt -> Goog.Math.size t opt -> unit meth
  end
            
  let viewPortClientPosition : ((int, Goog.Math.coordinate Js.t) Goog.Tools.Union.t -> int opt -> viewPortClientPosition Js.t) constr = 
    Goog.Tools.variable "[oclosure]goog.positioning.ClientPosition[/oclosure]"
 
}}
 
