class type ['config] with_configuration = object
  method configuration : 'config
end

class type with_target_path = object
  method target_path : Yocaml.Path.t
end

class type with_source_path = object
  method source_path : Yocaml.Path.t
end
