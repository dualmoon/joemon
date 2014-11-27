Request = require 'request'

class Pokemon
  constructor: ->
    @uri = 'http://pokeapi.co/api/v1'

  #make the request and return the result
  sendAPIrequest: (kind, id, params = false) ->
    #pString = param:val for key:value in params
    Request.get "#{@uri}/kind/id/#{pString? or ''}"

  #descrip: get the entire pokedex
  #params : none
  #returns: name - the pokedex name e.g. National.
  ##        resource_uri - the uri of this resource.
  ##        pokemon - a big list of pokemon within this pokedex.
  getPokedex: ->
    uri = "#{@uri}/pokedex/1/"
    Request.get uri, (err, res, body, callback) ->
      
    #pass

  #descrip: gets a single pokemon by ID
  #params : pokemon id (national pokedex number)
  #returns: name - the resource name e.g. Bulbasaur.
  ##        national_id - the id of the resource, this is the National pokedex number of the pokemon.
  ##        resource_uri - the uri of this resource.
  ##        abilities - the abilities this pokemon can have.
  ##        egg_groups - the egg groups this pokemon is in.
  ##        evolutions - the evolutions this pokemon can evolve into.
  ##        descriptions - the pokedex descriptions this pokemon has.
  ##        moves - the moves this pokemon can learn.
  ##        types - the types this pokemon is.
  ##        catch_rate - this pokemon's catch rate.
  ##        species
  ##        hp
  ##        attack
  ##        defense
  ##        sp_atk
  ##        sp_def
  ##        speed
  ##        total - the total of the above attributes.
  ##        egg_cycles - number of egg cycles needed.
  ##        ev_yield - the ev yield for this pokemon.
  ##        exp - the exp yield from this pokemon.
  ##        growth_rate - the growth rate of this pokemon.
  ##        height
  ##        weight
  ##        happiness - base happiness for this pokemon.
  ##        male_female_ratio - in the format M / F
  getPokemon: (id) ->
    #pass

  #descrip: gets a pokemon element/type and its properties
  #params :
  #returns: name - the resource name e.g. Water.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        ineffective - the types this type is ineffective against.
  ##        no_effect - the types this type has no effect against.
  ##        resistance - the types this type is resistant to.
  ##        super_effective - the types this type is super effective against.
  ##        weakness - the types this type is weak to.
  getType: (id) ->
    #pass

  #descrip: gets a single pokemon move
  #params :
  #returns: name - the resource name e.g. Water.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        description - a description of the move.
  ##        power - the power of the move.
  ##        accuracy - the accuracy of the move.
  ##        category - the category of the move.
  ##        pp - the pp points of the move.
  getMove: (id) ->
    #pass

  #descrip: gets a single pokemon ability
  #params :
  #returns: name - the resource name e.g. Overgrow.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        description - the description of this ability
  getAbility: (id) ->
    #pass

  #descrip: gets an egg group
  #params :
  #returns: name - the resource name e.g. Monster.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        pokemon - a list of all the pokemon in that egg group.
  getEggGroup: (id) ->
    #pass

  #descrip: gets a pokemon's description
  #params :
  #returns: name - the resource name.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        games - a list of games this description is in.
  ##        pokemon - the pokemon this description is for.
  getDescription: (id) ->
    #pass

  #descrip: gets a pokemon's sprite
  #params :
  #returns: name - the resource name.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        pokemon - the pokemon this sprite is for.
  ##        image - the uri for the sprite image
  getSprite: (id) ->
    #pass

  #descrip: gets a pokemon game
  #params :
  #returns: name - the resource name e.g. Pokemon red.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        release_year - the year the game was released
  ##        generation - the generation this game belongs to.
  getGame: (id) ->
    #pass

