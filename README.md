# foot-in-the-door
"Your feet are in the country, now get them in the door!
"

# About

This is a project we completed as part of [Techfugees](http://techfugees.com/) Melbourne 2016.

The finished submission can be found [here](http://devpost.com/software/foot-in-the-door).

This project is now un-maintained.

## Key ideas of this project

- Help people find jobs and friends by facilitating networking within a company
  to allow people to get a feel for the working culture
- Provide a mechanism for people to offer mentoring to incoming refugees in how
  to get jobs


## Technical Requirements

1. [stack](http://docs.haskellstack.org/en/stable/README/)
1. The PostreSQL database (I'm using 9.4)
1. A db called `fitd` and a user called `fitd-user` with password `password`. This can be
  configured in `config/settings.yml`.


## Building

````
stack build
stack build yesod-bin cabal-install --install-ghc
````

## Running
````
stack exec -- yesod devel
````
