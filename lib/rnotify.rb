module ActiveSupport
  class BufferedLogger
    @@severity_reverse_hash = {0 => "DEBUG", 1 => "INFO", 2 => "WARN", 3 => "ERROR", 4 => "FATAL", 5 => "UNKNOWN"}
    
    def add_with_notify(severity, message = nil, progname = nil, &block)
      add_without_notify(severity, message, progname, &block)
      if severity > Severity::INFO
        `notify-send --icon="#{File.dirname(__FILE__)}/resources/warn.png" "Rails logger #{@@severity_reverse_hash[severity]}", "#{message}"`
      end
    end
    
    alias_method_chain :add, :notify
  end
end
