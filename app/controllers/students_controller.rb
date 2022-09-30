class StudentsController < ApplicationController

  def index
    students = if params[:first_name]
                 Student.find_by(first_name:params[:first_name].capitalize)
    elsif params[:last_name]
          Student.find_by(last_name:params[:last_name].capitalize)
    else
                 Student.all
               end    
    render json: students
  end
  

  def show
    student = Student.find(params[:id])
    render json: student
  end

end