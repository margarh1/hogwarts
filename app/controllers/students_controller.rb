class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @house = Houses.find(@student.house_id)
  end

  def new
    @student = Student.new
  end

  def create
    student_params = params.require(:student).permit(:name, :img_url)
    house = Houses.all.sample
    @student = Student.new(student_params)
    @student[:house_id] = house.id
    if @student.save
      flash[:notice] = "Welcome to #{house.name}!"
      redirect_to student_path(@student)
    else
      flash[:notice] = "Hmmm. It seems the Sorting Hat needs another moment or two..."
      redirect_to new_student_path
    end
  end

end