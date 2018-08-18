class WelcomeController < ApplicationController
  def index
    @articulos = Article.all
  end
  def contactos
    @email = "adrian.chaves@gmail.com"

  end

end
