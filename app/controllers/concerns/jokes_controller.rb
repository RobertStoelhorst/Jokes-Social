
class JokesController < ApplicationController
  before_action :check_for_login

  def new
    @joke = Joke.new
  end

  def create
    # @current_user.mixtapes.create mixtape_params
    joke = Joke.create joke_params
    @current_user.jokes << joke
    redirect_to root_path
  end

  private
  def joke_params
    params.require(:joke).permit(:title)
  end
end
