Rails.application.routes.draw do
  get 'article/new'
  get 'article/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "welcome/index"
  get "welcome/contactos"
end
