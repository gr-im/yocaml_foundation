(** The library provides a set of combinators compatible with YOCaml's
    projection and validation schemes. For reasons of conveinence (openness),
    the library re-exposes certain functions already present in YOCaml. *)

(** {1 Projection}

    Tools for describing Data using YOcaml.

    See {!module:Yocaml.Data} for an exhaustive documentation of the usage of
    data-definition. *)

val bool_from_option : 'a option -> Yocaml.Data.t
(** [bool_from_option opt] returns [Data.true] if the option is filled
    [Data.false] otherwise. *)

val bool_from_list : 'a list -> Yocaml.Data.t
(** [bool_from_list opt] returns [Data.true] if the list is not empty
    [Data.false] otherwise. *)

include
  module type of Yocaml.Data with module Validation := Yocaml.Data.Validation

(** {1 Validation}

    Tools for validating data using YOCaml. *)

module Validation : sig
  (** See {!module:Yocaml.Data.Validation} for an exhaustive documentation of
      the usage of data-validation. *)

  include module type of Yocaml.Data.Validation
  (** Extension of YOCaml. *)
end
