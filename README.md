Joémon
======

_My Rattata is in the top percent._

This is a package that wraps around the Pokemon API at http://pokeapi.co/

Example usage:

```
Pokémon = require 'joemon'
poké = new Pokémon()

bulbasaur = poke.getPokemon(1).body

console.log bulbasaur.types
```

This will output:

```
[ { name: 'poison',
    resource_uri: '/api/v1/type/4/' },
  { name: 'grass',
    resource_uri: '/api/v1/type/12/' } ]
```

See `joemon.coffee` for more documentation.
