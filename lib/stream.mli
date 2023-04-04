
(** Streams / Lazy infinite lists. *)
type 'a stream =
  | SCons of 'a * (unit -> 'a stream)

(** First element (head) of a stream. *)
val first : 'a stream -> 'a

(** Rest (tail) of a stream. *)
val rest : 'a stream -> 'a stream

(** Map a function over a stream. *)
val map : ('a -> 'b) -> 'a stream -> 'b stream
