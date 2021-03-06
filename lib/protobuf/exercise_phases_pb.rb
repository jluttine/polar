# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: exercise_phases.proto

require 'google/protobuf'

require 'types_pb'
require 'structures_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("exercise_phases.proto", :syntax => :proto2) do
    add_message "polar_data.PbPhaseGoal" do
      required :goal_type, :enum, 1, "polar_data.PbPhaseGoal.PhaseGoalType"
      optional :duration, :message, 2, "PbDuration"
      optional :distance, :float, 3
      optional :heart_rate, :uint32, 4
    end
    add_enum "polar_data.PbPhaseGoal.PhaseGoalType" do
      value :PHASE_GOAL_OFF, 0
      value :PHASE_GOAL_TIME, 1
      value :PHASE_GOAL_DISTANCE, 2
      value :PHASE_GOAL_INCREASING_HR, 3
      value :PHASE_GOAL_DECREASING_HR, 4
      value :PHASE_GOAL_RACE_PACE, 5
    end
    add_message "polar_data.PbPhaseIntensity" do
      required :intensity_type, :enum, 1, "polar_data.PbPhaseIntensity.PhaseIntensityType"
      optional :heart_rate_zone, :message, 2, "polar_data.PbPhaseIntensity.IntensityZone"
      optional :speed_zone, :message, 3, "polar_data.PbPhaseIntensity.IntensityZone"
      optional :power_zone, :message, 4, "polar_data.PbPhaseIntensity.IntensityZone"
    end
    add_message "polar_data.PbPhaseIntensity.IntensityZone" do
      required :lower, :uint32, 1
      required :upper, :uint32, 2
    end
    add_enum "polar_data.PbPhaseIntensity.PhaseIntensityType" do
      value :PHASE_INTENSITY_FREE, 0
      value :PHASE_INTENSITY_SPORTZONE, 1
      value :PHASE_INTENSITY_SPEED_ZONE, 2
      value :PHASE_INTENSITY_POWER_ZONE, 3
    end
    add_message "polar_data.PbPhase" do
      required :name, :message, 1, "PbOneLineText"
      required :change, :enum, 2, "polar_data.PbPhase.PbPhaseChangeType"
      required :goal, :message, 3, "polar_data.PbPhaseGoal"
      required :intensity, :message, 4, "polar_data.PbPhaseIntensity"
      optional :repeat_count, :uint32, 5
      optional :jump_index, :uint32, 6
    end
    add_enum "polar_data.PbPhase.PbPhaseChangeType" do
      value :CHANGE_MANUAL, 0
      value :CHANGE_AUTOMATIC, 1
    end
    add_message "polar_data.PbPhases" do
      repeated :phase, :message, 1, "polar_data.PbPhase"
    end
  end
end

module PolarData
  PbPhaseGoal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPhaseGoal").msgclass
  PbPhaseGoal::PhaseGoalType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPhaseGoal.PhaseGoalType").enummodule
  PbPhaseIntensity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPhaseIntensity").msgclass
  PbPhaseIntensity::IntensityZone = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPhaseIntensity.IntensityZone").msgclass
  PbPhaseIntensity::PhaseIntensityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPhaseIntensity.PhaseIntensityType").enummodule
  PbPhase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPhase").msgclass
  PbPhase::PbPhaseChangeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPhase.PbPhaseChangeType").enummodule
  PbPhases = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbPhases").msgclass
end
