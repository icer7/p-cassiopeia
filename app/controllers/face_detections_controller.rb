class FaceDetectionsController < ApplicationController
  before_action :set_face_detection, only: [:show, :edit, :update, :destroy]

  # GET /face_detections
  # GET /face_detections.json
  def index
    @face_detections = FaceDetection.all
  end

  # GET /face_detections/1
  # GET /face_detections/1.json
  def show
  end

  # GET /face_detections/new
  def new
    @face_detection = FaceDetection.new
  end

  # GET /face_detections/1/edit
  def edit
  end

  # POST /face_detections
  # POST /face_detections.json
  def create
    @face_detection = FaceDetection.new(face_detection_params)

    respond_to do |format|
      if @face_detection.save
        format.html { redirect_to @face_detection, notice: 'Face detection was successfully created.' }
        format.json { render :show, status: :created, location: @face_detection }
      else
        format.html { render :new }
        format.json { render json: @face_detection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /face_detections/1
  # PATCH/PUT /face_detections/1.json
  def update
    respond_to do |format|
      if @face_detection.update(face_detection_params)
        format.html { redirect_to @face_detection, notice: 'Face detection was successfully updated.' }
        format.json { render :show, status: :ok, location: @face_detection }
      else
        format.html { render :edit }
        format.json { render json: @face_detection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /face_detections/1
  # DELETE /face_detections/1.json
  def destroy
    @face_detection.destroy
    respond_to do |format|
      format.html { redirect_to face_detections_url, notice: 'Face detection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_face_detection
      @face_detection = FaceDetection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def face_detection_params
      params.fetch(:face_detection, {})
    end
end
