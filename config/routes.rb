Rails.application.routes.draw do
  root 'static_pages#home'
  get  'mission',     to: 'static_pages#mission'
  get  'timeline', to: 'static_pages#timeline'
  get  'team', to: 'static_pages#team'
  get  'contacts', to: 'contacts#new'
  resources "contacts", only: [:new, :create]
end
