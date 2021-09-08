class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @users = User.all
    @message = Message.new
    @messages = Message.custom_display
  end
end
