class ConnectionsController < ApplicationController

  def destroy
    @connection = current_user.connections.where(friend_id: params[:id]).first
    @connection.destroy
    flash[:notice] = "Friend was successfully removed"
    redirect_to my_connections_path
  end

end
