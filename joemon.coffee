## PokeAPI wrapper ##

Request = require 'request'

class Pokemon
	constructor: ->
		@host = 'pokeapi.co'
		@basePath = '/api/v2'

	#make the request and return the result
	sendAPIRequest: (kind, nameOrId, callback, params...) ->
		if nameOrId then idString = "#{nameOrId}/"
		if params.length > 0
			param = params.shift()
			paramString = "?#{param.key}=#{param.val}"
			if params.length > 0
				paramString += "#{p.key}=#{p.val}" for p in params
		Request "#{@host}/#{kind}/#{idString or ''}#{paramString or ''}", (error, response, body) {
			switch response.statusCode
				when 404
					throw "Invalid object Name or ID!"
				when 200
					callback(response.statusCode,body)
		}
		
	#descrip: get the entire pokedex
	#params : none
	#returns: name - the pokedex name e.g. National
	##        id -
	##        resource_uri - the uri of this resource
	##        pokemon - a big list of pokemon within this pokedex
	getPokedex: (nameOrId=1, callback) ->
		return @sendAPIRequest 'pokedex', nameOrId, callback

	#descrip: gets a single pokemon by ID
	#params : id - the pokemon's ID (national pokedex number)
	##        callback - function to execute after getting
	#returns: name - the resource name e.g. Bulbasaur
	##        id -
	##        forms - default form of pokemon and alternates if they exist
	##        abilities - all possible abilities this pokemon can have
	##        stats - stats of this pokemon
	##        weight - how much this pokemon weighs
	##        moves - all moves this pokemon can learn
	##        sprites - front and back sprites for male and female variants of this pokemon, as well as shinies
	##        held_items - all items the pokemon can be found holding
	##        location_area_encounters - a URI to the possible encounter areas for this pokemon
	##        height - this pokemon's height
	##        species - name of this pokemon's species and its species URI
	##        order -
	##        game_indicies -
	##        base_experience - base amount of experience gaines by defeating this pokemon
	##        types - this pokemon's type(s)
	getPokemon: (nameOrId, callback) ->
		return @sendAPIRequest 'pokemon', nameOrId, callback

	#descrip: gets a pokemon element/type and its properties
	#params :
	#returns: name - the resource name e.g. Water
	##        id - the id of the resource
	##        damage_relations - object containing types that this type is weak/effective against
	##        generation - which generation this type was introduced in
	##        move_damage_class - whether the type is physical or special in relation to damaging moves
	##        game_indicies - indicies of this type for each game
	##        moves - all moves of this type
	##        pokemon - all pokemon of this type
	##        names - all available localized names for this type
	getType: (nameOrId, callback) ->
		return @sendAPIRequest 'type', nameOrId, callback

	#descrip: gets a single pokemon move
	#params :
	#returns: name - the resource name e.g. Water
	##        id -
	##        effect_chance - chance of this move's effect occurring (if any)
	##        generation - generation this move was introduced
	##        stat_changes -
	##        effect_changes -
	##        names - available localized names for this move
	##        machines - what TM/HM teaches this move, if any
	##        pp -
	##        contest_combos -
	##        effect_entries -
	##        contest_type -
	##        contest_effect -
	##        type - this move's type
	##        accuracy -
	##        power -
	##        past_values -
	##        target - who this move can target
	##        super_contest_effect -
	##        flavor_text_entries - flavor texts in various languages
	##        damage_class -
	##        meta -
	getMove: (nameOrId, callback) ->
		return @sendAPIRequest 'move', nameOrId, callback

	#descrip: gets a single pokemon ability
	#params :
	#returns: name - the resource name e.g. Overgrow.
	##        id - the id of the resource.
	getAbility: (nameOrId, callback) ->
		return @sendAPIRequest 'ability', nameOrId, callback

	#descrip: gets an egg group
	#params :
	#returns: name - the resource name e.g. Monster.
	##        id - the id of the resource.
	getEggGroup: (nameOrId, callback) ->
		return @sendAPIRequest 'egg', nameOrId, callback

	#descrip: gets a pokemon's description
	#params :
	#returns: name - the resource name.
	##        id - the id of the resource.
	getDescription: (nameOrId, callback) ->
		return @sendAPIRequest 'description', nameOrId, callback

	#descrip: gets a pokemon's sprite
	#params :
	#returns: name - the resource name.
	##        id - the id of the resource.
	getSprite: (nameOrId, callback) ->
		return @sendAPIRequest 'sprite', nameOrId, callback

	#descrip: gets a pokemon game
	#params :
	#returns: name - the resource name e.g. Pokemon red.
	##        id - the id of the resource.
	getGame: (nameOrId) ->
		return @sendAPIRequest 'game', nameOrId, callback

module.exports = Pokemon
