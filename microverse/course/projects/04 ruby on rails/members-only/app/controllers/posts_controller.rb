class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :user_logged_in?, except: [:index]

  # GET /posts
  def index
    @posts = Post.includes(:user).order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  # GET /posts/1
  def show; end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit; end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
      flash[:success] = 'post was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      redirect_to @post
      flash[:success] = 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    redirect_to posts_url
    flash[:success] = 'Post was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
