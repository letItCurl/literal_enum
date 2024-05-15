module LiteralEnum::Binder
  extend ActiveSupport::Concern

  class_methods do
    def literal_enum(name = nil, values = nil, **options)
      if values.is_a?(Array)
        values = values.map { |value| [value] * 2 }.to_h
      end

      enum(name, values, **options)
    end
  end
end
