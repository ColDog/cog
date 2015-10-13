Rails.application.routes.draw do
  devise_for :users
  get 'admin' => 'admin#dashboard'

  root to: 'main#index'
  get 'technology'  => 'main#technology'
  get 'about'       => 'main#about'
  get 'get_started' => 'main#get_started'
end
