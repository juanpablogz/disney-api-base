class Search
  attr_reader :params, :character
  def initialize(params, character = Character)
    @params = params
    @character = character
  end

  def search_character
    if @params.keys.include?('name')
      @character.where(name: @params[:name])
    elsif @params.keys.include?('age')
      @character.where(age: @params[:age])
    elsif @params.keys.include?('movies')
      @character.where(movies: @params[:movies])
    else
      @character
    end
  end
end