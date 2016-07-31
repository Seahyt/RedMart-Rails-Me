Rails.application.routes.draw do
  root 'application#hello'

  # static pages routes, not connected to models
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact_us', to: 'static_pages#contact_us'


  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
