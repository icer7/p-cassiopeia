class ImagesController < ApplicationController
    protect_from_forgery with: :null_session

    def show
        image = Image.find(params[:id])
        render json: image, except: [:data]
    end

    def create
        render json: image, except: [:data]
    end

    def download
        image = Image.find(params[:id])
        send_data image.data, type: "image/png", disposition: 'inline'
    end

    def upload
        image = Image.find_by_id(params[:id])
        unless image then
            image = Image.new
            image.save!
            image = Image.find_by_id(1)
        end
        image.data = request.raw_post
        image.save!
        render json: image, except: [:data]
    end
end
