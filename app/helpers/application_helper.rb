module ApplicationHelper
  def flash_class(level)
    case level
      when "notice" then "is-primary"
      when "success" then "is-success"
      when "error" then "is-danger"
      when "alert" then "is-warning"
    end
  end

  def copyright
    link_to "\u00A9 Copyright Duval the Dev #{Time.now.year}. All rights reserved.", "https://github.com/bvdmind/duval-the-dev"
  end

  def main_content_position_sampler
    variations = [render("layouts/main_left"), render("layouts/main_right")]
    variations.sample
  end
end
