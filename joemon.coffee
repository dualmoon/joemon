## PokeAPI wrapper ##

HttpSync = require 'http-sync'

class Pokemon
  constructor: ->
    @host = 'pokeapi.co'
    @basePath = '/api/v1'

  #make the request and return the result
  sendAPIrequest: (kind, id, param1 = false) ->
    #pString = #{param:val} for key:value in params
    paramString = ''
    idString = ''
    if id then idString = "#{id}/"
    if param1
      paramString = "?#{param1.key}=#{param1.val}"
    options=
      host: @host
      path: "#{@basePath}/#{kind}/#{idString}#{paramString}"
    request = HttpSync.request options
    response = request.end()
    return {status: response.statusCode, body: JSON.parse response.body.toString()}
    
    #Request.get "#{@uri}/#{kind}/#{id}/", (err, res, body) =>
      #if not err and res.statusCode is 200
        #callback JSON.parse(body)
      #else
        #callback null, err

  #descrip: get the entire pokede
  #params : none
  #returns: name - the pokedex name e.g. National.
  ##        resource_uri - the uri of this resource.
  ##        pokemon - a big list of pokemon within this pokedex.
  getPokedex: () ->
    return @sendAPIrequest 'pokedex', 1

  #descrip: gets a single pokemon by ID
  #params : id - the pokemon's ID (national pokedex number)
  ##        callback - function to execute after getting
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
    return @sendAPIrequest 'pokemon', id

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
    return @sendAPIrequest 'type', id

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
    return @sendAPIrequest 'move', id
  #descrip: gets multiple pokemon moves
  #params : limit - the number of moves to get per call
  getMoves: (limit=5) ->
    return @sendAPIrequest 'move', false, limit

  #descrip: gets a single pokemon ability
  #params :
  #returns: name - the resource name e.g. Overgrow.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        description - the description of this ability
  getAbility: (id) ->
    return @sendAPIrequest 'ability', id

  #descrip: gets an egg group
  #params :
  #returns: name - the resource name e.g. Monster.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        pokemon - a list of all the pokemon in that egg group.
  getEggGroup: (id) ->
    return @sendAPIrequest 'egg', id

  #descrip: gets a pokemon's description
  #params :
  #returns: name - the resource name.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        games - a list of games this description is in.
  ##        pokemon - the pokemon this description is for.
  getDescription: (id) ->
    return @sendAPIrequest 'description', id

  #descrip: gets a pokemon's sprite
  #params :
  #returns: name - the resource name.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        pokemon - the pokemon this sprite is for.
  ##        image - the uri for the sprite image
  getSprite: (id) ->
    return @sendAPIrequest 'sprite', id

  #descrip: gets a pokemon game
  #params :
  #returns: name - the resource name e.g. Pokemon red.
  ##        id - the id of the resource.
  ##        resource_uri - the uri of this resource.
  ##        release_year - the year the game was released
  ##        generation - the generation this game belongs to.
  getGame: (id) ->
    return @sendAPIrequest 'game', id

module.exports = Pokemon
