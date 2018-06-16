class ProjectInfosController < ApplicationController
	before_action :authenticate_user!
	before_action :set_project_info, only: [:show, :destroy]
	before_action :set_project

	def index
		@project_infos = ProjectInfo.all
	end

	def new
	end

	def create
		@project.project_infos.create(project_info_params)
	end

	def show
	end

	def destroy
		@project_info.destroy
		redirect_to @project, notice: "project_info successfully destroyed"
	end



	private
		def set_project_info
			@project_info = ProjectInfo.find(params[:id])
		end

		def set_project
			@project = Project.find(params[:project_id])
		end

		def project_info_parms
			params.require(:project_info).permit(:image, :info)
		end



end