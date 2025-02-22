# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: meshtastic/mesh.proto

require 'google/protobuf'

require 'meshtastic/channel_pb'
require 'meshtastic/config_pb'
require 'meshtastic/module_config_pb'
require 'meshtastic/portnums_pb'
require 'meshtastic/telemetry_pb'
require 'meshtastic/xmodem_pb'
require 'meshtastic/device_ui_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("meshtastic/mesh.proto", :syntax => :proto3) do
    add_message "meshtastic.Position" do
      proto3_optional :latitude_i, :sfixed32, 1
      proto3_optional :longitude_i, :sfixed32, 2
      proto3_optional :altitude, :int32, 3
      optional :time, :fixed32, 4
      optional :location_source, :enum, 5, "meshtastic.Position.LocSource"
      optional :altitude_source, :enum, 6, "meshtastic.Position.AltSource"
      optional :timestamp, :fixed32, 7
      optional :timestamp_millis_adjust, :int32, 8
      proto3_optional :altitude_hae, :sint32, 9
      proto3_optional :altitude_geoidal_separation, :sint32, 10
      optional :PDOP, :uint32, 11
      optional :HDOP, :uint32, 12
      optional :VDOP, :uint32, 13
      optional :gps_accuracy, :uint32, 14
      proto3_optional :ground_speed, :uint32, 15
      proto3_optional :ground_track, :uint32, 16
      optional :fix_quality, :uint32, 17
      optional :fix_type, :uint32, 18
      optional :sats_in_view, :uint32, 19
      optional :sensor_id, :uint32, 20
      optional :next_update, :uint32, 21
      optional :seq_number, :uint32, 22
      optional :precision_bits, :uint32, 23
    end
    add_enum "meshtastic.Position.LocSource" do
      value :LOC_UNSET, 0
      value :LOC_MANUAL, 1
      value :LOC_INTERNAL, 2
      value :LOC_EXTERNAL, 3
    end
    add_enum "meshtastic.Position.AltSource" do
      value :ALT_UNSET, 0
      value :ALT_MANUAL, 1
      value :ALT_INTERNAL, 2
      value :ALT_EXTERNAL, 3
      value :ALT_BAROMETRIC, 4
    end
    add_message "meshtastic.User" do
      optional :id, :string, 1
      optional :long_name, :string, 2
      optional :short_name, :string, 3
      optional :macaddr, :bytes, 4
      optional :hw_model, :enum, 5, "meshtastic.HardwareModel"
      optional :is_licensed, :bool, 6
      optional :role, :enum, 7, "meshtastic.Config.DeviceConfig.Role"
      optional :public_key, :bytes, 8
    end
    add_message "meshtastic.RouteDiscovery" do
      repeated :route, :fixed32, 1
      repeated :snr_towards, :int32, 2
      repeated :route_back, :fixed32, 3
      repeated :snr_back, :int32, 4
    end
    add_message "meshtastic.Routing" do
      oneof :variant do
        optional :route_request, :message, 1, "meshtastic.RouteDiscovery"
        optional :route_reply, :message, 2, "meshtastic.RouteDiscovery"
        optional :error_reason, :enum, 3, "meshtastic.Routing.Error"
      end
    end
    add_enum "meshtastic.Routing.Error" do
      value :NONE, 0
      value :NO_ROUTE, 1
      value :GOT_NAK, 2
      value :TIMEOUT, 3
      value :NO_INTERFACE, 4
      value :MAX_RETRANSMIT, 5
      value :NO_CHANNEL, 6
      value :TOO_LARGE, 7
      value :NO_RESPONSE, 8
      value :DUTY_CYCLE_LIMIT, 9
      value :BAD_REQUEST, 32
      value :NOT_AUTHORIZED, 33
      value :PKI_FAILED, 34
      value :PKI_UNKNOWN_PUBKEY, 35
      value :ADMIN_BAD_SESSION_KEY, 36
      value :ADMIN_PUBLIC_KEY_UNAUTHORIZED, 37
    end
    add_message "meshtastic.Data" do
      optional :portnum, :enum, 1, "meshtastic.PortNum"
      optional :payload, :bytes, 2
      optional :want_response, :bool, 3
      optional :dest, :fixed32, 4
      optional :source, :fixed32, 5
      optional :request_id, :fixed32, 6
      optional :reply_id, :fixed32, 7
      optional :emoji, :fixed32, 8
      proto3_optional :bitfield, :uint32, 9
    end
    add_message "meshtastic.Waypoint" do
      optional :id, :uint32, 1
      proto3_optional :latitude_i, :sfixed32, 2
      proto3_optional :longitude_i, :sfixed32, 3
      optional :expire, :uint32, 4
      optional :locked_to, :uint32, 5
      optional :name, :string, 6
      optional :description, :string, 7
      optional :icon, :fixed32, 8
    end
    add_message "meshtastic.MqttClientProxyMessage" do
      optional :topic, :string, 1
      optional :retained, :bool, 4
      oneof :payload_variant do
        optional :data, :bytes, 2
        optional :text, :string, 3
      end
    end
    add_message "meshtastic.MeshPacket" do
      optional :from, :fixed32, 1
      optional :to, :fixed32, 2
      optional :channel, :uint32, 3
      optional :id, :fixed32, 6
      optional :rx_time, :fixed32, 7
      optional :rx_snr, :float, 8
      optional :hop_limit, :uint32, 9
      optional :want_ack, :bool, 10
      optional :priority, :enum, 11, "meshtastic.MeshPacket.Priority"
      optional :rx_rssi, :int32, 12
      optional :delayed, :enum, 13, "meshtastic.MeshPacket.Delayed"
      optional :via_mqtt, :bool, 14
      optional :hop_start, :uint32, 15
      optional :public_key, :bytes, 16
      optional :pki_encrypted, :bool, 17
      optional :next_hop, :uint32, 18
      optional :relay_node, :uint32, 19
      optional :tx_after, :uint32, 20
      oneof :payload_variant do
        optional :decoded, :message, 4, "meshtastic.Data"
        optional :encrypted, :bytes, 5
      end
    end
    add_enum "meshtastic.MeshPacket.Priority" do
      value :UNSET, 0
      value :MIN, 1
      value :BACKGROUND, 10
      value :DEFAULT, 64
      value :RELIABLE, 70
      value :RESPONSE, 80
      value :HIGH, 100
      value :ALERT, 110
      value :ACK, 120
      value :MAX, 127
    end
    add_enum "meshtastic.MeshPacket.Delayed" do
      value :NO_DELAY, 0
      value :DELAYED_BROADCAST, 1
      value :DELAYED_DIRECT, 2
    end
    add_message "meshtastic.NodeInfo" do
      optional :num, :uint32, 1
      optional :user, :message, 2, "meshtastic.User"
      optional :position, :message, 3, "meshtastic.Position"
      optional :snr, :float, 4
      optional :last_heard, :fixed32, 5
      optional :device_metrics, :message, 6, "meshtastic.DeviceMetrics"
      optional :channel, :uint32, 7
      optional :via_mqtt, :bool, 8
      proto3_optional :hops_away, :uint32, 9
      optional :is_favorite, :bool, 10
      optional :is_ignored, :bool, 11
    end
    add_message "meshtastic.MyNodeInfo" do
      optional :my_node_num, :uint32, 1
      optional :reboot_count, :uint32, 8
      optional :min_app_version, :uint32, 11
      optional :device_id, :bytes, 12
      optional :pio_env, :string, 13
    end
    add_message "meshtastic.LogRecord" do
      optional :message, :string, 1
      optional :time, :fixed32, 2
      optional :source, :string, 3
      optional :level, :enum, 4, "meshtastic.LogRecord.Level"
    end
    add_enum "meshtastic.LogRecord.Level" do
      value :UNSET, 0
      value :CRITICAL, 50
      value :ERROR, 40
      value :WARNING, 30
      value :INFO, 20
      value :DEBUG, 10
      value :TRACE, 5
    end
    add_message "meshtastic.QueueStatus" do
      optional :res, :int32, 1
      optional :free, :uint32, 2
      optional :maxlen, :uint32, 3
      optional :mesh_packet_id, :uint32, 4
    end
    add_message "meshtastic.FromRadio" do
      optional :id, :uint32, 1
      oneof :payload_variant do
        optional :packet, :message, 2, "meshtastic.MeshPacket"
        optional :my_info, :message, 3, "meshtastic.MyNodeInfo"
        optional :node_info, :message, 4, "meshtastic.NodeInfo"
        optional :config, :message, 5, "meshtastic.Config"
        optional :log_record, :message, 6, "meshtastic.LogRecord"
        optional :config_complete_id, :uint32, 7
        optional :rebooted, :bool, 8
        optional :moduleConfig, :message, 9, "meshtastic.ModuleConfig"
        optional :channel, :message, 10, "meshtastic.Channel"
        optional :queueStatus, :message, 11, "meshtastic.QueueStatus"
        optional :xmodemPacket, :message, 12, "meshtastic.XModem"
        optional :metadata, :message, 13, "meshtastic.DeviceMetadata"
        optional :mqttClientProxyMessage, :message, 14, "meshtastic.MqttClientProxyMessage"
        optional :fileInfo, :message, 15, "meshtastic.FileInfo"
        optional :clientNotification, :message, 16, "meshtastic.ClientNotification"
        optional :deviceuiConfig, :message, 17, "meshtastic.DeviceUIConfig"
      end
    end
    add_message "meshtastic.ClientNotification" do
      proto3_optional :reply_id, :uint32, 1
      optional :time, :fixed32, 2
      optional :level, :enum, 3, "meshtastic.LogRecord.Level"
      optional :message, :string, 4
    end
    add_message "meshtastic.FileInfo" do
      optional :file_name, :string, 1
      optional :size_bytes, :uint32, 2
    end
    add_message "meshtastic.ToRadio" do
      oneof :payload_variant do
        optional :packet, :message, 1, "meshtastic.MeshPacket"
        optional :want_config_id, :uint32, 3
        optional :disconnect, :bool, 4
        optional :xmodemPacket, :message, 5, "meshtastic.XModem"
        optional :mqttClientProxyMessage, :message, 6, "meshtastic.MqttClientProxyMessage"
        optional :heartbeat, :message, 7, "meshtastic.Heartbeat"
      end
    end
    add_message "meshtastic.Compressed" do
      optional :portnum, :enum, 1, "meshtastic.PortNum"
      optional :data, :bytes, 2
    end
    add_message "meshtastic.NeighborInfo" do
      optional :node_id, :uint32, 1
      optional :last_sent_by_id, :uint32, 2
      optional :node_broadcast_interval_secs, :uint32, 3
      repeated :neighbors, :message, 4, "meshtastic.Neighbor"
    end
    add_message "meshtastic.Neighbor" do
      optional :node_id, :uint32, 1
      optional :snr, :float, 2
      optional :last_rx_time, :fixed32, 3
      optional :node_broadcast_interval_secs, :uint32, 4
    end
    add_message "meshtastic.DeviceMetadata" do
      optional :firmware_version, :string, 1
      optional :device_state_version, :uint32, 2
      optional :canShutdown, :bool, 3
      optional :hasWifi, :bool, 4
      optional :hasBluetooth, :bool, 5
      optional :hasEthernet, :bool, 6
      optional :role, :enum, 7, "meshtastic.Config.DeviceConfig.Role"
      optional :position_flags, :uint32, 8
      optional :hw_model, :enum, 9, "meshtastic.HardwareModel"
      optional :hasRemoteHardware, :bool, 10
      optional :hasPKC, :bool, 11
      optional :excluded_modules, :uint32, 12
    end
    add_message "meshtastic.Heartbeat" do
    end
    add_message "meshtastic.NodeRemoteHardwarePin" do
      optional :node_num, :uint32, 1
      optional :pin, :message, 2, "meshtastic.RemoteHardwarePin"
    end
    add_message "meshtastic.ChunkedPayload" do
      optional :payload_id, :uint32, 1
      optional :chunk_count, :uint32, 2
      optional :chunk_index, :uint32, 3
      optional :payload_chunk, :bytes, 4
    end
    add_message "meshtastic.resend_chunks" do
      repeated :chunks, :uint32, 1
    end
    add_message "meshtastic.ChunkedPayloadResponse" do
      optional :payload_id, :uint32, 1
      oneof :payload_variant do
        optional :request_transfer, :bool, 2
        optional :accept_transfer, :bool, 3
        optional :resend_chunks, :message, 4, "meshtastic.resend_chunks"
      end
    end
    add_enum "meshtastic.HardwareModel" do
      value :UNSET, 0
      value :TLORA_V2, 1
      value :TLORA_V1, 2
      value :TLORA_V2_1_1P6, 3
      value :TBEAM, 4
      value :HELTEC_V2_0, 5
      value :TBEAM_V0P7, 6
      value :T_ECHO, 7
      value :TLORA_V1_1P3, 8
      value :RAK4631, 9
      value :HELTEC_V2_1, 10
      value :HELTEC_V1, 11
      value :LILYGO_TBEAM_S3_CORE, 12
      value :RAK11200, 13
      value :NANO_G1, 14
      value :TLORA_V2_1_1P8, 15
      value :TLORA_T3_S3, 16
      value :NANO_G1_EXPLORER, 17
      value :NANO_G2_ULTRA, 18
      value :LORA_TYPE, 19
      value :WIPHONE, 20
      value :WIO_WM1110, 21
      value :RAK2560, 22
      value :HELTEC_HRU_3601, 23
      value :HELTEC_WIRELESS_BRIDGE, 24
      value :STATION_G1, 25
      value :RAK11310, 26
      value :SENSELORA_RP2040, 27
      value :SENSELORA_S3, 28
      value :CANARYONE, 29
      value :RP2040_LORA, 30
      value :STATION_G2, 31
      value :LORA_RELAY_V1, 32
      value :NRF52840DK, 33
      value :PPR, 34
      value :GENIEBLOCKS, 35
      value :NRF52_UNKNOWN, 36
      value :PORTDUINO, 37
      value :ANDROID_SIM, 38
      value :DIY_V1, 39
      value :NRF52840_PCA10059, 40
      value :DR_DEV, 41
      value :M5STACK, 42
      value :HELTEC_V3, 43
      value :HELTEC_WSL_V3, 44
      value :BETAFPV_2400_TX, 45
      value :BETAFPV_900_NANO_TX, 46
      value :RPI_PICO, 47
      value :HELTEC_WIRELESS_TRACKER, 48
      value :HELTEC_WIRELESS_PAPER, 49
      value :T_DECK, 50
      value :T_WATCH_S3, 51
      value :PICOMPUTER_S3, 52
      value :HELTEC_HT62, 53
      value :EBYTE_ESP32_S3, 54
      value :ESP32_S3_PICO, 55
      value :CHATTER_2, 56
      value :HELTEC_WIRELESS_PAPER_V1_0, 57
      value :HELTEC_WIRELESS_TRACKER_V1_0, 58
      value :UNPHONE, 59
      value :TD_LORAC, 60
      value :CDEBYTE_EORA_S3, 61
      value :TWC_MESH_V4, 62
      value :NRF52_PROMICRO_DIY, 63
      value :RADIOMASTER_900_BANDIT_NANO, 64
      value :HELTEC_CAPSULE_SENSOR_V3, 65
      value :HELTEC_VISION_MASTER_T190, 66
      value :HELTEC_VISION_MASTER_E213, 67
      value :HELTEC_VISION_MASTER_E290, 68
      value :HELTEC_MESH_NODE_T114, 69
      value :SENSECAP_INDICATOR, 70
      value :TRACKER_T1000_E, 71
      value :RAK3172, 72
      value :WIO_E5, 73
      value :RADIOMASTER_900_BANDIT, 74
      value :ME25LS01_4Y10TD, 75
      value :RP2040_FEATHER_RFM95, 76
      value :M5STACK_COREBASIC, 77
      value :M5STACK_CORE2, 78
      value :RPI_PICO2, 79
      value :M5STACK_CORES3, 80
      value :SEEED_XIAO_S3, 81
      value :MS24SF1, 82
      value :TLORA_C6, 83
      value :WISMESH_TAP, 84
      value :ROUTASTIC, 85
      value :MESH_TAB, 86
      value :MESHLINK, 87
      value :PRIVATE_HW, 255
    end
    add_enum "meshtastic.Constants" do
      value :ZERO, 0
      value :DATA_PAYLOAD_LEN, 233
    end
    add_enum "meshtastic.CriticalErrorCode" do
      value :NONE, 0
      value :TX_WATCHDOG, 1
      value :SLEEP_ENTER_WAIT, 2
      value :NO_RADIO, 3
      value :UNSPECIFIED, 4
      value :UBLOX_UNIT_FAILED, 5
      value :NO_AXP192, 6
      value :INVALID_RADIO_SETTING, 7
      value :TRANSMIT_FAILED, 8
      value :BROWNOUT, 9
      value :SX1262_FAILURE, 10
      value :RADIO_SPI_BUG, 11
      value :FLASH_CORRUPTION_RECOVERABLE, 12
      value :FLASH_CORRUPTION_UNRECOVERABLE, 13
    end
    add_enum "meshtastic.ExcludedModules" do
      value :EXCLUDED_NONE, 0
      value :MQTT_CONFIG, 1
      value :SERIAL_CONFIG, 2
      value :EXTNOTIF_CONFIG, 4
      value :STOREFORWARD_CONFIG, 8
      value :RANGETEST_CONFIG, 16
      value :TELEMETRY_CONFIG, 32
      value :CANNEDMSG_CONFIG, 64
      value :AUDIO_CONFIG, 128
      value :REMOTEHARDWARE_CONFIG, 256
      value :NEIGHBORINFO_CONFIG, 512
      value :AMBIENTLIGHTING_CONFIG, 1024
      value :DETECTIONSENSOR_CONFIG, 2048
      value :PAXCOUNTER_CONFIG, 4096
    end
  end
