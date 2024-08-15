Rails.application.routes.draw do
  resources :products
  scope '/api' do
    resources :categories

  end
end
