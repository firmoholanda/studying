class UsersController < ApplicationController

  def index
    @name = "i am the index action!"
  end

  def new
    @name = "i am the new action!"
  end

  def edit
    @name = "i am the edit action!"
  end

  def show
    @name = "i am the show action!"
  end

end
