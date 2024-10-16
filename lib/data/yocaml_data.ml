include Yocaml.Data

let bool_from_option = function Some _ -> bool true | None -> bool false
let bool_from_list = function _ :: _ -> bool true | [] -> bool false

module Validation = struct
  include Yocaml.Data.Validation
end
