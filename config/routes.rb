Rails.application.routes.draw do
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_method"
  end
end
