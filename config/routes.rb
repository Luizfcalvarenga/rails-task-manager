Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #criar novas tasks
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # # mostrar todas as tasks na pagina tasks
  get '/tasks', to: 'tasks#index', as: :index

  # # mostrar detalhes de uma tsk especifica
  get 'tasks/:id', to: 'tasks#show', as: :task

  # # atualizar uma task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # # deletar uma task
  delete "tasks/:id", to: "tasks#destroy", as: :destroy
  # resources :tasks
end
