class UsersController < ActionController::Base
  def create
    user = User.create(name: params[:name])

    params["prop"].each_value do |choice|
      user.user_choices.create(choice_id: choice.to_i)
    end
  end
end
