class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def edit
    @the_student = Student.find(params[:id])
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save

    redirect_to "/students/#{@student.id}"
    # { :first_name => "Sam", :last_name => "Smith" }
  end

end


# FORMS
