class CamerasController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        cameras = Camera.all 
        render json: cameras.as_json(include: :users)
    end

end
