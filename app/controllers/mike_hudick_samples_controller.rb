class MikeHudickSamplesController < ApplicationController
  before_action :set_mike_hudick_sample, only: [:show, :edit, :update, :destroy]

  # GET /mike_hudick_samples
  # GET /mike_hudick_samples.json
  def index
    @mike_hudick_samples = MikeHudickSample.all
  end

  # GET /mike_hudick_samples/1
  # GET /mike_hudick_samples/1.json
  def show
  end

  # GET /mike_hudick_samples/new
  def new
    @mike_hudick_sample = MikeHudickSample.new
  end

  # GET /mike_hudick_samples/1/edit
  def edit
  end

  # POST /mike_hudick_samples
  # POST /mike_hudick_samples.json
  def create
    @mike_hudick_sample = MikeHudickSample.new(mike_hudick_sample_params)

    respond_to do |format|
      if @mike_hudick_sample.save
        format.html { redirect_to @mike_hudick_sample, notice: 'Mike hudick sample was successfully created.' }
        format.json { render :show, status: :created, location: @mike_hudick_sample }
      else
        format.html { render :new }
        format.json { render json: @mike_hudick_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mike_hudick_samples/1
  # PATCH/PUT /mike_hudick_samples/1.json
  def update
    respond_to do |format|
      if @mike_hudick_sample.update(mike_hudick_sample_params)
        format.html { redirect_to @mike_hudick_sample, notice: 'Mike hudick sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @mike_hudick_sample }
      else
        format.html { render :edit }
        format.json { render json: @mike_hudick_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mike_hudick_samples/1
  # DELETE /mike_hudick_samples/1.json
  def destroy
    @mike_hudick_sample.destroy
    respond_to do |format|
      format.html { redirect_to mike_hudick_samples_url, notice: 'Mike hudick sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mike_hudick_sample
      @mike_hudick_sample = MikeHudickSample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mike_hudick_sample_params
      params.require(:mike_hudick_sample).permit(:name)
    end
end
