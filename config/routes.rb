Rails.application.routes.draw do
  resources :movies
  
  root 'static_pages#home'
  get 'sessions/new'
  resources :users, except: [:index, :show, :edit] 
  get 'sessions/new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :cinemas, only: [:index, :show] do
    resources :seats do
      resources :time_slots do
        resources :ticket
      end
    end
  end

  get '/book_movies', to: 'static_pages#book_movies'
  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home'


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
