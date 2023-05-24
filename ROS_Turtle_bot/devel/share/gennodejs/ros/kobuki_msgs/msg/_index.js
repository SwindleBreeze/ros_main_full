
"use strict";

let MotorPower = require('./MotorPower.js');
let KeyboardInput = require('./KeyboardInput.js');
let VersionInfo = require('./VersionInfo.js');
let BumperEvent = require('./BumperEvent.js');
let Sound = require('./Sound.js');
let SensorState = require('./SensorState.js');
let DigitalOutput = require('./DigitalOutput.js');
let ControllerInfo = require('./ControllerInfo.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let CliffEvent = require('./CliffEvent.js');
let ExternalPower = require('./ExternalPower.js');
let DockInfraRed = require('./DockInfraRed.js');
let ScanAngle = require('./ScanAngle.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let ButtonEvent = require('./ButtonEvent.js');
let Led = require('./Led.js');
let AutoDockingResult = require('./AutoDockingResult.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');

module.exports = {
  MotorPower: MotorPower,
  KeyboardInput: KeyboardInput,
  VersionInfo: VersionInfo,
  BumperEvent: BumperEvent,
  Sound: Sound,
  SensorState: SensorState,
  DigitalOutput: DigitalOutput,
  ControllerInfo: ControllerInfo,
  RobotStateEvent: RobotStateEvent,
  DigitalInputEvent: DigitalInputEvent,
  PowerSystemEvent: PowerSystemEvent,
  CliffEvent: CliffEvent,
  ExternalPower: ExternalPower,
  DockInfraRed: DockInfraRed,
  ScanAngle: ScanAngle,
  WheelDropEvent: WheelDropEvent,
  ButtonEvent: ButtonEvent,
  Led: Led,
  AutoDockingResult: AutoDockingResult,
  AutoDockingAction: AutoDockingAction,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingGoal: AutoDockingGoal,
};
