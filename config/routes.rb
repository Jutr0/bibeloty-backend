Rails.application.routes.draw do
  scope '/api' do
    devise_for :users, controllers: { sessions: 'sessions' }, defaults: { format: :json }
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
