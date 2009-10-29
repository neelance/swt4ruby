require "rjava"
require "jre4ruby"

Java::Lang::System.set_property "swt.library.path", File.expand_path("swt4ruby/lib/#{RJava::PLATFORM}", File.dirname(__FILE__))

add_class_path "swt4ruby/lib/#{RJava::PLATFORM}", "swt4ruby/fix"

class Swt4Ruby
  include Org::Eclipse::Swt
  include Org::Eclipse::Swt::Widgets
  include Org::Eclipse::Swt::Layout

  def self.replace_symbols(args)
    args.map { |arg| arg.is_a?(Symbol) ? Org::Eclipse::Swt::SWT.const_get(arg.to_s.upcase) : arg }
  end

  class Listener
    def initialize(method_name, *interfaces, &block)
      listener_class = (class << self; self; end)
      listener_class.class_eval do
        #interfaces.each { |interface| include interface }
        define_method method_name do |*args|
          block.call *args
        end
      end
    end

    def method_missing(name, *args)
      # ignore
    end
  end

  module AccessorAliases
    def self.extend_object(cls)
      cls.class_eval do
        methods = instance_methods(false)
        methods.each do |name|
          name = name.to_s
          new_name = if name =~ /^get_(.*)$/
            "#{$1}".to_sym
          elsif name =~ /^set_(.*)$/
            "#{$1}=".to_sym
          else
            nil
          end
          alias_method new_name, name unless new_name.nil? or methods.include?(new_name)
        end

        def self.inherited(subcls)
          subcls.when_class_loaded {
            subcls.extend AccessorAliases
          }
        end
      end
    end
  end

  module CreateMethod
    def create(parent, styles, &block)
      style_mask = Swt4Ruby.replace_symbols(styles).inject(0) { |v, style| v | style }
      widget = self.new(parent, style_mask)
      widget.instance_eval &block if block
      widget
    end
  end

  module NewGraphicsMethods
    def new_color(*args, &block)
      Org::Eclipse::Swt::Graphics::Color.new find_display, *args
    end

    def new_font(*args, &block)
      Org::Eclipse::Swt::Graphics::Font.new find_display, *args
    end

    def new_image(*args, &block)
      Org::Eclipse::Swt::Graphics::Image.new find_display, *args
    end

    def new_point(x, y)
      Org::Eclipse::Swt::Graphics::Point.new x, y
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

Java::Util::EventObject.class_eval do
  include Swt4Ruby::AccessorAliases
end
