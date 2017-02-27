
class Api::V1::ReadsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    render json: Read.hot, status: 200
  end

  def create
    read = Read.create(url: params[:url])
    render json: read, status: 200
  end
end
