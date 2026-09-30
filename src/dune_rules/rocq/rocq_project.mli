type t =
  | ROCQ_PROJECT
  | COQ_PROJECT

val decode : t Dune_lang.Decoder.t
val get_filename : t -> string
