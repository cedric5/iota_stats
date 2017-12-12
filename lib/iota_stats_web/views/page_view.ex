defmodule IotaStatsWeb.PageView do
  use IotaStatsWeb, :view
alias IotaStatsWeb.IotaController
  def current_value do
    IotaController.current_value
  end

  def cedric_holding do
    Float.round(IotaController.calculate_holding(3392),0)
  end
   def cedric_profit do
    Float.round(IotaController.calculcate_profit(cedric_holding,3532),2)
   end

   def mark_holding do
    Float.round(IotaController.calculate_holding(1672),2)
  end
   def mark_profit do
    Float.round(IotaController.calculcate_profit(mark_holding,1698),2)
   end

   def total_profit do
     mark_profit + cedric_profit
   end
end
