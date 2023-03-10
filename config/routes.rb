Rails.application.routes.draw do

root to: 'public/homes#top'
  namespace :public do
    get 'homes/top'
  end
 scope module: :public do
   resources :cosmetics do
   resources :reviews
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

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
