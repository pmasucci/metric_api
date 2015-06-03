class LogEntriesController < ApplicationController

  before_action :set_log

  def index
    @log_entries = @log.log_entries
    render json: @log_entries
  end

  def show
    @log_entry = @log.log_entries.find(params[:id])
    render json: @log_entry
  end

  def update
    @log_entry = @log.log_entries.find(params[:id])
    if @log_entry.update(log_entry_params)
      head :no_content
    else
      render json: @log_entry.errors, status: :unprocessable_entity
    end
  end

  def create
    @log_entry = @log.log_entries.new(log_entry_params)
    if @log_entry.save
      render json: @log_entry, status: :created, location: log_entries_url
    else
      render json: @log_entry.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @log_entry = @log.log_entries.find(params[:id])
    @log_entry.destroy

    head :no_content
  end

  private

  def log_entry_params
    params.require(:log_entry)
      .permit(:data)
  end

  def set_log
    @log = Log.find(params[:log_id])
  end
end
