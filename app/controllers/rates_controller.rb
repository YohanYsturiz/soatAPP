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
        @rate = Coche.select('coches.id', 'coches.placa', 'coches.propietario', 'coches.edad', 'coches.clase', 'rates.runt', 'classifications.descripcion', 'rates.value_prima', 'rates.contribucion', 'rates.subtotal', 'rates.total', 'rates.id_rates').joins("INNER JOIN rates ON rates.classification_id = coches.clase").joins("INNER JOIN classifications ON classifications.id_classification = coches.clase").find(params[:id])
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
