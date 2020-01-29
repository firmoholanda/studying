class UsersController < ApplicationController
  def index
    @name = 'I am the Index action!'
  end

  def new
    @name = 'I am the !new! action!'
  end

  def edit
    @name = 'I am the edit action!'
  end

  def create
    @name = 'I am the create action!'
  end
end
