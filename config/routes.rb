Rails.application.routes.draw do
  resources :access_controls
  resources :companies
  resources :faqs
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

  post '/categories', to: "categories#create"
  post '/roles', to: "roles#create"
  get '/roles/:id/destroy', to: "roles#destroy"

  post '/assignments', to: "assignments#create"
  get '/assignments/:id/destroy', to: "assignments#destroy"
end
