class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy ]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new()
    if  @article.save
      redirect_to @article, notice: "Articulo #{@article.title}Creado"
    else
      redirect_to :new
    end
  end

  def show

  end

  def index
    @articulos = Article.all

  end

  def edit

  end
  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit

    end
  end
  def destroy
    @article.destroy
    redirect_to articles_url, notice: "Articulo Eliminado"

  end
  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
