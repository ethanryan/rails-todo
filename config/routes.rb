Rails.application.routes.draw do
  # root to: "tasks#index"
  root to: "tasks#incomplete"

  # resources :tasks
  get "/tasks/done", to: "tasks#done"
  get "/tasks/incomplete", to: "tasks#incomplete"
  resources :tasks, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  # get 'exit', to: 'sessions#destroy', as: :logout

end
