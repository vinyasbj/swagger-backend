class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :update, :destroy]

  # GET /requests
  def index
    @requests = Request.all

    render json: @requests
  end

  def search_requests
    @requests = Request.search(params[:search])
    render json: @requests
  end

  def get_latest_api
    @request = Request.last

    render json: @request
  end

  # GET /requests/1
  def show
    render json: @request
  end

  # POST /requests
  def create
    @request = Request.new(request_params)
    @request.body = params[:request][:body]
    if @request.save
      NotifySlack.new().execute(@request)
      render json: @request, status: :created
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      @request.update(body: params[:request][:body])
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:body,:title, :name, :headers, :collection_id, :url,:method,:request_params)
    end
end
