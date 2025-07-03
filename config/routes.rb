# frozen_string_literal: true

Rails.application.routes.draw do
  # Swagger UI and API documentation
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    namespace :v1 do
    end
  end
end
