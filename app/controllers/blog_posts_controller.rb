class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy]

  def index
    @blog_posts = BlogPost.all
  end

  def show
    # check syntax and spelling
    @comment = Comment.new
  end

  def edit
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)

    respond_to do |format|
      if @blog_post.save
        format.html {redirect_to @blog_post, notice: "Blog Post was created successfully."}
      else
        format.html { render :edit }
      end
    end
  end


  def update
    respond_to do |format|
      if @blog_post.update(blog_post_params)
        format.html {redirect_to @blog_post, notice: "Blog Post was updated successfully."}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @blog_post.destroy

    respond_to do |format|
        format.html {redirect_to blog_posts_url, notice: "Your blog post was destroyed!"}
    end
  end

  private
  def blog_post_params
    params.require(:blog_post).permit(:title, :blog_entry, :author)
  end

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  end
end
