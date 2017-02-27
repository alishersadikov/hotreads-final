class HomeController < ApplicationController
  def index
    @hotreads = Read.hot
  end
end
