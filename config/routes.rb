Rails.application.routes.draw do
  root "fiesta#index"
  
  # DEVISE USER RAILS 7 STUFF #
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  devise_for :users

  # FROM SCAFFOLDING FIESTA #
  resources :fiesta
end
