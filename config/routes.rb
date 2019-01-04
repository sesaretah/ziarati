Rails.application.routes.draw do
  resources :blogs
  devise_for :users, :controllers => {:registrations => "registrations", sessions: "sessions"}
  resources :uploads
  resources :advertisements

  root "home#index"


  get '/advertisements/check/:id', to: "advertisements#check"
  get '/advertisements/change_rank/:id', to: "advertisements#change_rank"

  get '/blogs/check/:id', to: "blogs#check"
  get '/blogs/change_rank/:id', to: "blogs#change_rank"
  get '/settings', to: "settings#index"
  get '/settings/section', to: "settings#sections"
end
