class SearchMovie
  attr_reader :params, :movie
  def initialize(params, movie = Movie)
    @params = params
    @movie = movie
  end

  def search_movie
    if @params.keys.include?('name')
      @movie.where(title: @params[:name])
    elsif @params.keys.include?('genre')
      # byebug
      @movie.where(genders: @params[:genre])
    elsif @params.keys.include?('order')
      @movie.all.order(id: @params[:order])
    else
      @movie
    end
  end
end