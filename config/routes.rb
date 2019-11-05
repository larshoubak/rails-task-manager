Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Read all
  get '/tasks', to: 'tasks#index'

  # Create task
  get '/tasks/new', to: 'tasks#new' # display form, trigger submit
  post '/tasks', to: 'tasks#create' # handle POST request

  # Edit/update task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit # form already with data
  patch 'tasks/:id', to: 'tasks#update'

  # Read/show one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Delete one task
  delete 'tasks/:id', to: 'tasks#destroy'

end

# add two routes to handle the creation of a task.
# One route is there to display the Task form,
# and another one is there to handle the POST request generated when submitting this form. Try to use directly the form_for helper in your view.
