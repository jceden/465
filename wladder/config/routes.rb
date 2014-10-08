Rails.application.routes.draw do
root "home#index"
get 'wladder', to:'home#show'
end
