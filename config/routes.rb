Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about', to:'static_pages#about'
  get '/contact', to:'static_pages#contact'
  get '/services', to:'static_pages#services'
  
  match '*path', :to => redirect('/'), via: :all
end