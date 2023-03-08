Rails.application.routes.draw do


 scope module: :public do
    get 'users/show' => 'users#show', as: 'my_page'
    get 'users/edit' => 'customers#edit'
    get 'users/confirm' => 'customers#confirm', as: 'confirm'
    patch 'users' => 'users#update'
    patch 'users/out' => 'users#out', as: 'out'
  end
  namespace :admin do
    resources :skin_types
    resources :parsonal_colors
    resources :cosmetics
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
