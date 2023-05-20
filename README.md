# Bag Module

The Bag module is an implementation of a bag data structure in OCaml. It provides functions to add, remove, count elements, check if the bag is empty, convert the bag to a list, and check for unique elements.

# Functionality

The Bag module provides the following functions:

    empty: Returns an empty bag.

    is_empty: Checks if the bag is empty.

    add: Adds an element to the bag.

    remove: Removes an element from the bag.

    count: Counts the occurrences of an element in the bag.

    tolist: Converts the bag to a list.

    unique: Checks if an element appears only once in the bag.

# Example

Here's an example of how to use the Bag module in an OCaml program:

```python

open Bag

let () =
  let bag = add 1 (add 2 (add 1 empty)) in
  let updated_bag = remove 1 bag in
  let item_count = count 2 updated_bag in
  let bag_list = tolist updated_bag in
  let is_unique_item = unique 2 updated_bag in
  
  print_endline ("Updated Bag: " ^ (String.concat ", " (List.map string_of_int bag_list)));
  print_endline ("Count of 2 in the Bag: " ^ string_of_int item_count);
  print_endline ("Is 2 unique in the Bag? " ^ string_of_bool is_unique_item);

```

This program demonstrates adding elements to the bag, removing elements, counting occurrences, converting the bag to a list, and checking uniqueness.

# License

This project is licensed under the MIT License.
