require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module CompatibilityImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
      include ::Java::Io
      include_const ::Java::Text, :MessageFormat
      include_const ::Java::Util, :MissingResourceException
      include_const ::Java::Util, :ResourceBundle
      include_const ::Java::Util::Zip, :InflaterInputStream
      include_const ::Java::Util::Zip, :DeflaterOutputStream
      include_const ::Org::Eclipse::Swt, :SWT
    }
  end
  
  # This class is a placeholder for utility methods commonly
  # used on J2SE platforms but not supported on some J2ME
  # profiles.
  # <p>
  # It is part of our effort to provide support for both J2SE
  # and J2ME platforms.
  # </p>
  # <p>
  # IMPORTANT: some of the methods have been modified from their
  # J2SE parents. Refer to the description of each method for
  # specific changes.
  # </p>
  # <ul>
  # <li>Exceptions thrown may differ since J2ME's set of
  # exceptions is a subset of J2SE's one.
  # </li>
  # <li>The range of the mathematic functions is subject to
  # change.
  # </li>
  # </ul>
  class Compatibility 
    include_class_members CompatibilityImports
    
    class_module.module_eval {
      # Returns the PI constant as a double.
      
      def pi
        defined?(@@pi) ? @@pi : @@pi= Math.attr_pi
      end
      alias_method :attr_pi, :pi
      
      def pi=(value)
        @@pi = value
      end
      alias_method :attr_pi=, :pi=
      
      
      def to_radians
        defined?(@@to_radians) ? @@to_radians : @@to_radians= self.attr_pi / 180
      end
      alias_method :attr_to_radians, :to_radians
      
      def to_radians=(value)
        @@to_radians = value
      end
      alias_method :attr_to_radians=, :to_radians=
      
      typesig { [::Java::Int, ::Java::Int] }
      # Answers the length of the side adjacent to the given angle
      # of a right triangle. In other words, it returns the integer
      # conversion of length * cos (angle).
      # <p>
      # IMPORTANT: the j2me version has an additional restriction on
      # the argument. length must be between -32767 and 32767 (inclusive).
      # </p>
      # 
      # @param angle the angle in degrees
      # @param length the length of the triangle's hypotenuse
      # @return the integer conversion of length * cos (angle)
      def cos(angle, length)
        return RJava.cast_to_int((Math.cos(angle * self.attr_to_radians) * length))
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Answers the length of the side opposite to the given angle
      # of a right triangle. In other words, it returns the integer
      # conversion of length * sin (angle).
      # <p>
      # IMPORTANT: the j2me version has an additional restriction on
      # the argument. length must be between -32767 and 32767 (inclusive).
      # </p>
      # 
      # @param angle the angle in degrees
      # @param length the length of the triangle's hypotenuse
      # @return the integer conversion of length * sin (angle)
      def sin(angle, length)
        return RJava.cast_to_int((Math.sin(angle * self.attr_to_radians) * length))
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Answers the most negative (i.e. closest to negative infinity)
      # integer value which is greater than the number obtained by dividing
      # the first argument p by the second argument q.
      # 
      # @param p numerator
      # @param q denominator (must be different from zero)
      # @return the ceiling of the rational number p / q.
      def ceil(p, q)
        return RJava.cast_to_int(Math.ceil((p).to_f / q))
      end
      
      typesig { [String, String] }
      # Answers whether the indicated file exists or not.
      # 
      # @param parent the file's parent directory
      # @param child the file's name
      # @return true if the file exists
      def file_exists(parent, child)
        return JavaFile.new(parent, child).exists
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Answers the most positive (i.e. closest to positive infinity)
      # integer value which is less than the number obtained by dividing
      # the first argument p by the second argument q.
      # 
      # @param p numerator
      # @param q denominator (must be different from zero)
      # @return the floor of the rational number p / q.
      def floor(p, q)
        return RJava.cast_to_int(Math.floor((p).to_f / q))
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Answers the result of rounding to the closest integer the number obtained
      # by dividing the first argument p by the second argument q.
      # <p>
      # IMPORTANT: the j2me version has an additional restriction on
      # the arguments. p must be within the range 0 - 32767 (inclusive).
      # q must be within the range 1 - 32767 (inclusive).
      # </p>
      # 
      # @param p numerator
      # @param q denominator (must be different from zero)
      # @return the closest integer to the rational number p / q
      def round(p, q)
        return Math.round((p).to_f / q)
      end
      
      typesig { [::Java::Int] }
      # Returns 2 raised to the power of the argument.
      # 
      # @param n an int value between 0 and 30 (inclusive)
      # @return 2 raised to the power of the argument
      # 
      # @exception IllegalArgumentException <ul>
      # <li>ERROR_INVALID_RANGE - if the argument is not between 0 and 30 (inclusive)</li>
      # </ul>
      def pow2(n)
        if (n >= 1 && n <= 30)
          return 2 << (n - 1)
        else
          if (!(n).equal?(0))
            SWT.error(SWT::ERROR_INVALID_RANGE)
          end
        end
        return 1
      end
      
      typesig { [OutputStream] }
      # Create an DeflaterOutputStream if such things are supported.
      # 
      # @param stream the output stream
      # @return a deflater stream or <code>null</code>
      # @exception IOException
      # 
      # @since 3.4
      def new_deflater_output_stream(stream)
        return DeflaterOutputStream.new(stream)
      end
      
      typesig { [String] }
      # Open a file if such things are supported.
      # 
      # @param filename the name of the file to open
      # @return a stream on the file if it could be opened.
      # @exception IOException
      def new_file_input_stream(filename)
        return FileInputStream.new(filename)
      end
      
      typesig { [String] }
      # Open a file if such things are supported.
      # 
      # @param filename the name of the file to open
      # @return a stream on the file if it could be opened.
      # @exception IOException
      def new_file_output_stream(filename)
        return FileOutputStream.new(filename)
      end
      
      typesig { [InputStream] }
      # Create an InflaterInputStream if such things are supported.
      # 
      # @param stream the input stream
      # @return a inflater stream or <code>null</code>
      # @exception IOException
      # 
      # @since 3.3
      def new_inflater_input_stream(stream)
        return BufferedInputStream.new(InflaterInputStream.new(stream))
      end
      
      typesig { [::Java::Char] }
      # Answers whether the character is a letter.
      # 
      # @param c the character
      # @return true when the character is a letter
      def is_letter(c)
        return Character.is_letter(c)
      end
      
      typesig { [::Java::Char] }
      # Answers whether the character is a letter or a digit.
      # 
      # @param c the character
      # @return true when the character is a letter or a digit
      def is_letter_or_digit(c)
        return Character.is_letter_or_digit(c)
      end
      
      typesig { [::Java::Char] }
      # Answers whether the character is a Unicode space character.
      # 
      # @param c	 the character
      # @return true when the character is a Unicode space character
      def is_space_char(c)
        return Character.is_space_char(c)
      end
      
      typesig { [::Java::Char] }
      # Answers whether the character is a whitespace character.
      # 
      # @param c the character to test
      # @return true if the character is whitespace
      def is_whitespace(c)
        return Character.is_whitespace(c)
      end
      
      typesig { [String] }
      # Execute a program in a separate platform process if the
      # underlying platform support this.
      # <p>
      # The new process inherits the environment of the caller.
      # </p>
      # 
      # @param prog the name of the program to execute
      # 
      # @exception IOException
      # if the program cannot be executed
      # @exception SecurityException
      # if the current SecurityManager disallows program execution
      def exec(prog)
        Runtime.get_runtime.exec(prog)
      end
      
      typesig { [Array.typed(String)] }
      # Execute progArray[0] in a separate platform process if the
      # underlying platform support this.
      # <p>
      # The new process inherits the environment of the caller.
      # <p>
      # 
      # @param progArray array containing the program to execute and its arguments
      # 
      # @exception IOException
      # if the program cannot be executed
      # @exception	SecurityException
      # if the current SecurityManager disallows program execution
      def exec(prog_array)
        Runtime.get_runtime.exec(prog_array)
      end
      
      
      def msgs
        defined?(@@msgs) ? @@msgs : @@msgs= nil
      end
      alias_method :attr_msgs, :msgs
      
      def msgs=(value)
        @@msgs = value
      end
      alias_method :attr_msgs=, :msgs=
      
      typesig { [String] }
      # Returns the NLS'ed message for the given argument. This is only being
      # called from SWT.
      # 
      # @param key the key to look up
      # @return the message for the given key
      # 
      # @see SWT#getMessage(String)
      def get_message(key)
        answer = key
        if ((key).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if ((self.attr_msgs).nil?)
          begin
            self.attr_msgs = ResourceBundle.get_bundle("org.eclipse.swt.internal.SWTMessages") # $NON-NLS-1$
          rescue MissingResourceException => ex
            answer = key + " (no resource bundle)" # $NON-NLS-1$
          end
        end
        if (!(self.attr_msgs).nil?)
          begin
            answer = RJava.cast_to_string(self.attr_msgs.get_string(key))
          rescue MissingResourceException => ex2
          end
        end
        return answer
      end
      
      typesig { [String, Array.typed(Object)] }
      def get_message(key, args)
        answer = key
        if ((key).nil? || (args).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if ((self.attr_msgs).nil?)
          begin
            self.attr_msgs = ResourceBundle.get_bundle("org.eclipse.swt.internal.SWTMessages") # $NON-NLS-1$
          rescue MissingResourceException => ex
            answer = key + " (no resource bundle)" # $NON-NLS-1$
          end
        end
        if (!(self.attr_msgs).nil?)
          begin
            formatter = MessageFormat.new("")
            formatter.apply_pattern(self.attr_msgs.get_string(key))
            answer = RJava.cast_to_string(formatter.format(args))
          rescue MissingResourceException => ex2
          end
        end
        return answer
      end
      
      typesig { [] }
      # Interrupt the current thread.
      # <p>
      # Note that this is not available on CLDC.
      # </p>
      def interrupt
        JavaThread.current_thread.interrupt
      end
      
      typesig { [String, String] }
      # Compares two instances of class String ignoring the case of the
      # characters and answers if they are equal.
      # 
      # @param s1 string
      # @param s2 string
      # @return true if the two instances of class String are equal
      def equals_ignore_case(s1, s2)
        return s1.equals_ignore_case(s2)
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__compatibility, :initialize
  end
  
end
