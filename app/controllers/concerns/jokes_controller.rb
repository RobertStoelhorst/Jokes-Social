
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

  def like
    #grabbing the joke
    @joke = Joke.find params[:id]
    #creating a like with that joke and the current user's id
    Like.create(user_id: @current_user.id, joke_id: @joke.id)
    #redirecting them back to that joke
    redirect_to joke_path(@joke)
  end

  def unlike
      @current_user.likes.where(:joke_id => params[:id]).destroy_all
      redirect_to joke_path(params[:id])
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
