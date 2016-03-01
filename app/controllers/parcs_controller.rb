class ParcsController < ApplicationController
  def index
    render json: {
      meta: {
        count: Parc.count,
        page: 0
      },
      parcs: Parc.order(:name, :description, :city)
  end
  
  def show
    parc = Parc.find(params[:id])
    render json: { parc: parc }
  end

  def create
    if parc = Parc.create(parc_params)
      render json: { parc: parc }
    else
      render json: {
        message: "Create parc failled",
        errors: parc.errors,
      }, status: :unprocessible_entity
    end
  end

  def update
    parc = Parc.find(params[:id])

    if parc.update(parc_params)
      render json: { parc: parc }
    else
      render json: {
        message: "Could not update parc",
        errors: parc.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    parc = Parc.find(params[:id])

    if parc.destroy
      render json: { parc: nil }
    else
      render json: {
        message: "Not able to delete parc, please try again",
      }, status: :unprocessible_entity
    end
  end

  private

  def parc_params
    params.require(:parc).permit(:name, :description, :city)
  end
end
