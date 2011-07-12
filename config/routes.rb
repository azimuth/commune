Commune::Application.routes.draw do
  resources :members
  resources :expense_reports do
    resources :expense_items
  end
  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.
end
