class VoteController < ApplicationController

    def show
      @vote = Vote.find(params[:id])
      respond_to do |format|
        format.html
        format.js
      end
    end

	def index
		@votes = Vote.all
	end

	def new
      @vote = Vote.new
	end

	def create
	  @vote = Vote.new
	  @vote = Vote.new(:name => parsed["From"], :description => parsed["Body"])
	  @vote.save
	end

end