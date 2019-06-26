class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    @message1 = params["my_message"]
    @message2 = params["second_message"]
    @combined_message = "You said these two things: #{@message1} and #{@message2}"
    render "query_params.json.jb"
  end
end
