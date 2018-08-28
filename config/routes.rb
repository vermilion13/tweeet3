Rails.application.routes.draw do

  resources :feeds
  resources :contacts
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]

  root to: 'tweeets#top'
  get '/top',to: 'tweeets#top'

  resources :tweeets do
    collection do
        post :confirm
    end
  end

mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end