# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: meshtastic/portnums.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("meshtastic/portnums.proto", :syntax => :proto3) do
    add_enum "meshtastic.PortNum" do
      value :UNKNOWN_APP, 0
      value :TEXT_MESSAGE_APP, 1
      value :REMOTE_HARDWARE_APP, 2
      value :POSITION_APP, 3
      value :NODEINFO_APP, 4
      value :ROUTING_APP, 5
      value :ADMIN_APP, 6
      value :TEXT_MESSAGE_COMPRESSED_APP, 7
      value :WAYPOINT_APP, 8
      value :AUDIO_APP, 9
      value :DETECTION_SENSOR_APP, 10
      value :ALERT_APP, 11
      value :REPLY_APP, 32
      value :IP_TUNNEL_APP, 33
      value :PAXCOUNTER_APP, 34
      value :SERIAL_APP, 64
      value :STORE_FORWARD_APP, 65
      value :RANGE_TEST_APP, 66
      value :TELEMETRY_APP, 67
      value :ZPS_APP, 68
      value :SIMULATOR_APP, 69
      value :TRACEROUTE_APP, 70
      value :NEIGHBORINFO_APP, 71
      value :ATAK_PLUGIN, 72
      value :MAP_REPORT_APP, 73
      value :POWERSTRESS_APP, 74
      value :PRIVATE_APP, 256
      value :ATAK_FORWARDER, 257
      value :MAX, 511
    end
  end
end

module Meshtastic
  PortNum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.PortNum").enummodule
end
