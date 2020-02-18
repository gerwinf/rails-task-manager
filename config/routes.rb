Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# As a user, I can list tasks READ ALL
get "tasks", to: "tasks#index"

# As a user, I can add a new task CREATE
## 1) Show form to create task
get "task/new", to: "tasks#new", as: :tasks_new

# As a user, I can view the details of a task READ ONE
get "tasks/:id", to: "tasks#show", as: :task

## 2) Actually add new task
post "tasks", to: "tasks#create"

# As a user, I can edit a task (mark as completed / update title & details) UPDATE
## 1) Show form to edit task
get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit

## 2) Actually edit task
patch "tasks/:id", to: "tasks#update"

# As a user, I can remove a task DESTROY
delete "tasks/:id", to: "tasks#destroy"
end
