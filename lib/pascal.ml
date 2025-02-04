let rec n_k_element n k =
  if n = 0 || k = 0 || n = k then
    1
  else
    n_k_element (n-1) (k-1) + n_k_element (n-1) (k)
  
let build_triangle i =
  let rec triangle_row n =
    let rec print_triangle_row n k = 
      if k <= n then begin
        let element = n_k_element n k in
        print_int element;
        if k < n then
        print_string " ";
        print_triangle_row n (k+1)
      end
    in
    if n < i then begin
      print_triangle_row n 0;
      print_newline ();
      triangle_row (n+1)
    end
  in
triangle_row 0
