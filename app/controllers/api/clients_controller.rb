require 'pry'

class Api::ClientsController < ApplicationController

skip_before_action :verify_authenticity_token
  def index
    @clients = Client.all
    render json: @clients
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      render json: @client
    end
  end

    def edit

    end

    def update
      @client = Client.find(params[:id])
        if @client.update(client_params)
          render json: @client
      end
    end

    def destroy
      @client = Client.find_by_id(params[:id])
      @client.destroy
      render json: @client
    end



private
  def client_params
    params.require(:client).permit(:name, :age, :job, :chore, :password)
  end
end
