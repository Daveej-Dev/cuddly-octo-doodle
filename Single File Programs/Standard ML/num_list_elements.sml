(*This is a generalized function to determine the number of elements in a list by returning an int*)
fun num_list_elements(list: 'a list): int =
case list of
  nil => 0
  | _ => 1 + num_list_elements(tl list)
