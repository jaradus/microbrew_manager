MicrobrewManagerLight::Application.routes.draw do
  
  root to: "beers#index"
  
  resources :reviews


  resources :beers


  resources :production_notes

  get "/beer_list" => "beers#list"

  get "/beer/error" => "beers#error"

end
