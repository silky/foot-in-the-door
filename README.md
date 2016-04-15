# foot-in-the-door
"Your feet are in the country, now get them in the door!
"

## Requirements

1. [stack](http://docs.haskellstack.org/en/stable/README/)
1. The PostreSQL database (I'm using 9.4)

## Building

````
stack build
stack build yesod-bin cabal-install --install-ghc
````

## Running
````
stack exec -- yesod devel
````
