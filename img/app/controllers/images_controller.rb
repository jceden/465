class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
	if user_signed_in?
	@my_images = Image.where(user_id: current_user.id)
	@my_shared_images
	@public_images = (Image.where(private: false))
	@p_images = @public_images.where.not(user_id: current_user.id)
	else
	@p_images = Image.where(private: false)
	end
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
	@image.user
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(image_params)
	@image.generate_filename
	@image.user = current_user
	@uploaded_io = params[:image][:uploaded_file]
	if @uploaded_io != nil
		File.open(Rails.root.join('public','images',@image.filename), 'wb') do |file|
			file.write(@uploaded_io.read)
		end

		if @image.save
			redirect_to @image, notice: 'Image was successfully created'
		else
			render :new
		end
	else
		@image.destroy
		index
	end
end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:filename, :private, :user_id)
    end
end
