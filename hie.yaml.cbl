# This is a sample hie.yaml file for opening haskell-language-server
# in hie, using cabal as the build system.  To use is, copy it to a
# file called 'hie.yaml'
# WARNING: This configuration works for hie but does not for
#          haskell-language-server or ghcide.
#          They need support for multi-cradle:
#          https://github.com/digital-asset/ghcide/issues/113
cradle:
  multi:

    - path: "./test/functional/"
      config: { cradle: { cabal: { component: "haskell-language-server:func-test" }}}

    - path: "./test/utils/"
      config: { cradle: { cabal: { component: "haskell-language-server:hls-test-utils" }}}

    - path: "./exe/Main.hs"
      config: { cradle: { cabal: { component: "haskell-language-server:exe:haskell-language-server" }}}

    - path: "./exe/Wrapper.hs"
      config: { cradle: { cabal: { component: "haskell-language-server:exe:haskell-language-server-wrapper" }}}

    - path: "./src"
      config: { cradle: { cabal: { component: "lib:haskell-language-server" }}}

    - path: "./ghcide/src"
      config: { cradle: { cabal: { component: "ghcide:lib:ghcide" }}}

    - path: "./ghcide/exe"
      config: { cradle: { cabal: { component: "ghcide:exe:ghcide" }}}
