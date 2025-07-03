# frozen_string_literal: true

module Api
  module V1
    class BaseController < ApplicationController
      def render_success(data = nil, message = 'Success', status = :ok)
        render json: {
          success: true,
          message: message,
          data: data,
          timestamp: Time.current
        }, status: status
      end

      def render_error(message = 'Error', status = :unprocessable_entity, errors = nil)
        response = {
          success: false,
          message: message,
          timestamp: Time.current
        }

        response[:errors] = errors if errors.present?

        render json: response, status: status
      end

      def render_not_found(message = 'Resource not found')
        render json: {
          success: false,
          message: message,
          timestamp: Time.current
        }, status: :not_found
      end

      def render_unauthorized(message = 'Unauthorized')
        render json: {
          success: false,
          message: message,
          timestamp: Time.current
        }, status: :unauthorized
      end
    end
  end
end
