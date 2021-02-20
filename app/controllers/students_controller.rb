require 'pry'

class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    #binding.pry
  end

  def new
    
  end

  def create
    #binding.pry
    @student = Student.new
    @student.first_name= params["student"]["first_name"]
    @student.last_name= params["student"]["last_name"]
    #binding.pry
    @student.save
    redirect_to student_path(@student)
  end

end
