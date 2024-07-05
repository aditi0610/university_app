class StudentsController < ApplicationController
   skip_before_Action :require_user, only: [:new, :create]
   before_action :set_student, only: [:show, :edit, :update]
	def index
		@students = Student.all
	end

    def show
    	#@student = Student.find(params[:id])
    	
    end

	def new
		@student = Student.new
	end

    def create
    	@student = Student.new(student_params)
    	if @student.save
    		flash[:notice] = "You have successfully signed up"
    		#redirect_to root_path
    		redirect_to @student
    	else
    	  render 'new'
    end
    end

    def edit
    	#@student = Student.find(params[:id])
	end

	def update
    	#@student = Student.find(params[:id])
    	if @student.update(student_params)
    		flash[:notice] = "You have successfully updated your profile"
    		#redirect_to student_path(@student) or
    		redirect_to @student
    	else
    		render 'edit'
    		
    	end
	end


    private 

    def set_student
    	@student = Student.find(params[:id])

    end

    def student_params
    	params.require(:student).permit(:name, :email, :password, :password_confirmation)
    	
    end
   

end