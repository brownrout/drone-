module Api
    module V1
        class VotesController < ApplicationController
            respond_to :json

            def index
                    respond_with Vote.where(created_at: (Time.now-5.seconds)..(Time.now)).as_json
            end

        end
    end
end