class CreatorsController < ApplicationController
  before_action :set_creator, only: [:show, :edit, :update, :destroy]

  # GET /creators
  # GET /creators.json
  def index
    @creators = Creator.all
  end

  # GET /creators/1
  # GET /creators/1.json
  def show
    @creator = Creator.find(params[:id])
  end

  # GET /creators/new
  def new
    @creator = Creator.new
  end

  # GET /creators/1/edit
  def edit
    @creator = Creator.find(params[:id])
  end

  # POST /creators
  # POST /creators.json
  def create
    @creator = Creator.new(creator_params)
    @creator.save

    flash.notice "Writer '#{@creator.name}' Created!"

    redirect_to creator_path(@creator)
  end

  # PATCH/PUT /creators/1
  # PATCH/PUT /creators/1.json
  def update
    @creator = Creator.find(params[:id])
    @creator.update(creator_params)

    # respond_to do |format|
    #   if @creator.update(creator_params)
    #     format.html { redirect_to @creator, notice: 'Creator was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @creator }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @creator.errors, status: :unprocessable_entity }
    #   end
    # end

    flash.notice = "Writer '#{@creator.name}' Updated!"

    redirect_to creator_path(@creator)
  end

  # DELETE /creators/1
  # DELETE /creators/1.json
  def destroy
    @creator = Creator.find(params[:id])
    @creator.destroy

    respond_to do |format|
      format.html { redirect_to creators_url, notice: 'Creator was successfully destroyed.' }
      format.json { head :no_content }
    end
    redirect_to creators_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creator
      @creator = Creator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creator_params
      params.require(:creator).permit(:username, :email, :password, :password_confirmation, :bio, :bar_id)
    end
end
