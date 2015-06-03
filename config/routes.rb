Rails.application.routes.draw do
  resources :logs, except: [:new, :edit] do
    resources :log_entries, except: [:new, :edit]
  end
end
