class PostsController < ApplicationController
  require 'yt'
  require 'google/apis'
  require 'google/apis/youtube_v3'
  require 'googleauth'
  require 'googleauth/stores/file_token_store'

  require 'fileutils'

  require 'net/http'
  require 'cgi'
  require 'certified'
  require 'httparty'
  require 'uri'

  def index

    Yt.configure do |config|
      config.api_key = "AIzaSyDiT_oxqFucNcolq6BeV2uLWhOP0P4gtOI"
      config.client_id = '393365834206-41sodsbcrq0pgft9sci3hj17masf8ib1.apps.googleusercontent.com'
      config.client_secret = 'rNytXXvaszqf_x1cb-F-DuN4'
      config.log_level = :debug
    end

    @account = Yt::Account.new(scopes: ["https://www.googleapis.com/auth/youtube, https://www.googleapis.com/auth/plus.login"], redirect_uri: 'localhost:3000').authentication_url



  end



end