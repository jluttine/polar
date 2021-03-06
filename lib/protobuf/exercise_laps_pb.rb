# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: exercise_laps.proto

require 'google/protobuf'

require 'types_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("exercise_laps.proto", :syntax => :proto2) do
    add_message "polar_data.PbLapHeader" do
      required :split_time, :message, 1, "PbDuration"
      required :duration, :message, 2, "PbDuration"
      optional :distance, :float, 3
      optional :ascent, :float, 4
      optional :descent, :float, 5
      optional :autolap_type, :enum, 6, "polar_data.PbLapHeader.PbAutolapType"
    end
    add_enum "polar_data.PbLapHeader.PbAutolapType" do
      value :AUTOLAP_TYPE_DISTANCE, 1
      value :AUTOLAP_TYPE_DURATION, 2
      value :AUTOLAP_TYPE_LOCATION, 3
    end
    add_message "polar_data.PbLapSwimmingStatistics" do
      optional :lap_strokes, :uint32, 1
      optional :pool_count, :uint32, 2
      optional :avg_duration_of_pool, :float, 3
    end
    add_message "polar_data.PbLapHeartRateStatistics" do
      optional :average, :uint32, 1
      optional :maximum, :uint32, 2
      optional :minimum, :uint32, 3
    end
    add_message "polar_data.PbLapSpeedStatistics" do
      optional :average, :float, 1
      optional :maximum, :float, 2
    end
    add_message "polar_data.PbLapCadenceStatistics" do
      optional :average, :uint32, 1
      optional :maximum, :uint32, 2
    end
    add_message "polar_data.PbLapPowerStatistics" do
      optional :average, :int32, 1
      optional :maximum, :int32, 2
    end
    add_message "polar_data.PbLapLRBalanceStatistics" do
      optional :average, :float, 1
    end
    add_message "polar_data.PbLapPedalingIndexStatistics" do
      optional :average, :uint32, 1
    end
    add_message "polar_data.PbLapPedalingEfficiencyStatistics" do
      optional :average, :uint32, 1
    end
    add_message "polar_data.PbLapInclineStatistics" do
      optional :max, :float, 1
    end
    add_message "polar_data.PbLapStrideLengthStatistics" do
      optional :average, :uint32, 1
    end
    add_message "polar_data.PbLapStatistics" do
      optional :heart_rate, :message, 1, "polar_data.PbLapHeartRateStatistics"
      optional :speed, :message, 2, "polar_data.PbLapSpeedStatistics"
      optional :cadence, :message, 3, "polar_data.PbLapCadenceStatistics"
      optional :power, :message, 4, "polar_data.PbLapPowerStatistics"
      optional :OBSOLETE_pedaling_index, :message, 5, "polar_data.PbLapPedalingIndexStatistics"
      optional :incline, :message, 6, "polar_data.PbLapInclineStatistics"
      optional :stride_length, :message, 7, "polar_data.PbLapStrideLengthStatistics"
      optional :swimming_statistics, :message, 8, "polar_data.PbLapSwimmingStatistics"
      optional :left_right_balance, :message, 9, "polar_data.PbLapLRBalanceStatistics"
    end
    add_message "polar_data.PbLap" do
      required :header, :message, 1, "polar_data.PbLapHeader"
      optional :statistics, :message, 2, "polar_data.PbLapStatistics"
    end
    add_message "polar_data.PbLapSummary" do
      optional :best_lap_duration, :message, 1, "PbDuration"
      optional :average_lap_duration, :message, 2, "PbDuration"
    end
    add_message "polar_data.PbLaps" do
      repeated :laps, :message, 1, "polar_data.PbLap"
      optional :summary, :message, 2, "polar_data.PbLapSummary"
    end
    add_message "polar_data.PbAutoLaps" do
      repeated :autoLaps, :message, 1, "polar_data.PbLap"
      optional :summary, :message, 2, "polar_data.PbLapSummary"
    end
  end
end

module PolarData
  PbLapHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapHeader").msgclass
  PbLapHeader::PbAutolapType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapHeader.PbAutolapType").enummodule
  PbLapSwimmingStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapSwimmingStatistics").msgclass
  PbLapHeartRateStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapHeartRateStatistics").msgclass
  PbLapSpeedStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapSpeedStatistics").msgclass
  PbLapCadenceStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapCadenceStatistics").msgclass
  PbLapPowerStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapPowerStatistics").msgclass
  PbLapLRBalanceStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapLRBalanceStatistics").msgclass
  PbLapPedalingIndexStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapPedalingIndexStatistics").msgclass
  PbLapPedalingEfficiencyStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapPedalingEfficiencyStatistics").msgclass
  PbLapInclineStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapInclineStatistics").msgclass
  PbLapStrideLengthStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapStrideLengthStatistics").msgclass
  PbLapStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapStatistics").msgclass
  PbLap = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLap").msgclass
  PbLapSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLapSummary").msgclass
  PbLaps = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbLaps").msgclass
  PbAutoLaps = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbAutoLaps").msgclass
end
