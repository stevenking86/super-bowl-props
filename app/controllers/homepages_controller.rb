class HomepagesController < ActionController::Base
  def index
    render :index
  end

  def entry
    @props = Prop.all
    render 'entry'
  end
end
