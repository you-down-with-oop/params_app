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

  def query_guess_method
    input_guess = params["the_users_guess"].to_i
    winning_number = 32
    if input_guess > winning_number
      @output_message = "Pick lower!"
    elsif input_guess < winning_number
      @output_message = "Pick higher!"
    else
      @output_message = "You win!"
    end
    render "query_guess.json.jb"
  end

  def segment_params_method
    @output_message = params["the_variable_part"]
    render "segment_params.json.jb"
  end

  def body_params_method
    @output_message = "Shh...the secret message is #{params["secret_stuff"]}"
    render "body_params.json.jb"
  end

  def body_password_method
    if params["username"] == "hugh" && params["password"] == "swordfish"
      @output_message = "Valid"
    else
      @output_message = "Invalid"
    end
    render "body_params.json.jb"
  end
end
