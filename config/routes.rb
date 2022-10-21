Rails.application.routes.draw do
  get 'schedules/index'
  get 'schedules/new'
  get 'schedules/edit'
  get 'schedules/show'
  get 'schedules/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :schedules
end
