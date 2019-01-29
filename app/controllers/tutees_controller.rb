class TuteesController < ApplicationController
  def new
    @tutee_person = TuteePerson.new
  end
  
  def edit
     @tutee = Tutee.find(params[:id])
     @person = Person.find(@tutee.people_id)
     @tutee_person = TuteePerson.new({:name => @person.name, :email => @person.email})
  end
  
  def show
     @tutee = Tutee.find(params[:id])
     @person = Person.find(@tutee.people_id)
     @tutee_person = TuteePerson.new({:name => @person.name, :email => @person.email})
  end
  
  def create
    @tutee_person = tutee_person
    @person = Person.find_or_initialize_by email: tutee_params[:email]
    @person.name = tutee_params[:name]
    @person.password = tutee_params[:password]
    @person.password_confirmation = tutee_params[:password_confirmation]
    @tutee = @person.build_tutee
    
    if @person.save
      flash[:success] = "Congratulations on signing up to be tutored!"
      redirect_to action: "show", id: @tutee.id
    else 
      flash[:error] = @person.errors.full_messages
      render 'new'
    end
  end
  
  private
  
  def tutee_params
      params.require(:tutee_person).permit(:name, :email, :password, :password_confirmation)
  end
  
  def tutee_person
    TuteePerson.new(tutee_params)
  end
end