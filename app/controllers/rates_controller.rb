class RatesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @rates = Rate.joins(:classification, :typeclassification)
    respond_to do |format|
      format.html
      format.json
    end
  end 

  def show
  end
  
  def pdf_cotizacion
  end 
  
  # GET /rates/new
  def new
    @rate = Rate.new
  end    
  
  def no_cubre
  
  end
      
  def combo_subtipo
    @rate = Rate.find(:all, :conditions => ['id_classification = ?', params[:combo_clase_id]]) 
  end
  
  def options
    abort(params[:clase])
    @combo = Rate.joins(:classification, :typeclassification).find_by(classification_id: params[:clase])
  end
  
  def cotizacion
    @respuesta = false;
    #abort(params[:clase])
      if request.get?
        @rate = Rate.joins(:classification, :typeclassification).find_by(classification_id: params[:clase], typeclassification_id: params[:subtipo])
        #Category.joins(:products).where(products: {quantity: 0})
        if @rate
          #respond_to do |format|
            #format.html { redirect_to @coche, notice: 'El coche se encuentra registrado' }
            #format.json { render :show, status: :created, location: @coche }
          #end
          html = render_to_string(:action => :pdf_cotizacion) 
          pdf = WickedPdf.new.pdf_from_string(html) 
          
          send_data(pdf, 
          :filename => "resumen.pdf", 
          :disposition => 'attachment')
        else 
          redirect_to '/rates/no_cubre', notice: '¡No se encuentra una cotizacion para su Vehiculo!'
        end
      end
  end
end
