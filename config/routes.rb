Rails.application.routes.draw do
  resources :knowledges
  root 'knowledges#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
