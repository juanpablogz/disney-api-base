module Api
  module V1
    class ApiController < ActionController::API
      include Pundit
      include DeviseTokenAuth::Concerns::SetUserByToken

      # after_action :verify_authorized, :except => :index, unless: :devise_controller?
      # after_action :verify_policy_scoped, only: :index

      before_action :authenticate_user!, :except => [:status, :index]
      # skip_after_action :verify_authorized, only: :status

      rescue_from ActiveRecord::RecordNotFound,        with: :render_not_found
      rescue_from ActiveRecord::RecordInvalid,         with: :render_record_invalid
      rescue_from ActionController::ParameterMissing,  with: :render_parameter_missing

      def status
        render json: { online: true }
      end

      private

      def render_not_found(exception)
        logger.info { exception } # for logging
        render json: { error: I18n.t('api.errors.not_found') }, status: :not_found
      end

      def render_record_invalid(exception)
        logger.info { exception } # for logging
        render json: { errors: exception.record.errors.as_json }, status: :bad_request
      end

      def render_parameter_missing(exception)
        logger.info { exception } # for logging
        render json: { error: I18n.t('api.errors.missing_param') }, status: :unprocessable_entity
      end

      def error_message(entity)
        entity.errors.messages.values
      end

      def permission?(entity)
        authorize entity
      end
    end
  end
end
