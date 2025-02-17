# frozen_string_literal: true

require 'meshtastic/mesh_pb'

# Plugin used to interact with Meshtastic nodes
module Meshtastic
  class StreamInterface
    attr_accessor :cur_log_line,
                  :is_windows11,
                  :rx_buf,
                  :stream,
                  :want_exit

    def initialize(opts = {})
      debug_out = opts[:debug_out]
      no_proto = false if opts[:no_proto].nil?
      no_proto = true if opts[:no_proto]

      connect_now = true if opts[:connect_now].nil?
      connect_now = false if opts[:connect_now]

      no_nodes = false if opts[:no_nodes].nil?
      no_nodes = true if opts[:no_nodes]
      # Note: In Ruby, we don't need to explicitly define a type hint for self.
      raise Exception("StreamInterface is now abstract (to update existing code create SerialInterface instead)") if !defined?(@stream) && !no_proto

      @stream = nil
      @rx_buf = []
      @want_exit = false
      @is_windows11 = RUBY_PLATFORM =~ /win32/
      @cur_log_line = ""

      # Note: Ruby's threading API is different from Python. We use the Thread class instead of threading.Thread.
      rx_thread = Thread.new do
        reader
      end

      if connect_now
        connect
        unless no_proto
          wait_for_config
        end
      end
    rescue StandardError => e
      raise e
    end

    # Supported Method Parameters::
    # packet_id = Meshtastic.generate_packet_id(
    #   last_packet_id: 'optional - Last Packet ID (Default: 0)'
    # )
    def connect(opts = {})
      # Send some bogus UART characters to force a sleeping device to wake, and
      # if the reading statemachine was parsing a bad packet make sure we write enough start bytes to force it to resync (we don't use START1 because we want to ensure it is looking for START1)
      p = [START2] * 32
      self._write_bytes(p)

      sleep(0.1) # wait 100ms to give device time to start running

      @rx_thread.start
      mui = Meshtastic::MeshInfoUser.new
      mui.start_config
    rescue StandardError => e
      raise e
    end

    # Supported Method Parameters::
    # Meshtastic::StreamInterface.reader
    def reader
    rescue StandardError => e
      raise e
    end

    # Author(s):: 0day Inc. <support@0dayinc.com>

    def authors
      "AUTHOR(S):
        0day Inc. <support@0dayinc.com>
      "
    end

    # Display Usage for this Module

    def help
      puts "USAGE:
        #{self}.connect

        #{self}.authors
      "
    end
  end
end
