class TuteesController < ApplicationController
<<<<<<< HEAD
  def signup
  end
  
  def new
    @tutee = Tutee.new
  end
  
  def show
    @tutee = Tutee.find(params[:id])
  end
  
=======
  def new
    @tutee = Tutee.new
  end
  def show
    @tutee = Tutee.find(params[:id])
  end
>>>>>>> 26edaf15d8106595c13cf7c57b1534876f3e1881
  def create
    @tutee = Tutee.new(tutee_params)
    if @tutee.save
      
    else
      render 'new'
    end
  end
<<<<<<< HEAD
  
  def tutee_params
      params.require(:tutee).permit(:name, :email, :password, :gradYear, :student_id, :password_confirmation)
  end
end
=======
  def tutee_params
      params.require(:tutee).permit(:name, :email, :password, :gradYear, :student_id, :password_confirmation)
  end
<<<<<<< HEAD

end
=======
 end
>>>>>>> 2e8f54c59f412c13620ed903bfe8678d1e5649c4
>>>>>>> 26edaf15d8106595c13cf7c57b1534876f3e1881
