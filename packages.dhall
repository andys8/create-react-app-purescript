let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20220924/packages.dhall
        sha256:81067801c9959b544ac870b392b8520d516b32bddaf9c98b32d40037200c071f

let overrides = {=}

let additions = {=}

in  upstream // overrides // additions
