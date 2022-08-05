{ name = "create-react-app-purescript"
, dependencies =
  [ "effect", "prelude", "react-basic", "react-basic-dom", "react-basic-hooks" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
