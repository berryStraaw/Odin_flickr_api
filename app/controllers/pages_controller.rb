class PagesController < ApplicationController
    def index
        flickr = Flickr.new ENV["pusher_key"], ENV["pusher_secret"]

        if params[:user_id]
            id= params[:user_id]

            @info   = flickr.photos.search :user_id => id, :secret => ENV["pusher_secret"]
        end
    end
end
