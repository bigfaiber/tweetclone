module ApplicationHelper
  include Pagy::Frontend
  def decorate(model, decorate_class = nil)
    (decorate_class || "#{model.class}Decorator".constantize).new(model)
  end
end
