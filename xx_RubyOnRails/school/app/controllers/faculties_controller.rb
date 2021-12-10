class FacultiesController < ApplicationController
  def show
    @faculty = Faculty.find(params[:id])

    @students = Student.all
  end
end
