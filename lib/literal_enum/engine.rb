module LiteralEnum
  class Engine < ::Rails::Engine
    isolate_namespace LiteralEnum

    initializer "literal_enum.active_record" do
      ActiveSupport.on_load :active_record do
        include LiteralEnum::Binder
      end
    end
  end
end
