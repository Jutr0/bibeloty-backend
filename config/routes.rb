Rails.application.routes.draw do
  resources :products
  scope '/api' do
    resources :categories
    resources :products do
      collection do
        get :search_categories
      end
    end

  end
end
