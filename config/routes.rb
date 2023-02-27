Rails.application.routes.draw do
  root "users#index"

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks',
  }

end
