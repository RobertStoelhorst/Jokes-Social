class PagesController < ApplicationController
  def home
    if @current_user.present?
      @jokes = @current_user.jokes
    else
      @jokes = Joke.all
    end
      @joke = Joke.all.sample
  end
end
