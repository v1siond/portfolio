class VisitorsController < ApplicationController
  def index
    @back_end_skills = Skill.where(type_: 'back-end')
  	@front_end_skills = Skill.where(type_: 'front-end')
  	@projects = Project.all
  end

  def contact_me
    name = params[:name]
    email = params[:email]
    message = params[:message]

    VisitorMailer.contact_me(name, email, message).deliver_later

    redirect_to root_path, notice: 'Your mail has been send successfuly'
  end
end
