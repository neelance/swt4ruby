require "converter/converter"

dir = "#{File.dirname __FILE__}/swt4ruby"
controller = Java2Ruby::ConversionController.new

controller.add_is_constant_hook do |converter, name, value|
  name == "lock" || (!%w{CurrentDevice DEBUG DeviceFinder SWT_RESTORECARET TrimEnabled}.include?(name) && value)
end

controller.add_ruby_constant_name_hook do |converter, name|
  if name == "PLATFORM"
    "SWT_PLATFORM"
  else
    nil
  end
end

controller.add_ruby_class_name_hook do |converter, package, names|
  if %w{GC GCData Layout Monitor List LONG}.include?(names.first)
    name_parts = []
    name_parts << @package.ruby_name unless @package.nil? or @package.root?
    name_parts << "Swt#{names.shift}"
    name_parts.concat names
    name_parts.join "::"
  else
    nil
  end
end

controller.add_ruby_constant_name_hook do |converter, name|
  if name == "lock"
    "PLATFORM_LOCK"
  else
    nil
  end
end

controller.add_ruby_field_name_hook do |converter, name|
  if [%w{fixedClassInitProc fixedMapProc fixedSizeAllocateProc oldFixedSizeAllocateProc rendererClassInitProc rendererRenderProc rendererGetSizeProc}].include?(name)
		"#{RJava.lower_name name}_address"
  else
		nil
  end
end

controller.add_files "#{dir}/src", "#{dir}/lib", Dir.dir_glob("#{dir}/src", "**/*")

controller.run $process_count
