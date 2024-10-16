(lang dune 3.16)
(name yocaml_codex)
(version dev)
(generate_opam_files)
(executables_implicit_empty_intf)

(source (github gr-im/yocaml_codex ))
(license GPL-3.0-or-later)
(authors
  "Grim <grimfw@gmail.com>"
  "Xvw <xaviervdw@gmail.com>")
(maintainers "Grim <grimfw@gmail.com>")

(package
 (name yocaml_data)
 (synopsis "Some useful combinators for YOCaml data validation")
 (description "Extension of usual combinators of Data management in YOCaml")
 (depends
  (ocaml (>= 5.2.0))
  (dune (>= 3.16.0))
  (yocaml (>= 2.0.0))

  (ppx_expect :with-test)))

(package
 (name yocaml_codex)
 (synopsis
   "Abstraction and models as a standard library for YOCaml")
 (description
   "Provides a set of tools for quickly building static pages with YOCaml (as an extension to the archetypes available in core YOCaml)")
 (depends
  (ocaml (>= 5.2.0))
  (dune (>= 3.16.0))
  (yocaml (>= 2.0.0))

  (ppx_expect :with-test)

  (ocamlformat :with-dev-setup)
  (ocp-indent :with-dev-setup)
  (merlin :with-dev-setup)
  (utop :with-dev-setup)
  (ocaml-lsp-server :with-dev-setup)

  (odoc :with-doc)
  (sherlodoc :with-doc)))
