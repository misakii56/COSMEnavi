Rails.application.routes.draw do

root to: 'public/homes#top'


 scope module: :public do
   resources :cosmetics do
      collection do
        get 'search'
      end
     resources :reviews do
      resources :comments
     end
   end
    get 'users/show' => 'users#show', as: 'my_page'
    get 'users/edit' => 'users#edit'
    get 'users/confirm' => 'users#confirm', as: 'confirm'
    patch 'users' => 'users#update'
    patch 'users/out' => 'users#out', as: 'out'
  end

  namespace :admin do
    resources :users
    resources :skin_types
    resources :parsonal_colors
    resources :cosmetics
    resources :reviews
  end


  # 顧客用
  # URL /customers/sign_in ...
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'public/sessions#new_guest'
    get 'users/guest_sign_in', to: 'public/sessions#new_guest'
  end
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
