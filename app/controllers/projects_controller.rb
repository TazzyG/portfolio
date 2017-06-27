class ProjectsController < ApplicationController

	before_action :authenticate_user!,  except: [:show]
	before_action :set_project, only: [:show, :edit, :update, :destroy]

def new
	@project = current_user.projects.build

end

def create
	@project = Project.new(project_params)
	@project.user_id = current_user.id
	if @project.save
		redirect_to @project, notice: "project was successfully created"
	else
		render action: "new"
	end

end

def edit

end

def update
	if @project.update(project_params)
		redirect_to @project, notice: "project was updated"
	else
		render action: "edit"
	end
 
end

def destroy
	@project.destroy
	redirect_to root_path
end

private
	def set_project
		@project = Project.find(params[:id])
	end

	def project_params
		params.require(:project).permit(:image, :image_cache, :title, :content, :link, :site_name , :tag_list)
	end
end


