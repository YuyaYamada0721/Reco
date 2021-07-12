Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show edit update]
  resources :knowledges
  root 'knowledges#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
