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
  # SHOW ATTENDING FIESTAS IN PROFILE PAGE #
  get '/users/:id/attended_events', to: "users#show_attended_fiesta", as: "show_attended_fiesta"

  # PROXIMAS AND PASADAS PAGES #
  get '/fiesta/pasadas', to: 'fiesta#pagina_pasadas'
  get '/fiesta/proximas', to: 'fiesta#pagina_proximas'

  # FROM SCAFFOLDING FIESTA #
  resources :fiesta

  # NOT ATTENDING FIESTAS #
  delete 'fiesta/:id/users/:user_id/', to: "attending_fiesta#destroy", as: "destroy_attending_fiestum"
  # ATTENDING FIESTAS #
  post 'fiesta/:id/users/:user_id/', to: "attending_fiesta#create", as: "create_attending_fiestum"


  # FIESTAS PROXIMAS - upcoming events

  # FIESTAS PASADAS - past events


end
