class ProtectedController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "secret"

  def index
    respond_to do |format|
      format.html
      format.json do
        render json: request.query_parameters.to_h
      end
    end
  end
end