end

module Meshtastic
  Position = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Position").msgclass
  Position::LocSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Position.LocSource").enummodule
  Position::AltSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Position.AltSource").enummodule
  User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.User").msgclass
  RouteDiscovery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.RouteDiscovery").msgclass
  Routing = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Routing").msgclass
  Routing::Error = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Routing.Error").enummodule
  Data = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Data").msgclass
  Waypoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Waypoint").msgclass
  MqttClientProxyMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.MqttClientProxyMessage").msgclass
  MeshPacket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.MeshPacket").msgclass
  MeshPacket::Priority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.MeshPacket.Priority").enummodule
  MeshPacket::Delayed = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.MeshPacket.Delayed").enummodule
  NodeInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.NodeInfo").msgclass
  MyNodeInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.MyNodeInfo").msgclass
  LogRecord = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.LogRecord").msgclass
  LogRecord::Level = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.LogRecord.Level").enummodule
  QueueStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.QueueStatus").msgclass
  FromRadio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.FromRadio").msgclass
  ClientNotification = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.ClientNotification").msgclass
  FileInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.FileInfo").msgclass
  ToRadio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.ToRadio").msgclass
  Compressed = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Compressed").msgclass
  NeighborInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.NeighborInfo").msgclass
  Neighbor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Neighbor").msgclass
  DeviceMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.DeviceMetadata").msgclass
  Heartbeat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Heartbeat").msgclass
  NodeRemoteHardwarePin = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.NodeRemoteHardwarePin").msgclass
  ChunkedPayload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.ChunkedPayload").msgclass
  Resend_chunks = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.resend_chunks").msgclass
  ChunkedPayloadResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.ChunkedPayloadResponse").msgclass
  HardwareModel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.HardwareModel").enummodule
  Constants = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.Constants").enummodule
  CriticalErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.CriticalErrorCode").enummodule
  ExcludedModules = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("meshtastic.ExcludedModules").enummodule
end
