# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: meshtastic/paxcount.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("meshtastic/paxcount.proto", :syntax => :proto3) do
    add_message "meshtastic.Paxcount" do
      optional :wifi, :uint32, 1
      optional :ble, :uint32, 2
      optional :uptime, :uint32, 3
    end
  end
end

module Meshtastic
  Paxcount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Paxcount").msgclass
end
