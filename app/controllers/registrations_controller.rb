class RegistrationsController < ApplicationController
  def students
  	@my_student = "Nipun"
  	#render :faculty
  	#redirect_to faculty_path
  end

  def faculty
  	@my_faculty = "Srinivas"
  end
end
