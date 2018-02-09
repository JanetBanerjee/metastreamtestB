class PostsController < ApplicationController
  before_action :yt_config
  require 'yt'

  def index
    @content_owner = Yt::Channel.new refresh_token: 'refresh_token'
  end

  def yt_config
    Yt.configure do |config|
      config.log_level = :debug
    end
  end

end