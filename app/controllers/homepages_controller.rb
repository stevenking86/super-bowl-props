class HomepagesController < ActionController::Base
  def index
    @users = User.all
    render :index
  end

  def entry
    @props = Prop.all
    render 'entry'
  end
end
