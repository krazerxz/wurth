module ApplicationHelper
  FLASH_TYPES = {
    "alert" => "danger",
    "error" => "danger",
    "notice" => "info"
  }.freeze

  def bootstrap_class_for_flash type
    FLASH_TYPES[type] || type
  end
end
