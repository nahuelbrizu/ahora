Rails.application.routes.draw do
  resources :users do
    resources :recipes
    resources  :friendships

  end

  resources :recipes do
    resources :steps
    resources :images, only: [:index]
    resources :steps
    resources :comments
    resources :ingredients
    resources :compatible_diets

  end
  resources :steps do
    resources :cutting_steps
    resources :custom_steps
    resources :cooking_steps
    resources :resting_steps
    resources :presenting_steps
    resources :integration_steps
  end
  resources :related_recipes

  resources :friendships
  resources :comments
  resources :ingredients
  resources :comments
  resources :images
  resources :appliances
  resources :ratings
  resources :favorites
  resources :difficulties
  resources :likes
  resources :orders
  resources :videos
  resources :cutting_steps
  resources :custom_steps
  resources :cooking_steps
  resources :resting_steps
  resources :presenting_steps
  resources :integration_steps
  resources :compatible_diets
end

