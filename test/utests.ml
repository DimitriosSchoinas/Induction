open OUnit2
open Lap2324P1
open Pascal
open Tiles


(* let test_fail1 f arg1 =
  try
    let _ = f arg1 in
    assert_bool "Expected failure" false
  with
  | _ ->
      assert_bool "" true *)

(* let test_fail2 f arg1 arg2 =
  try
    let _ = f arg1 arg2 in
    assert_bool "Expected failure" false
  with
  | _ ->
      assert_bool "" true *)

let tests_pascal = "test suite for pascal" >::: [
  (* n_k_element *)
  (* base *)
  "n_k_element base1" >:: (fun _ -> assert_equal 1 (n_k_element 0 0));
  "n_k_element base2" >:: (fun _ -> assert_equal 1 (n_k_element 4 0));
  "n_k_element base3" >:: (fun _ -> assert_equal 1 (n_k_element 3 3));
  "n_k_element base4" >:: (fun _ -> assert_equal 1 (n_k_element 12 0));
  "n_k_element base5" >:: (fun _ -> assert_equal 1 (n_k_element 7 7));
  (* general *)
  "n_k_element general1" >:: (fun _ -> assert_equal 2 (n_k_element 2 1));
  "n_k_element general2" >:: (fun _ -> assert_equal 3 (n_k_element 3 2));
  "n_k_element general3" >:: (fun _ -> assert_equal 6 (n_k_element 4 2));
  "n_k_element general4" >:: (fun _ -> assert_equal 252 (n_k_element 10 5));
  "n_k_element general5" >:: (fun _ -> assert_equal 184756 (n_k_element 20 10));
  (* invalid inputs *)
  (* "n_k_element invalid1" >:: (fun _ -> test_fail2 n_k_element (-1) 0);
  "n_k_element invalid2" >:: (fun _ -> test_fail2 n_k_element 0 (-1));
  "n_k_element invalid3" >:: (fun _ -> test_fail2 n_k_element (-2) (-2));
  "n_k_element invalid4" >:: (fun _ -> test_fail2 n_k_element 0 1);
  "n_k_element invalid5" >:: (fun _ -> test_fail2 n_k_element 3 5); *)

  (* build_triangle *)
  (* invalid inputs *)
  (* "build_triangle invalid" >:: (fun _ -> test_fail1 build_triangle (-2)); *)
]

let tests_tiles = "test suite for tiles" >::: [
  (* n_k_element *)
  (* base *)
  "tiles base1" >:: (fun _ -> assert_equal 1 (tiles 0));
  "tiles base2" >:: (fun _ -> assert_equal 1 (tiles 1));
  "tiles base3" >:: (fun _ -> assert_equal 1 (tiles 2));
  "tiles base4" >:: (fun _ -> assert_equal 2 (tiles 3));
  (* general *)
  "tiles general1" >:: (fun _ -> assert_equal 4 (tiles 4));
  "tiles general2" >:: (fun _ -> assert_equal 17 (tiles 7));
  "tiles general3" >:: (fun _ -> assert_equal 305 (tiles 13));
  "tiles general4" >:: (fun _ -> assert_equal 3383 (tiles 18));
  "tiles general5" >:: (fun _ -> assert_equal 60697 (tiles 24));
  (* invalid inputs *)
  (* "tiles invalid" >:: (fun _ -> test_fail1 tiles (-1)); *)
]

let _ = run_test_tt_main tests_pascal
let _ = run_test_tt_main tests_tiles
