Rails.application.routes.draw do
  devise_for :users
  resources :knowledges
  root 'knowledges#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
