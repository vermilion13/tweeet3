Rails.application.routes.draw do

    root to: 'tweeets#top'
    get '/top',to: 'tweeets#top'
#    get '/index', to: 'tweeets#index'

    resources :tweeets do
        collection do
            post :confirm
        end
      end

end