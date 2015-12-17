module CavesHelper

  def cafe_params
    params.require(:cafe).permit(:name, :address, :about)
  end
end
