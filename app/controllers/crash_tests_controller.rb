class CrashTestsController < ApplicationController
  respond_to :html, :js, :json
  # GET /crash_tests
  # GET /crash_tests.json
  def index
    @crash_tests = CrashTest.all
    respond_with(@crash_tests)
  end

  # GET /crash_tests/1
  # GET /crash_tests/1.json
  def show
    @crash_test = CrashTest.find(params[:id])
    respond_with(@crash_test)
  end

  # GET /crash_tests/new
  # GET /crash_tests/new.json
  def new
    @crash_test = CrashTest.new
    respond_with(@crash_test)
  end

  # GET /crash_tests/1/edit
  def edit
    @crash_test = CrashTest.find(params[:id])
  end

  # POST /crash_tests
  # POST /crash_tests.json
  def create
    @crash_test = CrashTest.new(params[:crash_test])
    if @crash_test.save
      respond_with(@crash_test)
    else
      respond_with(@crash_test.errors)
    end
  end

  # PUT /crash_tests/1
  # PUT /crash_tests/1.json
  def update
    @crash_test = CrashTest.find(params[:id])

    respond_to do |format|
      if @crash_test.update_attributes(params[:crash_test])
        format.html { redirect_to @crash_test, notice: 'Crash test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crash_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crash_tests/1
  # DELETE /crash_tests/1.json
  def destroy
    @crash_test = CrashTest.find(params[:id])
    @crash_test.destroy

    respond_to do |format|
      format.html { redirect_to crash_tests_url }
      format.json { head :no_content }
    end
  end
end
