class WelcomeController < ApplicationController
  def index
    session[:user_name]= "Renato Lôbo [SESSION]"
    cookies[:curso]= "Curso de Ruby on Rails - Jackson Pires [COOKIE]"
    @meu_nome = params[:nome]
    @curso = "Rails"
  end
end
