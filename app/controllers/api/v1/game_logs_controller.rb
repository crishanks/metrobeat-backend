class Api::V1::GameLogsController < ApplicationController
  def create
    @game_log = GameLog.find(params[:id])
    render json: @game_log
  end

  private

  def game_log_params
    params.require(:game_log).permit(:id, :user_id, :song_id)
  end
end
