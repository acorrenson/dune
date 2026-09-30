type t =
  | ROCQ_PROJECT
  | COQ_PROJECT

let decode : t Dune_lang.Decoder.t =
  Dune_lang.Decoder.(
    enum' [ "coq", return COQ_PROJECT; "rocq", return ROCQ_PROJECT ]
    <|> return ROCQ_PROJECT)
;;

let get_filename (x : t) =
  match x with
  | COQ_PROJECT -> "_CoqProject"
  | ROCQ_PROJECT -> "_RocqProject"
;;
