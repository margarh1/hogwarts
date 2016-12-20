class HousesController < ApplicationController

  def index
    @houses = Houses.all
  end

  def show
    @house = Houses.find(params[:id])
    @students = Student.where("house_id = #{@house.id}")
  end

end