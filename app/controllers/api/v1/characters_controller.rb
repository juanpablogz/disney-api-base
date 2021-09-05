module Api
  module V1
    class CharactersController <  Api::V1::ApiController
      before_action :set_character, only: %i[ show update destroy ]
      before_action :authenticate_user!, :except => [:index,:show]
      before_action do
        permission?(Character)
      end

      # GET /character
      # GET /character.json
      def index
        if params[:name].present? || params[:age].present? || params[:movies].present?
          search = Search.new(params)
          character = search.search_character
          render json: character, each_serializer: SimpleCharacterSerializer, status: :ok
        else
          @character = Character.all
          render json: @character, each_serializer: SimpleCharacterSerializer, status: :ok
        end
      end

      # GET /character/1
      # GET /character/1.json
      def show
        # byebug
        render json: @character, each_serializer: SimpleCharacterSerializer
      end

      # POST /character
      # POST /character.json
      def create
        # byebug
        @character = Character.new(character_params)

        if @character.save
          render json: @character
        else
          render json: @character.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /character/1
      # PATCH/PUT /character/1.json
      def update
        if @character.update(character_params)
          render json: @character, status: :ok
        else
          render json: @character.errors, status: :unprocessable_entity
        end
      end

      # DELETE /character/1
      # DELETE /character/1.json
      def destroy
        @character.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_character
          # byebug
          @character = Character.find(params[:id])
        end
        # Only allow a list of trusted parameters through.
        def character_params
          params.require(:character).permit(:name, :age, :weight, :history, :image).merge(user_id: current_user.id)
        end
    end
  end
end