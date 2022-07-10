Rails.application.routes.draw do
  root "fiesta#index"
  
  # DEVISE USER RAILS 7 STUFF #
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users, :controllers => {registrations: "registrations"}

  # PROFILE PAGE #
  get '/fiesta/perfil', to: 'fiesta#perfil'

  # ATTENDING FIESTAS #
  get 'fiesta/:id/users/:user_id/', to: "attending_fiesta#create", as: "create_attending_fiestum"
  get '/users/:id/attended_events', to: "users#show_attended_fiesta", as: "show_attended_fiesta"

  # FROM SCAFFOLDING FIESTA #
  resources :fiesta


end
