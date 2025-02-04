open Lap2324P1

let () =
  let arg = Sys.argv.(1) in
  Pascal.build_triangle (int_of_string arg)
