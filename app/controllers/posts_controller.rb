class PostsController < ApplicationController
  require 'yt'

  def index
    Yt.configuration.api_key = "AIzaSyDiT_oxqFucNcolq6BeV2uLWhOP0P4gtOI"

    @channel = Yt::Channel.new id: 'UCkxctb0jr8vwa4Do6c6su0Q'

  end


end