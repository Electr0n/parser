class PagesController < ApplicationController

  require 'open-uri'

  def index
    if params[:page_url]
      @data = Nokogiri::HTML(open(params[:page_url]))
    end
  end

end