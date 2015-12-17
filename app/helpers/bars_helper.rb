module BarsHelper
  def bar_params
    params.require(:bar).permit(:name, :address, :about)
  end
end
