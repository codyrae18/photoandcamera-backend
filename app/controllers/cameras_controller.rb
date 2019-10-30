class CamerasController < ApplicationController

    def index
        cameras = Category.all 
        render json: cameras
    end

end
