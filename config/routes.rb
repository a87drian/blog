Rails.application.routes.draw do
  get 'articles/new'
  get 'articles/show'
  get 'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "welcome/index"
  get "welcome/contactos"
end
