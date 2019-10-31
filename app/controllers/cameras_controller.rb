class CamerasController < ApplicationController

    def index
        cameras = Camera.all 
        render json: cameras
    end

end
