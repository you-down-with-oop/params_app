Rails.application.routes.draw do
  namespace :api do
    get "/query_params_url" => "params_examples#query_params_method"
    get "/query_name_url" => "params_examples#query_name_method"
    get "/query_guess_url" => "params_examples#query_guess_method"

    get "/segment_params_url/:the_variable_part" => "params_examples#segment_params_method"
    get "/segment_guess_url/:the_users_guess" => "params_examples#query_guess_method"

    post "/body_params_url" => "params_examples#body_params_method"
    post "/body_guess_url" => "params_examples#query_guess_method"
    post "/body_password_url" => "params_examples#body_password_method"
  end
end
