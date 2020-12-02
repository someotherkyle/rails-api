class SAP_RequestsController < ApplicationController
  def create
    request = SAP_Request.create(request_params)
    render json: request
  end

  def index
    requests = request.all
    render json: requests
  end

  private
    def request_params
      params.require(:request).permit()# TODO: need to populate this with allowed request info
    end
end
