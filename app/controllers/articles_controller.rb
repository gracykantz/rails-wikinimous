class ArticlesController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(user_params)
    @article.save
    redirect_to articles_path
  end

  def edit
  end

  def update
    @article.update(user_params)
    redirect_to article_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def set_task
    @article = Article.find(params[:id])
  end

  def user_params
    params.require(:article).permit(:title, :content)
  end
end
