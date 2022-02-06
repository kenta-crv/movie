Rails.application.routes.draw do

  #管理者アカウント
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }

  resources :admins, only: [:show]

  root to: 'top#index' #トップページ
  #特集
  get 'faq' => 'top#faq'
  get 'co' => 'top#co'
  get 'question' => 'top#question'

  get 'cocacola' => 'top#cocacola'
  get 'asahi' => 'top#asahi'
  get 'otsuka' => 'top#otsuka'
  get 'itoen' => 'top#itoen'
  get 'dydo' => 'top#dydo'
  get 'pocca' => 'top#pocca'
  get 'kirin' => 'top#kirin'

  resources :columns

  resources :estimates do
    collection do
      post :confirm
      post :thanks
    end
    member do
      get :apply
      post :send_mail
      get :confirm_point
      post :apply
    end
  end

  # メッセージ
  resources :messages, only: [:create] do
    collection do
      # メッセージルーム
      get :room, path: '/room/:uri_token'
    end
  end

  #企業側アカウント
  resources :companies do
    collection do
      get :pay
      post :get_point
      post :confirm
      post :thanks
    end
  end

  #get '*path', controller: 'application', action: 'render_404'
end
