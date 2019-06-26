class Api::ParamsExamplesController < ApplicationController
  def query_params_method
    @message1 = params["my_message"]
    @message2 = params["second_message"]
    @combined_message = "You said these two things: #{@message1} and #{@message2}"
    render "query_params.json.jb"
  end

  def query_name_method
    input_name = params["name"]
    @output_message = input_name.upcase
    if input_name.upcase.starts_with?("A")
      @other_message = "Hey your name starts with A!"
    end
    render "query_name.json.jb"
  end
end
