Rails.application.routes.draw do
  root 'static_pages#home'
  get  'home',     to: 'static_pages#home'
  get  'timeline', to: 'static_pages#timeline'
  get  'team', to: 'static_pages#team'
end
