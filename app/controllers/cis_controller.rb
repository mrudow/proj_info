class CisController < ApplicationController
  # GET /cis
  # GET /cis.json
  def index
    @cis = Ci.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cis }
    end
  end

  # GET /cis/1
  # GET /cis/1.json
  def show
    @ci = Ci.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ci }
    end
  end

  # GET /cis/new
  # GET /cis/new.json
  def new
    @ci = Ci.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ci }
    end
  end

  # GET /cis/1/edit
  def edit
    @ci = Ci.find(params[:id])
  end

  # POST /cis
  # POST /cis.json
  def create
    @ci = Ci.new(params[:ci])

    respond_to do |format|
      if @ci.save
        format.html { redirect_to @ci, notice: 'Ci was successfully created.' }
        format.json { render json: @ci, status: :created, location: @ci }
      else
        format.html { render action: "new" }
        format.json { render json: @ci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cis/1
  # PUT /cis/1.json
  def update
    @ci = Ci.find(params[:id])

    respond_to do |format|
      if @ci.update_attributes(params[:ci])
        format.html { redirect_to @ci, notice: 'Ci was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cis/1
  # DELETE /cis/1.json
  def destroy
    @ci = Ci.find(params[:id])
    @ci.destroy

    respond_to do |format|
      format.html { redirect_to cis_url }
      format.json { head :no_content }
    end
  end
end
