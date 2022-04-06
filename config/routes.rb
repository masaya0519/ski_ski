Rails.application.routes.draw do

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
