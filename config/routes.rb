Rails.application.routes.draw do
  scope '/api' do

    devise_for :users, controllers: { sessions: 'admin/sessions' }, defaults: { format: :json }, path: 'admin'
    namespace :admin do
      resources :categories
      resources :materials
      resources :sections
      resources :documents, only: :create
      resources :products do
        collection do
          get :search_categories
          get :search_materials
          get :search_sections
        end
      end
    end

    resources :products, only: [:index, :show]
    resources :sections, only: :index
  end
end
