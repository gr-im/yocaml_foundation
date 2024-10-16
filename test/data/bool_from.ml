open Yocaml_data

let%expect_test "bool_from_option with Some" =
  let result = bool_from_option (Some 10) in
  Format.printf "%a" Yocaml.Data.pp result;
  [%expect {| true |}]

let%expect_test "bool_from_option with None" =
  let result = bool_from_option None in
  Format.printf "%a" Yocaml.Data.pp result;
  [%expect {| false |}]

let%expect_test "bool_from_list with a filled list" =
  let result = bool_from_list [ 1; 2 ] in
  Format.printf "%a" Yocaml.Data.pp result;
  [%expect {| true |}]

let%expect_test "bool_from_list with []" =
  let result = bool_from_list [] in
  Format.printf "%a" Yocaml.Data.pp result;
  [%expect {| false |}]
