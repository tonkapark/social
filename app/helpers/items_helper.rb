module ItemsHelper

  def safe(txt)
    sanitize(txt, :tags => %w(a), :attributes => %w(href)).split("\n").join("\n<br />")
  end
  
end
