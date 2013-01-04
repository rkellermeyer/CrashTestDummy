class CrashTestDummiesController < ApplicationController
  respond_to :html, :js, :json
  # GET /crash_test_dummies
  # GET /crash_test_dummies.json
  def index
    @crash_test_dummies = CrashTestDummy.all
    respond_with(@crash_test_dummies, include: :crash_test)
  end

  # GET /crash_test_dummies/1
  # GET /crash_test_dummies/1.json
  def show
    @crash_test_dummy = CrashTestDummy.find(params[:id])
    respond_with(@crash_test_dummy)
  end

  # GET /crash_test_dummies/new
  # GET /crash_test_dummies/new.json
  def new
    @crash_test_dummy = CrashTestDummy.new
    respond_with(@crash_test_dummy)
  end

  # GET /crash_test_dummies/1/edit
  def edit
    @crash_test_dummy = CrashTestDummy.find(params[:id])
  end

  # POST /crash_test_dummies
  # POST /crash_test_dummies.json
  def create
    @crash_test_dummy = CrashTestDummy.new(params[:crash_test_dummy])
    if @crash_test_dummy.save
      respond_with(@crash_test_dummy)
    else
      respond_with(@crash_test_dummy.errors)
    end
  end

  # PUT /crash_test_dummies/1
  # PUT /crash_test_dummies/1.json
  def update
    @crash_test_dummy = CrashTestDummy.find(params[:id])

    respond_to do |format|
      if @crash_test_dummy.update_attributes(params[:crash_test_dummy])
        format.html { redirect_to @crash_test_dummy, notice: 'Crash test dummy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crash_test_dummy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crash_test_dummies/1
  # DELETE /crash_test_dummies/1.json
  def destroy
    @crash_test_dummy = CrashTestDummy.find(params[:id])
    @crash_test_dummy.destroy

    respond_to do |format|
      format.html { redirect_to crash_test_dummies_url }
      format.json { head :no_content }
    end
  end
end
