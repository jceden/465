class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]


  # GET /tags/new
  def new
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags
  # POST /tags.json
  def create
	#find the current image
	@image = Image.find params[:image_id]
	#assign a new tag
	@tag = @image.tags.new(tag_params)
	#if the tag was made, output if not start a new one
	if @tag.save
		redirect_to @image, notice: 'Tag created.'
	else
		render :new
	end

  end

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
    respond_to do |format|
      if @tag.update(tag_params)
        format.html { redirect_to @tag, notice: 'Tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag }
      else
        format.html { render :edit }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags/1
  def destroy
    @image = @tag.image
    @tag.destroy
    redirect_to image_url(@image), notice: 'Tag was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params[:tag].permit(:tag_string)
    end
end
