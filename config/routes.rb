# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :list, only: %i[index new create show] do
    resources :bookmark, only: %i[new create]
  end
end
