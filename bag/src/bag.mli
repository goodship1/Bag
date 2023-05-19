module Bag : sig
  type 'a t
  (** The type of a bag that stores elements of type ['a]. *)

  val empty : 'a t
  (** An empty bag. *)

  val is_empty : 'a t -> bool
  (** Check if the bag is empty. Returns [true] if the bag is empty, [false] otherwise. *)

  val add : 'a -> 'a t -> 'a t
  (** Add an element to the bag. *)

  val remove : 'a -> 'a t -> 'a t
  (** Remove an element from the bag. *)

  val count : 'a -> 'a t -> int
  (** Count the occurrences of an element in the bag. *)

  val tolist : 'a t -> 'a list
  (** Convert the bag to a list. *)

  val unique : 'a -> 'a t -> bool
  (** Check if an element appears only once in the bag. *)
end

