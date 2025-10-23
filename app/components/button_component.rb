# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  include Heroicons::Engine.helpers

  attr_reader :label, :path, :icon, :style, :variant, :html_options

  def initialize(label, path, options = {})
    super

    @label = label
    @path = path
    @icon = options.delete(:icon)
    @style = options.delete(:style) || :primary
    @variant = options.delete(:variant)
    @html_options = options
  end

  def css
    "#{style_class} #{variant_class}"
  end

  private

  def variant_class
    case variant.to_s
    when "mini"
      "py-1 px-2 text-sm"
    else
      "py-2 px-6"
    end
  end

  def style_class
    case style.to_s
    when "primary"
      "bg-primary text-white"
    when "secondary"
      "border border-stroke"
    else
      ""
    end
  end
end
