class CochesController < ApplicationController
  before_action :set_coche, only: [:show, :edit, :update, :destroy]

  # GET /coches
  # GET /coches.json
  def index
    @coches = Coche.select('coches.id', 'coches.placa', 'coches.propietario', 'coches.created_at', 'rates.runt', 'classifications.descripcion', 'rates.value_prima', 'rates.contribucion', 'rates.subtotal', 'rates.total').joins("INNER JOIN rates ON rates.classification_id = coches.clase").joins("INNER JOIN classifications ON classifications.id_classification = coches.clase").where('rates.typeclassification_id = coches.subtipo').distinct
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'coches/pdf', pdf: 'pdf' }
    end
  end

  # GET /coches/1
  # GET /coches/1.json
  def show
    #respond_to do |format|
    #----------------#  
      #html = render_to_string(:action => :show) 
      #pdf = WickedPdf.new.pdf_from_string(html) 
      
      #send_data(pdf, 
        #:filename => "resumen.pdf", 
        #:disposition => 'attachment')
    #-------- hasta representa el PDF de registro de Vehiculo --------#    
      # format.pdf { render template: 'coches/pdf_resumen', pdf: 'pdf' }
    #end
  end
  
  def show_one
    @resumen_coche = Coche.select('coches.id', 'coches.placa', 'coches.propietario', 'coches.edad', 'coches.clase', 'rates.runt', 'classifications.descripcion', 'rates.value_prima', 'rates.contribucion', 'rates.subtotal', 'rates.total', 'rates.id_rates').joins("INNER JOIN rates ON rates.classification_id = coches.clase").joins("INNER JOIN classifications ON classifications.id_classification = coches.clase").find(params[:id])
  end 
  
  # GET /coches/new
  def new
    @coche = Coche.new
  end
  
  # GET /coches/1/edit
  def edit
  end
  
  def search_placa
    @respuesta = false;
      if request.post?
        @coche = Coche.find_by(placa: params[:placa])
        if @coche
          respond_to do |format|
            format.html { redirect_to authenticated_root_path, notice: 'El coche se encuentra registrado' }
            format.json { render :show, status: :created, location: @coche }
          end
        else 
          redirect_to '/coches/new?placa=' + params[:placa], notice: '¡El coche no se encuentra registrado, Puede registrarlo llenando el siguiente formulario!'
        end
      end
  end

  # POST /coches
  # POST /coches.json
  def create
    @coche = Coche.new(coch_params) #Student.new(:name => "a", :age => 2)
    #abort(coch_params)
    respond_to do |format|
      if @coche.save
        format.html { redirect_to @coche, notice: 'Vehiculo Registrado Satisfactoriamente' }
        format.json { render :show, status: :created, location: @coche }
        format.pdf {render template: 'coches/pdf', pdf: 'pdf'}
      else
        format.html { render :new }
        format.json { render json: @coche.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coches/1
  # PATCH/PUT /coches/1.json
  def update
    respond_to do |format|
      if @coche.update(coch_params)
        format.html { redirect_to action: :show_one, id: @coche.id, placa: @coche.placa, notice: 'Compra realizada Satisfactoriamente' }
        format.json { render :show, status: :ok, location: @coche }
        @descripcion_poliza = Rate.joins(:classification).find_by(classification_id: @coche.clase)
        Welcome.notify(@coche.email_tomador,@coche,@descripcion_poliza).deliver_now
      else
        format.html { render :edit }
        format.json { render json: @coche.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coches/1
  # DELETE /coches/1.json
  def destroy
    @coche.destroy
    respond_to do |format|
      format.html { redirect_to coches_url, notice: 'Coche was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coche
      @coche = Coche.select('coches.id', 'coches.placa', 'coches.propietario', 'coches.edad', 'coches.clase', 'rates.runt', 'classifications.descripcion', 'rates.value_prima', 'rates.contribucion', 'rates.subtotal', 'rates.total', 'rates.id_rates').joins("INNER JOIN rates ON rates.classification_id = coches.clase").joins("INNER JOIN classifications ON classifications.id_classification = coches.clase").find(params[:id])
      #Coche.select('coches.id', 'coches.placa', 'coches.propietario', 'rates.runt', 'classifications.descripcion', 'rates.value_prima', 'rates.contribucion', 'rates.subtotal', 'rates.total').joins("INNER JOIN rates ON rates.classification_id = coches.clase").joins("INNER JOIN classifications ON classifications.id_classification = coches.clase").where('rates.typeclassification_id = coches.subtipo')
      @descripcion_poliza_valor = Rate.find_by(classification_id: params[:clase])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coch_params
      #abort(params[:clase])
      params.require(:coche).permit(:placa, :clase, :subtipo, :edad, :propietario, :users_id, :tipo_documento, :numero_documento, :nombre_tomador, :apellido_tomador, :email_tomador, :telefono_tomador, :pago_poliza)
    end
end
