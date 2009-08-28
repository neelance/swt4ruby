require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module DecorationsImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide the appearance and
  # behavior of <code>Shells</code>, but are not top
  # level shells or dialogs. Class <code>Shell</code>
  # shares a significant amount of code with this class,
  # and is a subclass.
  # <p>
  # IMPORTANT: This class was intended to be abstract and
  # should <em>never</em> be referenced or instantiated.
  # Instead, the class <code>Shell</code> should be used.
  # </p>
  # <p>
  # Instances are always displayed in one of the maximized,
  # minimized or normal states:
  # <ul>
  # <li>
  # When an instance is marked as <em>maximized</em>, the
  # window manager will typically resize it to fill the
  # entire visible area of the display, and the instance
  # is usually put in a state where it can not be resized
  # (even if it has style <code>RESIZE</code>) until it is
  # no longer maximized.
  # </li><li>
  # When an instance is in the <em>normal</em> state (neither
  # maximized or minimized), its appearance is controlled by
  # the style constants which were specified when it was created
  # and the restrictions of the window manager (see below).
  # </li><li>
  # When an instance has been marked as <em>minimized</em>,
  # its contents (client area) will usually not be visible,
  # and depending on the window manager, it may be
  # "iconified" (that is, replaced on the desktop by a small
  # simplified representation of itself), relocated to a
  # distinguished area of the screen, or hidden. Combinations
  # of these changes are also possible.
  # </li>
  # </ul>
  # </p>
  # Note: The styles supported by this class must be treated
  # as <em>HINT</em>s, since the window manager for the
  # desktop on which the instance is visible has ultimate
  # control over the appearance and behavior of decorations.
  # For example, some window managers only support resizable
  # windows and will always assume the RESIZE style, even if
  # it is not set.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BORDER, CLOSE, MIN, MAX, NO_TRIM, RESIZE, TITLE, ON_TOP, TOOL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # Class <code>SWT</code> provides two "convenience constants"
  # for the most commonly required style combinations:
  # <dl>
  # <dt><code>SHELL_TRIM</code></dt>
  # <dd>
  # the result of combining the constants which are required
  # to produce a typical application top level shell: (that
  # is, <code>CLOSE | TITLE | MIN | MAX | RESIZE</code>)
  # </dd>
  # <dt><code>DIALOG_TRIM</code></dt>
  # <dd>
  # the result of combining the constants which are required
  # to produce a typical application dialog shell: (that
  # is, <code>TITLE | CLOSE | BORDER</code>)
  # </dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see #getMinimized
  # @see #getMaximized
  # @see Shell
  # @see SWT
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Decorations < DecorationsImports.const_get :Canvas
    include_class_members DecorationsImports
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :images
    alias_method :attr_images, :images
    undef_method :images
    alias_method :attr_images=, :images=
    undef_method :images=
    
    attr_accessor :menu_bar
    alias_method :attr_menu_bar, :menu_bar
    undef_method :menu_bar
    alias_method :attr_menu_bar=, :menu_bar=
    undef_method :menu_bar=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :minimized
    alias_method :attr_minimized, :minimized
    undef_method :minimized
    alias_method :attr_minimized=, :minimized=
    undef_method :minimized=
    
    attr_accessor :maximized
    alias_method :attr_maximized, :maximized
    undef_method :maximized
    alias_method :attr_maximized=, :maximized=
    undef_method :maximized=
    
    attr_accessor :saved_focus
    alias_method :attr_saved_focus, :saved_focus
    undef_method :saved_focus
    alias_method :attr_saved_focus=, :saved_focus=
    undef_method :saved_focus=
    
    attr_accessor :default_button
    alias_method :attr_default_button, :default_button
    undef_method :default_button
    alias_method :attr_default_button=, :default_button=
    undef_method :default_button=
    
    typesig { [] }
    def initialize
      @image = nil
      @images = nil
      @menu_bar = nil
      @text = nil
      @minimized = false
      @maximized = false
      @saved_focus = nil
      @default_button = nil
      super()
      @images = Array.typed(Image).new(0) { nil }
      @text = ""
      # Do nothing
    end
    
    typesig { [Composite, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p>
    # 
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#BORDER
    # @see SWT#CLOSE
    # @see SWT#MIN
    # @see SWT#MAX
    # @see SWT#RESIZE
    # @see SWT#TITLE
    # @see SWT#NO_TRIM
    # @see SWT#SHELL_TRIM
    # @see SWT#DIALOG_TRIM
    # @see SWT#ON_TOP
    # @see SWT#TOOL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @image = nil
      @images = nil
      @menu_bar = nil
      @text = nil
      @minimized = false
      @maximized = false
      @saved_focus = nil
      @default_button = nil
      super(parent, check_style(style))
      @images = Array.typed(Image).new(0) { nil }
      @text = ""
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if (!((style & SWT::NO_TRIM)).equal?(0))
          style &= ~(SWT::CLOSE | SWT::TITLE | SWT::MIN | SWT::MAX | SWT::RESIZE | SWT::BORDER)
        end
        if (!((style & (SWT::MENU | SWT::MIN | SWT::MAX | SWT::CLOSE))).equal?(0))
          style |= SWT::TITLE
        end
        return style
      end
    }
    
    typesig { [::Java::Boolean] }
    def bring_to_top(force)
      move_above(nil)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [ImageData, ImageData] }
    def compare(data1, data2)
      if ((data1.attr_width).equal?(data2.attr_width) && (data1.attr_height).equal?(data2.attr_height))
        transparent1 = data1.get_transparency_type
        transparent2 = data2.get_transparency_type
        if ((transparent1).equal?(SWT::TRANSPARENCY_ALPHA))
          return -1
        end
        if ((transparent2).equal?(SWT::TRANSPARENCY_ALPHA))
          return 1
        end
        if ((transparent1).equal?(SWT::TRANSPARENCY_MASK))
          return -1
        end
        if ((transparent2).equal?(SWT::TRANSPARENCY_MASK))
          return 1
        end
        if ((transparent1).equal?(SWT::TRANSPARENCY_PIXEL))
          return -1
        end
        if ((transparent2).equal?(SWT::TRANSPARENCY_PIXEL))
          return 1
        end
        return 0
      end
      return data1.attr_width > data2.attr_width || data1.attr_height > data2.attr_height ? -1 : 1
    end
    
    typesig { [] }
    def compute_tab_group
      return self
    end
    
    typesig { [] }
    def compute_tab_root
      return self
    end
    
    typesig { [Decorations, Control, Array.typed(Menu)] }
    def fix_decorations(new_decorations, control, menus)
      if ((self).equal?(new_decorations))
        return
      end
      if ((control).equal?(@saved_focus))
        @saved_focus = nil
      end
      if ((control).equal?(@default_button))
        @default_button = nil
      end
      if ((menus).nil?)
        return
      end
      menu = control.attr_menu
      if (!(menu).nil?)
        index = 0
        while (index < menus.attr_length)
          if ((menus[index]).equal?(menu))
            control.set_menu(nil)
            return
          end
          index += 1
        end
        menu.fix_menus(new_decorations)
      end
    end
    
    typesig { [] }
    # Returns the receiver's default button if one had
    # previously been set, otherwise returns null.
    # 
    # @return the default button or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setDefaultButton(Button)
    def get_default_button
      check_widget
      return @default_button
    end
    
    typesig { [] }
    # Returns the receiver's image if it had previously been
    # set using <code>setImage()</code>. The image is typically
    # displayed by the window manager when the instance is
    # marked as iconified, and may also be displayed somewhere
    # in the trim when the instance is in normal or maximized
    # states.
    # <p>
    # Note: This method will return null if called before
    # <code>setImage()</code> is called. It does not provide
    # access to a window manager provided, "default" image
    # even if one exists.
    # </p>
    # 
    # @return the image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image
      check_widget
      return @image
    end
    
    typesig { [] }
    # Returns the receiver's images if they had previously been
    # set using <code>setImages()</code>. Images are typically
    # displayed by the window manager when the instance is
    # marked as iconified, and may also be displayed somewhere
    # in the trim when the instance is in normal or maximized
    # states. Depending where the icon is displayed, the platform
    # chooses the icon with the "best" attributes.  It is expected
    # that the array will contain the same icon rendered at different
    # sizes, with different depth and transparency attributes.
    # 
    # <p>
    # Note: This method will return an empty array if called before
    # <code>setImages()</code> is called. It does not provide
    # access to a window manager provided, "default" image
    # even if one exists.
    # </p>
    # 
    # @return the images
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_images
      check_widget
      if ((@images).nil?)
        return Array.typed(Image).new(0) { nil }
      end
      result = Array.typed(Image).new(@images.attr_length) { nil }
      System.arraycopy(@images, 0, result, 0, @images.attr_length)
      return result
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is currently
    # maximized, and false otherwise.
    # <p>
    # 
    # @return the maximized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setMaximized
    def get_maximized
      check_widget
      return @maximized
    end
    
    typesig { [] }
    # Returns the receiver's menu bar if one had previously
    # been set, otherwise returns null.
    # 
    # @return the menu bar or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_menu_bar
      check_widget
      return @menu_bar
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is currently
    # minimized, and false otherwise.
    # <p>
    # 
    # @return the minimized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setMinimized
    def get_minimized
      check_widget
      return @minimized
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns the receiver's text, which is the string that the
    # window manager will typically display as the receiver's
    # <em>title</em>. If the text has not previously been set,
    # returns an empty string.
    # 
    # @return the text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      return @text
    end
    
    typesig { [] }
    def is_reparentable
      check_widget
      return false
    end
    
    typesig { [] }
    def is_tab_group
      return true
    end
    
    typesig { [] }
    def is_tab_item
      return false
    end
    
    typesig { [] }
    def menu_shell
      return self
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@menu_bar).nil?)
        @menu_bar.dispose
        @menu_bar = nil
      end
      display = self.attr_display
      super(destroy)
      menus = display.get_menus(self)
      if (!(menus).nil?)
        i = 0
        while i < menus.attr_length
          menu = menus[i]
          if (!(menu).nil? && !menu.is_disposed)
            menu.dispose
          end
          i += 1
        end
        menus = nil
      end
    end
    
    typesig { [] }
    def release_widget
      super
      @image = nil
      @images = nil
      @saved_focus = nil
      @default_button = nil
    end
    
    typesig { [] }
    def restore_focus
      if (!(@saved_focus).nil? && @saved_focus.is_disposed)
        @saved_focus = nil
      end
      if ((@saved_focus).nil?)
        return false
      end
      return @saved_focus.force_focus
    end
    
    typesig { [] }
    def save_focus
      window = OS._get_control_owner(self.attr_handle)
      control = self.attr_display.get_focus_control(window, false)
      if (!(control).nil? && !(control).equal?(self) && (self).equal?(control.menu_shell))
        set_saved_focus(control)
      end
    end
    
    typesig { [Button] }
    # If the argument is not null, sets the receiver's default
    # button to the argument, and if the argument is null, sets
    # the receiver's default button to the first button which
    # was set as the receiver's default button (called the
    # <em>saved default button</em>). If no default button had
    # previously been set, or the saved default button was
    # disposed, the receiver's default button will be set to
    # null.
    # <p>
    # The default button is the button that is selected when
    # the receiver is active and the user presses ENTER.
    # </p>
    # 
    # @param button the new default button
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the button has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the control is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_default_button(button)
      check_widget
      if (!(button).nil?)
        if (button.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(button.menu_shell).equal?(self))
          error(SWT::ERROR_INVALID_PARENT)
        end
        if (((button.attr_style & SWT::PUSH)).equal?(0))
          return
        end
      end
      if ((button).equal?(@default_button))
        return
      end
      if (!(@default_button).nil?)
        if (!@default_button.is_disposed)
          @default_button.set_default(false)
        end
      end
      @default_button = button
      if (!(@default_button).nil?)
        if (!@default_button.is_disposed)
          @default_button.set_default(true)
        end
      end
    end
    
    typesig { [Image] }
    # Sets the receiver's image to the argument, which may
    # be null. The image is typically displayed by the window
    # manager when the instance is marked as iconified, and
    # may also be displayed somewhere in the trim when the
    # instance is in normal or maximized states.
    # 
    # @param image the new image (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @image = image
      if (!(self.attr_parent).nil?)
        return
      end
      if ((self.attr_display.attr_dock_image).equal?(0))
        if (!(image).nil?)
          OS._set_application_dock_tile_image(image.attr_handle)
        else
          OS._restore_application_dock_tile_image
        end
      end
    end
    
    typesig { [Array.typed(Image)] }
    # Sets the receiver's images to the argument, which may
    # be an empty array. Images are typically displayed by the
    # window manager when the instance is marked as iconified,
    # and may also be displayed somewhere in the trim when the
    # instance is in normal or maximized states. Depending where
    # the icon is displayed, the platform chooses the icon with
    # the "best" attributes. It is expected that the array will
    # contain the same icon rendered at different sizes, with
    # different depth and transparency attributes.
    # 
    # @param images the new image array
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of images is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if one of the images is null or has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_images(images)
      check_widget
      if ((images).nil?)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i = 0
      while i < images.attr_length
        if ((images[i]).nil? || images[i].is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
      @images = images
      if (!(self.attr_parent).nil?)
        return
      end
      if ((self.attr_display.attr_dock_image).equal?(0))
        if (!(images).nil? && images.attr_length > 1)
          best_images = Array.typed(Image).new(images.attr_length) { nil }
          System.arraycopy(images, 0, best_images, 0, images.attr_length)
          sort(best_images)
          images = best_images
        end
        OS._set_application_dock_tile_image(images[0].attr_handle)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the maximized state of the receiver.
    # If the argument is <code>true</code> causes the receiver
    # to switch to the maximized state, and if the argument is
    # <code>false</code> and the receiver was previously maximized,
    # causes the receiver to switch back to either the minimized
    # or normal states.
    # <p>
    # Note: The result of intermixing calls to <code>setMaximized(true)</code>
    # and <code>setMinimized(true)</code> will vary by platform. Typically,
    # the behavior will match the platform user's expectations, but not
    # always. This should be avoided if possible.
    # </p>
    # 
    # @param maximized the new maximized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setMinimized
    def set_maximized(maximized)
      check_widget
      @maximized = maximized
    end
    
    typesig { [Menu] }
    # Sets the receiver's menu bar to the argument, which
    # may be null.
    # 
    # @param menu the new menu bar
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the menu has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the menu is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_menu_bar(menu)
      check_widget
      if ((@menu_bar).equal?(menu))
        return
      end
      if (!(menu).nil?)
        if (menu.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (((menu.attr_style & SWT::BAR)).equal?(0))
          error(SWT::ERROR_MENU_NOT_BAR)
        end
        if (!(menu.attr_parent).equal?(self))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      @menu_bar = menu
    end
    
    typesig { [::Java::Boolean] }
    # Sets the minimized stated of the receiver.
    # If the argument is <code>true</code> causes the receiver
    # to switch to the minimized state, and if the argument is
    # <code>false</code> and the receiver was previously minimized,
    # causes the receiver to switch back to either the maximized
    # or normal states.
    # <p>
    # Note: The result of intermixing calls to <code>setMaximized(true)</code>
    # and <code>setMinimized(true)</code> will vary by platform. Typically,
    # the behavior will match the platform user's expectations, but not
    # always. This should be avoided if possible.
    # </p>
    # 
    # @param minimized the new maximized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setMaximized
    def set_minimized(minimized)
      check_widget
      @minimized = minimized
    end
    
    typesig { [Control] }
    def set_saved_focus(control)
      @saved_focus = control
    end
    
    typesig { [String] }
    # Sets the receiver's text, which is the string that the
    # window manager will typically display as the receiver's
    # <em>title</em>, to the argument, which must not be null.
    # 
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      @text = string
    end
    
    typesig { [Array.typed(Image)] }
    def sort(images)
      # Shell Sort from K&R, pg 108
      length = images.attr_length
      if (length <= 1)
        return
      end
      datas = Array.typed(ImageData).new(length) { nil }
      i = 0
      while i < length
        datas[i] = images[i].get_image_data
        i += 1
      end
      gap = length / 2
      while gap > 0
        i_ = gap
        while i_ < length
          j = i_ - gap
          while j >= 0
            if (compare(datas[j], datas[j + gap]) >= 0)
              swap = images[j]
              images[j] = images[j + gap]
              images[j + gap] = swap
              swap_data = datas[j]
              datas[j] = datas[j + gap]
              datas[j + gap] = swap_data
            end
            j -= gap
          end
          i_ += 1
        end
        gap /= 2
      end
    end
    
    typesig { [::Java::Boolean] }
    def traverse_item(next_)
      return false
    end
    
    typesig { [] }
    def traverse_return
      if ((@default_button).nil? || @default_button.is_disposed)
        return false
      end
      if (!@default_button.is_visible || !@default_button.is_enabled)
        return false
      end
      @default_button.click
      return true
    end
    
    private
    alias_method :initialize__decorations, :initialize
  end
  
end
