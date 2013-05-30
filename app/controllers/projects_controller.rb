class ProjectsController < ApplicationController
  helper_method :sort_column, :sort_direction
  # GET /projects.json
  def index
    @projects = Project.all
    @projects = Project.order(sort_column + " " + sort_direction)
    #@paginated = @projects.order(sort_column + "" + sort_direction).paginate(:per_page=>100, :page => params[:page]) unless @projects.blank?
    #@manufacturers ||Project.manufacturers

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end
  def upload
    uploaded_io = params[:project][:attachment]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
      file.write(uploaded_io.read)
    end
  end
  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new
    @project.build_ci

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  #def attachment
    #t = Time.now.strftime("%Y%m%d%H%M%S")
    #uploaded_io = params[:attachment]
    #File.open(Rails.root.join('public', 'upload', uploaded_io.original_filename), 'wb') do |file|
    #file.write(uploaded_io.read)
    #end
  #end
  def create
    @project = Project.new(params[:project])
    @project.create_ci(params[:project][:ci_attributes])
    #@paginated =@projects.order(sort_column + " " + sort_direction).paginate(:per_page => 100, :page => params[:page]) unless @projects.blank?
    #@manufacturers ||= Part.manufacturers
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  #@user =User.create( params[:user])
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
  #def sort_column
    #Project.column_names.include?(params[:sort]) ? params[:sort] : "project_number"
  #end
  
  #def sort_direction
    #%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  #end
end

private

def sort_column
  Project.column_names.include?(params[:sort]) ? params[:sort] : "updated_on"
end

def sort_direction
  %w[asc desc].include?(params[:direction])? params[:direction]: "desc"
end

