Rails.application.routes.draw do
  # get 'appointments/index'
  # get 'appointments/show'
  # get 'appointments/new'
  # get 'appointments/create'
  # get 'appointments/edit'
  # get 'appointments/update'
  # get 'appointments/delete'
  # get 'lawyers/index'
  # get 'lawyers/show'
  # get 'lawyers/new'
  # get 'lawyers/create'
  # get 'lawyers/edit'
  # get 'lawyers/update'
  # get 'lawyers/delete'
  # get 'users/edit', "users#edit"
  # get 'users/update'
  # get 'users/delete'
   devise_for :users
  # devise_for :users, :controllers => {:registrations => “registrations”}
  root to: 'pages#home'
  resources :lawyers do
    resources :appointments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
