class AccessesController < ApplicationController
  before_action :set_access, only: [:show, :edit, :update, :destroy]


  # GET /accesses/new
  def new
	@image = Image.find params[:image_id]
	@access = image.accesses.new(access_params)
  end

  # GET /accesses/1/edit
  def edit
  end

  # POST /accesses
  # POST /accesses.json
  def create
	@image = Image.find params[:image_id]
	@access = @image.accesses.new (access_params)

      if @access.save
	redirect_to @image, notice: 'User added.'
	else
	render :new
      end
  end

  # PATCH/PUT /accesses/1
  # PATCH/PUT /accesses/1.json
  def update
    respond_to do |format|
      if @access.update(access_params)
        format.html { redirect_to @access, notice: 'Access was successfully updated.' }
        format.json { render :show, status: :ok, location: @access }
      else
        format.html { render :edit }
        format.json { render json: @access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accesses/1
  # DELETE /accesses/1.json
  def destroy
    @access.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_access
      @access = Access.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def access_params
      params[:access].permit(:user_id)
    end
end
