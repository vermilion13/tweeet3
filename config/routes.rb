Rails.application.routes.draw do

    resources :sessions, only: [:new, :create, :destroy]
    resources :users

    root to: 'tweeets#top'
    get '/top',to: 'tweeets#top'

    resources :tweeets do
        collection do
            post :confirm
        end
      end

end