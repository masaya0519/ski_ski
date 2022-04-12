Rails.application.routes.draw do

  get 'homes/top'
    #管理者
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  #会員
  devise_for :member,skip: [:passwords], controllers: {
  registrations: "member/registrations",
  sessions: 'member/sessions'
}

  namespace :admin do
    resources :skis, only: [:index, :new, :create, :show, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update, :destroy]
    resources :genres, only: [:index, :create, :edit, :update]
  end

  scope module: :member do
    resources :reviews, only: [:new, :create, :index, :destroy]
    resources :skis, only: [:show]
    resources :users, only: [:show, :edit, :update,] do
      collection do
        get 'users/unsubscribe'
        patch 'users/withdraw'
      end
    end
    resources :genres, only: [:index]
  end

  root to: 'homes#top'
  get 'homes/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
