(*This is a generalized function to determine if a list is empty by returning a boolean*)
fun is_list_empty(list: 'a list): bool =
case list of
  nil => true
  | _ => false
