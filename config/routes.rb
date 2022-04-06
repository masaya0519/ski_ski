Rails.application.routes.draw do

  namespace :admin do
    get 'skis/index'
    get 'skis/new'
    get 'skis/create'
    get 'skis/show'
    get 'skis/edit'
    get 'skis/update'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
  end
  namespace :admin do
    get 'genres/create'
    get 'genres/index'
    get 'genres/edit'
    get 'genres/update'
  end
  namespace :member do
    get 'reviews/new'
    get 'reviews/create'
    get 'reviews/index'
    get 'reviews/destroy'
  end
  namespace :member do
    get 'skis/show'
  end
  namespace :member do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/unsubscribe'
    get 'users/withdraw'
  end
  #管理者
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  #会員
  devise_for :member,skip: [:passwords], controllers: {
  registrations: "member/registrations",
  sessions: 'member/sessions'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
