Rails.application.routes.draw do
  root to: 'static_pages#landing'

  get 'blog', to: 'static_pages#blogs'
  get 'about', to: 'static_pages#about'
  get 'training_solutions', to: 'static_pages#training_solutions'

  resources :leads
  resources :organisations
  resources :opportunities
end
