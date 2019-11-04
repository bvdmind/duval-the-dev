module ApplicationHelper
  def flash_class(level)
    case level
      when "notice" then "is-primary"
      when "success" then "is-success"
      when "error" then "is-danger"
      when "alert" then "is-warning"
    end
  end
end
