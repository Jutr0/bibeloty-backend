Rails.application.routes.draw do
  resources :products
  scope '/api' do
    resources :categories
    resources :materials
    resources :documents, only: :create
    resources :products do
      collection do
        get :search_categories
        get :search_materials
      end
    end

  end
end
