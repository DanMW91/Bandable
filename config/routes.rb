Rails.application.routes.draw do
  get 'song_files/create'
  get 'songs/create'
  get 'messages/create'
  get 'band_members/create'
  get 'bands/index'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'bands#index'
  resources :bands do
    resources :band_members, only: [:index]
    get '/auditions', to: 'band_members#index'
    get '/auditions/new', to: 'band_members#new'
    post '/auditions', to: 'band_members#create'
    get '/auditions/:id', to: 'band_members#edit', as: 'update_audition'
    patch '/auditions/:id', to: 'band_members#update'
    delete '/auditions/:id', to: 'band_members#destroy'

    resources :messages, only: [:index, :create]
    resources :songs, only: [:index, :create] do
      resources :song_files, only: [:create]
    end
  end

  resources :users, only: [:show, :index], as: 'musician', path: 'musicians' do
    get '/invitations', to: 'band_members#index'
    get '/invitations/new', to: 'band_members#new'
    post '/invitations', to: 'band_members#create'
    get '/invitations/:id', to: 'band_members#edit', as: 'update_audition'
    patch '/invitations/:id', to: 'band_members#update'
    delete '/invitations/:id', to: 'band_members#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
