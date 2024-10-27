Rails.application.routes.draw do
  scope '/api' do

    devise_for :users, controllers: { sessions: 'admin/sessions' }, defaults: { format: :json }, path: 'admin'
    namespace :admin do
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
end
