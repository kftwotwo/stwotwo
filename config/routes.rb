Rails.application.routes.draw do
  root to: 'static_pages#landing'
  resources :insightlies
end
