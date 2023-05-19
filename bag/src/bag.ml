module Bag : sig
  type 'a t
  val empty : 'a t
  val is_empty : 'a t -> bool
  val add : 'a -> 'a t -> 'a t
  val remove : 'a -> 'a t -> 'a t
  val count : 'a -> 'a t -> int
  val tolist : 'a t -> 'a list
  val unique : 'a -> 'a t -> bool

end = struct
  type 'a t = 'a list

  let empty = []

  let is_empty bag =
    match bag with
    | [] -> true
    | _ -> false

  let add item bag = item :: bag

  let remove item bag =
    let rec remove_item acc = function
      | [] -> acc
      | x :: xs when x = item -> remove_item acc xs
      | x :: xs -> remove_item (x :: acc) xs
    in
    remove_item [] bag

  let count item bag =
    let rec count_item count = function
      | [] -> count
      | x :: xs when x = item -> count_item (count + 1) xs
      | _ :: xs -> count_item count xs
    in
    count_item 0 bag

  let tolist bag = bag

  let unique item bag =
    count item bag <= 1
end
