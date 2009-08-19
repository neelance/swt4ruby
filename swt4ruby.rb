require "rjava"
require "jre4ruby"

Java::Lang::System.set_property "swt.library.path", "#{File.dirname(__FILE__)}/swt4ruby/ext/#{RUBY_PLATFORM}"

lib_path = "#{File.dirname(__FILE__)}/swt4ruby/lib/#{RUBY_PLATFORM}"
fix_path = "#{File.dirname(__FILE__)}/swt4ruby/fix"

add_class_loader { |package_path|
  dirs, names = list_paths "#{lib_path}/#{package_path}"
  
  dirs.each do |dir|
    import_package dir, package_path
  end
  
  names.each do |name|
    file_path = "#{package_path}/#{name}.rb"
    if File.exist?("#{fix_path}/#{file_path}")
      import_class name, "swt4ruby/lib/#{RUBY_PLATFORM}/#{file_path}", "swt4ruby/fix/#{file_path}"
    else
      import_class name, "swt4ruby/lib/#{RUBY_PLATFORM}/#{file_path}"
    end
  end
}

class Swt4Ruby
  include Org::Eclipse::Swt
  include Org::Eclipse::Swt::Widgets
  include Org::Eclipse::Swt::Layout

  class Listener
    def initialize(method_name, &block)
      listener_class = (class << self; self; end)
      listener_class.class_eval do
        define_method method_name do |e|
          block.call e
        end
      end
    end

    def method_missing(name, *args)
      # ignore
    end
  end

  module SetterAliases
    def self.extend_object(cls)
      cls.class_eval do
        instance_methods(false).each do |method|
          if method =~ /^set_(.*)$/
            alias_method "#{$1}=", method
          end
        end

        def self.inherited(subcls)
          class_inherited subcls
          subcls.when_class_loaded {
            subcls.extend SetterAliases
          }
        end
      end
    end
  end

  module CreateMethod
    def create(parent, styles, &block)
      style_mask = styles.inject(0) { |v, style| v | (style.is_a?(Symbol) ? Org::Eclipse::Swt::SWT.const_get(style.to_s.upcase) : style) }
      widget = self.new(parent, style_mask)
      widget.instance_eval &block if block
      widget
    end
  end

  module NewGraphicsMethods
    def new_image(*args, &block)
      Org::Eclipse::Swt::Graphics::Image.new find_display, *args
    end
  end

  module NewWidgetMethods
    def new_browser(*styles, &block)
      Org::Eclipse::Swt::Browser::Browser.create find_composite, styles, &block
    end

    def new_button(*styles, &block)
      Org::Eclipse::Swt::Widgets::Button.create find_composite, styles, &block
    end

    def new_c_banner(*styles, &block)
      Org::Eclipse::Swt::Custom::CBanner.create find_composite, styles, &block
    end

    def new_c_combo(*styles, &block)
      Org::Eclipse::Swt::Custom::CCombo.create find_composite, styles, &block
    end

    def new_c_label(*styles, &block)
      Org::Eclipse::Swt::Custom::CLabel.create find_composite, styles, &block
    end

    def new_c_tab_folder(*styles, &block)
      Org::Eclipse::Swt::Custom::CTabFolder.create find_composite, styles, &block
    end

    def new_canvas(*styles, &block)
      Org::Eclipse::Swt::Widgets::Canvas.create find_composite, styles, &block
    end

    def new_combo(*styles, &block)
      Org::Eclipse::Swt::Widgets::Combo.create find_composite, styles, &block
    end

    def new_composite(*styles, &block)
      Org::Eclipse::Swt::Widgets::Composite.create find_composite, styles, &block
    end

    def new_cool_bar(*styles, &block)
      Org::Eclipse::Swt::Widgets::CoolBar.create find_composite, styles, &block
    end

    def new_date_time(*styles, &block)
      Org::Eclipse::Swt::Widgets::DateTime.create find_composite, styles, &block
    end

    def new_expand_bar(*styles, &block)
      Org::Eclipse::Swt::Widgets::ExpandBar.create find_composite, styles, &block
    end

    def new_group(*styles, &block)
      Org::Eclipse::Swt::Widgets::Group.create find_composite, styles, &block
    end

    def new_label(*styles, &block)
      Org::Eclipse::Swt::Widgets::Label.create find_composite, styles, &block
    end

    def new_link(*styles, &block)
      Org::Eclipse::Swt::Widgets::Link.create find_composite, styles, &block
    end

    def new_list(*styles, &block)
      Org::Eclipse::Swt::Widgets::SwtList.create find_composite, styles, &block
    end

    def new_progress_bar(*styles, &block)
      Org::Eclipse::Swt::Widgets::ProgressBar.create find_composite, styles, &block
    end

    def new_sash(*styles, &block)
      Org::Eclipse::Swt::Widgets::Sash.create find_composite, styles, &block
    end

    def new_sash_form(*styles, &block)
      Org::Eclipse::Swt::Custom::SashForm.create find_composite, styles, &block
    end

    def new_scale(*styles, &block)
      Org::Eclipse::Swt::Widgets::Scale.create find_composite, styles, &block
    end

    def new_scrolled_composite(*styles, &block)
      Org::Eclipse::Swt::Custom::ScrolledComposite.create find_composite, styles, &block
    end

    def new_slider(*styles, &block)
      Org::Eclipse::Swt::Widgets::Slider.create find_composite, styles, &block
    end

    def new_spinner(*styles, &block)
      Org::Eclipse::Swt::Widgets::Spinner.create find_composite, styles, &block
    end

    def new_styled_text(*styles, &block)
      Org::Eclipse::Swt::Custom::StyledText.create find_composite, styles, &block
    end

    def new_tab_folder(*styles, &block)
      Org::Eclipse::Swt::Widgets::TabFolder.create find_composite, styles, &block
    end

    def new_table(*styles, &block)
      Org::Eclipse::Swt::Widgets::Table.create find_composite, styles, &block
    end

    def new_text(*styles, &block)
      Org::Eclipse::Swt::Widgets::Text.create find_composite, styles, &block
    end

    def new_tool_bar(*styles, &block)
      Org::Eclipse::Swt::Widgets::ToolBar.create find_composite, styles, &block
    end

    def new_tree(*styles, &block)
      Org::Eclipse::Swt::Widgets::Tree.create find_composite, styles, &block
    end

    def new_view_form(*styles, &block)
      Org::Eclipse::Swt::Custom::ViewForm.create find_composite, styles, &block
    end
  end

  def self.new_display(&block)
    display = Display.new
    display.instance_eval &block if block
    display
  end
end
