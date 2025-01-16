# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: meshtastic/device_ui.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("meshtastic/device_ui.proto", :syntax => :proto3) do
    add_message "meshtastic.DeviceUIConfig" do
      optional :version, :uint32, 1
      optional :screen_brightness, :uint32, 2
      optional :screen_timeout, :uint32, 3
      optional :screen_lock, :bool, 4
      optional :settings_lock, :bool, 5
      optional :pin_code, :uint32, 6
      optional :theme, :enum, 7, "meshtastic.Theme"
      optional :alert_enabled, :bool, 8
      optional :banner_enabled, :bool, 9
      optional :ring_tone_id, :uint32, 10
      optional :language, :enum, 11, "meshtastic.Language"
      optional :node_filter, :message, 12, "meshtastic.NodeFilter"
      optional :node_highlight, :message, 13, "meshtastic.NodeHighlight"
      optional :calibration_data, :bytes, 14
    end
    add_message "meshtastic.NodeFilter" do
      optional :unknown_switch, :bool, 1
      optional :offline_switch, :bool, 2
      optional :public_key_switch, :bool, 3
      optional :hops_away, :int32, 4
      optional :position_switch, :bool, 5
      optional :node_name, :string, 6
      optional :channel, :int32, 7
    end
    add_message "meshtastic.NodeHighlight" do
      optional :chat_switch, :bool, 1
      optional :position_switch, :bool, 2
      optional :telemetry_switch, :bool, 3
      optional :iaq_switch, :bool, 4
      optional :node_name, :string, 5
    end
    add_enum "meshtastic.Theme" do
      value :DARK, 0
      value :LIGHT, 1
      value :RED, 2
    end
    add_enum "meshtastic.Language" do
      value :ENGLISH, 0
      value :FRENCH, 1
      value :GERMAN, 2
      value :ITALIAN, 3
      value :PORTUGUESE, 4
      value :SPANISH, 5
      value :SWEDISH, 6
      value :FINNISH, 7
      value :POLISH, 8
      value :TURKISH, 9
      value :SERBIAN, 10
      value :RUSSIAN, 11
      value :DUTCH, 12
      value :GREEK, 13
      value :NORWEGIAN, 14
      value :SLOVENIAN, 15
      value :SIMPLIFIED_CHINESE, 30
      value :TRADITIONAL_CHINESE, 31
    end
  end
end

module Meshtastic
  DeviceUIConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.DeviceUIConfig").msgclass
  NodeFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.NodeFilter").msgclass
  NodeHighlight = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.NodeHighlight").msgclass
  Theme = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Theme").enummodule
  Language = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Language").enummodule
end