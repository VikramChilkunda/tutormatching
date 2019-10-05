class CvstudentsController < ApplicationController
   skip_before_filter :verify_authenticity_token  
   
  def gohere
    
  end
  
  def import_from_excel
     file = params[:file]
          begin
            file_ext = File.extname(file.original_filename)
            raise "Unknown file type: #{file.original_filename}" unless [".xls", ".xlsx"].include?(file_ext)
            spreadsheet = (file_ext == ".xls") ? Roo::Excel.new(file.path) : Roo::Excelx.new(file.path)
            header = spreadsheet.row(1)
            ## We are iterating from row 2 because we have left row one for header
            (1..spreadsheet.last_row).each do |i|
              Cvstudent.create(idnum: spreadsheet.row(i)[2])
            end
            flash[:success] = "Records Imported"
            redirect_to adminPage_path 
          rescue Exception => e
            flash[:error] = "Issues with file"
            redirect_to home_path 
          end
  end
  
  def clear
    Cvstudent.all.each do |i|
      i.destroy
    end
    redirect_back(fallback_location: import_from_excel_path)
  end
  
  def destroy
    Cvstudent.find(params[:id]).destroy
  end
end
