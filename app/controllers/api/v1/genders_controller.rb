module Api
  module V1
    class GendersController <  Api::V1::ApiController
      before_action :set_gender, only: %i[ show update destroy ]
      before_action :authenticate_user!, :except => [:index,:show]
      before_action do
        permission?(Gender)
      end

      # GET /gender
      # GET /gender.json
      def index
        @gender = gender.all
      end

      # GET /gender/1
      # GET /gender/1.json
      def show
      end

      # POST /gender
      # POST /gender.json
      def create
        # byebug
        @gender = Gender.new(gender_params)

        if @gender.save
          render json: @gender
        else
          render json: @gender.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /gender/1
      # PATCH/PUT /gender/1.json
      def update
        if @gender.update(gender_params)
          render :show, status: :ok, location: @gender
        else
          render json: @gender.errors, status: :unprocessable_entity
        end
      end

      # DELETE /gender/1
      # DELETE /gender/1.json
      def destroy
        @gender.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_gender
          @gender = gender.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def gender_params
          params.require(:gender).permit(:name, :image, :movie_id).merge(user_id: current_user.id)
        end
    end
  end
end