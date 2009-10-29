if Org::Eclipse::Swt::Internal.const_defined? :Cairo
  Org::Eclipse::Swt::Internal::Cairo.module_eval do
    Cairo = Org::Eclipse::Swt::Internal::Cairo::SwtCairo
  end
end
