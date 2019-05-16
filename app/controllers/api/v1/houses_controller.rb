class Api::V1::HousesController < ApplicationController
  def index
    if valid_key?
      render json: House.all, each_serializer: HouseSerializer
    else
      render body: "Unauthorized", status: 401
    end
  end

  def show
    if valid_key?
      render json: House.find(params[:id]).members, each_serializer: StudentSerializer
    else
      render body: "Unauthorized", status: 401
    end
  end

  private

  def valid_key?
    request.env["HTTP_X_API_KEY"] == ENV["key"]
  end
end
