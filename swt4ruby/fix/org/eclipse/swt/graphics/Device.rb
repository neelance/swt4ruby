begin
  Org::Eclipse::Swt::Internal::Cairo.module_eval do
    Cairo = SwtCairo
  end
rescue NameError
end
