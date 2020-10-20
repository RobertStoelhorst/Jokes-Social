
class JokesController < ApplicationController
  # before_action :check_for_login

  def index
    @jokes = Joke.all
  end

  def new
    @joke = Joke.new
  end

  def create
    # @current_user.jokes.create joke_params
    joke = Joke.create joke_params
    @current_user.jokes << joke
    redirect_to root_path
  end

  def show
    @joke = Joke.find params[:id]
  end

  def edit
    @joke = Joke.find params[:id]
  end

  def update
    joke = Joke.find params[:id]
    joke.update joke_params
    redirect_to root_path
  end

  def destroy
    joke = Joke.find params[:id]
    joke.destroy
    redirect_to root_path
  end

  private
  def joke_params
    params.require(:joke).permit(:title, :setup, :punchline)
  end
end
