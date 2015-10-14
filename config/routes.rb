Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    get '/'         => 'admin#dashboard', as: 'dashboard'
    resources :articles, except: [:new, :show, :edit]
  end
  get '/blog'                 => 'articles#index', as: 'articles'
  get '/articles/:id/:title'  => 'articles#show',  as: 'article'
  post 'analytics'  => 'analytics#analytics'
  root to: 'main#index'
end
