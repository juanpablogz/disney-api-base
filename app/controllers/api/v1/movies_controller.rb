module Api
  module V1
    class MoviesController <  Api::V1::ApiController
      before_action :set_movie, only: %i[ show update destroy ]
      before_action :authenticate_user!, :except => [:index,:show]
      before_action do
        permission?(Movie)
      end

      # GET /movie
      # GET /movie.json
      def index
        @movie = Movie.all
        render json: @movie
      end

      # GET /movie/1
      # GET /movie/1.json
      def show
        render json: @movie
      end

      # POST /movie
      # POST /movie.json
      def create
        # byebug
        @movie = Movie.new(movie_params)

        if @movie.save
          render json: @movie
        else
          render json: @movie.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /movie/1
      # PATCH/PUT /movie/1.json
      def update
        if @movie.update(movie_params)
          render :show, status: :ok, location: @movie
        else
          render json: @movie.errors, status: :unprocessable_entity
        end
      end

      # DELETE /movie/1
      # DELETE /movie/1.json
      def destroy
        @movie.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_movie
          @movie = Movie.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def movie_params
          params.require(:movie).permit(:image, :title, :rating, :creating, :character_id).merge(user_id: current_user.id)
        end
    end
  end
end