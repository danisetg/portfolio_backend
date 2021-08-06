Rails.application.routes.draw do
  resources :atributes
  resources :labors
  resources :skills
  resources :labors
  resources :groups
  resources :contacts, only: [:create]
end
