(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque de   *)
(* tests des fonctions qui implantantent       *)
(* l'automate des réels. Les fonctions sont    *)
(* définies dans automateEnDurReels.ml         *)
(* =========================================== *)

open List;;
#use "automateEnDurReels.ml";;


(* ----------------------- *)
(*     Valeurs de tests    *)
(* ----------------------- *)

let mots = ["123."; "123.45"; "-123."; "+123.34"; "-123.34";
            "12A3.34"; "123..33"; "123.34.44"; ".34"];;
let nbMots = List.length mots;;
let launchTests = List.map (fun mot -> reconnaitReelRec mot);;



(* ----------------------- *)
(*          Tests          *)
(* ----------------------- *)

explode (List.nth mots 3);;
reconnaitReelRec (List.nth mots 0);;
launchTests mots;;
