Rails.application.routes.draw do
  
  root 'cinemas#index'
  get 'sessions/new'
  resources :users, except: [:index, :show, :edit] 
  get 'sessions/new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :cinemas, only: :index do
    resources :seats do
      resources :time_slots do
        resources :ticket
      end
    end
  end

  get '/book_movies', to: 'static_pages#book_movies'


  namespace :admin do
    resources :users, only: [:index, :show]
    resources :seats
    get '/logout', to: 'sessions#destroy'
    get '/tally', to: 'static_pages#tally'
    root 'cinemas#index'
    resources :cinemas do
      resources :seats do
        resources :time_slots do
          resources :ticket
        end
      end
    end
  end

end
