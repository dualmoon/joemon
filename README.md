Joémon
======

_My Rattata is in the top percent._

This is a package that wraps around the Pokemon API v2 at http://pokeapi.co/

Example usage:

```
Pokémon = require 'joemon'
poké = new Pokémon()

poké.getPokemon 'bulbasaur', (status, bulbasaur) ->
	console.log bulbasaur.types
```

This will output:

```
[
	{ 
		slot: 2,
		type: {
			url: 'http://pokeapi.co/api/v2/type/4/',
			name: 'poison'
		}
	},
	{ 
		slot: 1,
		type: {
			url: 'http://pokeapi.co/api/v2/type/12/',
			name: 'grass'
		}
	}
]
```

See `joemon.coffee` for more documentation.
