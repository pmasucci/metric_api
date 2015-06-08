class LogsController < ApplicationController

  def index
    @logs = Log.all
    render json: @logs, each_serializer: LogPreviewSerializer
  end

  def show
    @log = Log.find(params[:id])
    render json: @log
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      render json: @log, status: :created
    else
      render json: @log.errors, status: :unprocessable_entity
     end
  end

  def update
    @log = Log.find(params[:id])
    if @log.update(log_params)
      head :no_content
    else
      render json: @log.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy

    head :no_content
  end

  private
  def log_params
    params.require(:log)
      .permit(:name)
  end

end
