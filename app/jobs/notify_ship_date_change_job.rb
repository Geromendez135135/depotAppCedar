class NotifyShipDateChangeJob < ApplicationJob
  queue_as :default

  def perform(order)
    # Do something later
    order.notify_ship_date_change(order)
  end
end
