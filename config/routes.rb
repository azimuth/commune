Commune::Application.routes.draw do
  resources :members
  resources :expense_reports
  
  # The priority is based upon order of creation:
  # first created -> highest priority.
end
