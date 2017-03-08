Rails.application.routes.draw do
  root to: 'static_pages#landing'
  resources :leads
  resources :organisations
  resources :opportunities

  get 'blog', to: 'static_pages#blogs'
end
