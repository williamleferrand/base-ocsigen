(* web frontend for stages *)

open Eliom_services
open Eliom_parameters 


module Frontend = 
  struct
    let home = service [ "" ] any ()
end
