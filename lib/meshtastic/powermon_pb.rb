# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: meshtastic/powermon.proto

require 'google/protobuf'


descriptor_data = "\n\x19meshtastic/powermon.proto\x12\nmeshtastic\"\xe0\x01\n\x08PowerMon\"\xd3\x01\n\x05State\x12\x08\n\x04None\x10\x00\x12\x11\n\rCPU_DeepSleep\x10\x01\x12\x12\n\x0e\x43PU_LightSleep\x10\x02\x12\x0c\n\x08Vext1_On\x10\x04\x12\r\n\tLora_RXOn\x10\x08\x12\r\n\tLora_TXOn\x10\x10\x12\x11\n\rLora_RXActive\x10 \x12\t\n\x05\x42T_On\x10@\x12\x0b\n\x06LED_On\x10\x80\x01\x12\x0e\n\tScreen_On\x10\x80\x02\x12\x13\n\x0eScreen_Drawing\x10\x80\x04\x12\x0c\n\x07Wifi_On\x10\x80\x08\x12\x0f\n\nGPS_Active\x10\x80\x10\"\xff\x02\n\x12PowerStressMessage\x12\x32\n\x03\x63md\x18\x01 \x01(\x0e\x32%.meshtastic.PowerStressMessage.Opcode\x12\x13\n\x0bnum_seconds\x18\x02 \x01(\x02\"\x9f\x02\n\x06Opcode\x12\t\n\x05UNSET\x10\x00\x12\x0e\n\nPRINT_INFO\x10\x01\x12\x0f\n\x0b\x46ORCE_QUIET\x10\x02\x12\r\n\tEND_QUIET\x10\x03\x12\r\n\tSCREEN_ON\x10\x10\x12\x0e\n\nSCREEN_OFF\x10\x11\x12\x0c\n\x08\x43PU_IDLE\x10 \x12\x11\n\rCPU_DEEPSLEEP\x10!\x12\x0e\n\nCPU_FULLON\x10\"\x12\n\n\x06LED_ON\x10\x30\x12\x0b\n\x07LED_OFF\x10\x31\x12\x0c\n\x08LORA_OFF\x10@\x12\x0b\n\x07LORA_TX\x10\x41\x12\x0b\n\x07LORA_RX\x10\x42\x12\n\n\x06\x42T_OFF\x10P\x12\t\n\x05\x42T_ON\x10Q\x12\x0c\n\x08WIFI_OFF\x10`\x12\x0b\n\x07WIFI_ON\x10\x61\x12\x0b\n\x07GPS_OFF\x10p\x12\n\n\x06GPS_ON\x10qBc\n\x13\x63om.geeksville.meshB\x0ePowerMonProtosZ\"github.com/meshtastic/go/generated\xaa\x02\x14Meshtastic.Protobufs\xba\x02\x00\x62\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Meshtastic
  PowerMon = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.PowerMon").msgclass
  PowerMon::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.PowerMon.State").enummodule
  PowerStressMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.PowerStressMessage").msgclass
  PowerStressMessage::Opcode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.PowerStressMessage.Opcode").enummodule
end
