///////////////////////////////////////////////
//			hawkdll.h
//		  revision 1.1
//
//	  All copyright PC Control Ltd. 2010
//		
///////////////////////////////////////////////
// DLL Function type definitions

// system defs
typedef int	(*Type_Sys_Initialise)();				// find all devices connected and open USB paths to them
typedef int	(*Type_Sys_GetMotorHawkCount)();		// find number of motor hawks connected
typedef int	(*Type_Sys_GetSwitchingHawkCount)();	// find number of switching hawks connected
typedef int	(*Type_Sys_GetServoHawkCount)();		// find number of servo hawks connected
typedef int	(*Type_Sys_CloseAllDevices)();			// close all open paths to USB devices

// motor hawk defs
typedef int	(*Type_Motor_SetType)(int devnum, int type);				// choose motor type (stepper or DC Motors)
typedef int	(*Type_Motor_RunSteps)(int devnum, int steps);				// set the number of steps to execute
typedef int	(*Type_Motor_SetDCMotors)(int devnum, int M1Speed, int M1Dir, int M2Speed, int M2Dir);		// set the speed and direction of both DC motors
typedef int	(*Type_Motor_GetDCMotors)(int devnum, int *M1Speed, int *M1Dir, int *M2Speed, int *M2Dir);	// get the speed and direction of both DC motors from the specified board
typedef int	(*Type_Motor_GetType)(int devnum, int *motor_type);											// get the type of motor currently configured for from the specified board
typedef int	(*Type_Motor_GetStepper)(int devnum, int *direction, int *interval, int *step_mode, int *power, int *steps, int *run_mode, int *paused);			// get the current stepper motor settings from the specified board
typedef int	(*Type_Motor_GetStepsRemaining)(int devnum, int *steps_remaining);			// get the current steps remaining from the specified board
typedef int	(*Type_Motor_SetDigitalOutputs)(int devnum, int outputs);					// set the digital outputs
typedef int	(*Type_Motor_GetDigitalOutputs)(int devnum, int *outputs);					// get the current settings of the digital outputs
typedef int	(*Type_Motor_GetDigitalInputs)(int devnum, int *inputs);					// get the current digital inputs
typedef int	(*Type_Motor_SetLimitEnables)(int devnum, int m1_forward, int m1_reverse, int m2_forward, int m2_reverse);			// set the limit switch enables
typedef int	(*Type_Motor_GetLimitEnables)(int devnum, int *m1_forward, int *m1_reverse, int *m2_forward, int *m2_reverse);		// get the current limit switch enable settings
typedef int	(*Type_Motor_SetStepper)(int devnum, int direction, int interval, int step_mode, int power);					// configure the stepper motor
typedef int	(*Type_Motor_PauseStepper)(int devnum);										// temporarily pause the stepper motor
typedef int	(*Type_Motor_ResumeStepper)(int devnum);									// resume running of the stepper motor
typedef int	(*Type_Motor_StopStepper)(int devnum);										// stop the stepper motor and clear any remaining steps
typedef int	(*Type_Motor_SetRunMode)(int devnum, int run_mode);							// set the stepper running mode (once or continuous)
typedef int	(*Type_Motor_ResetBoard)(int devnum);										// reset board

// switching hawk defs
typedef int	(*Type_Switching_SetOutputs)(int devnum, int outputs);		// set the outputs
typedef int	(*Type_Switching_GetOutputs)(int devnum, int *outputs);		// get the current outputs

// servo hawk defs
typedef int	(*Type_Servo_SetServos)(int devnum, int Servo1, int Servo2, int Servo3, int Servo4, int Servo5, int Servo6, int Servo7, int Servo8);			// set the servos
typedef int	(*Type_Servo_GetServos)(int devnum, int *Servo1, int *Servo2, int *Servo3, int *Servo4, int *Servo5, int *Servo6, int *Servo7, int *Servo8);	// get the current servo positions
typedef int	(*Type_Servo_SetOutputs)(int devnum, int outputs);		// set the outputs
typedef int	(*Type_Servo_GetOutputs)(int devnum, int *outputs);		// get the current outputs


///////////////////////////////////////////////
// other defs
#define STEP_MODE_FULL	1
#define STEP_MODE_HALF	2

#define POWER_ZERO			1
#define POWER_FRACTIONAL	2
#define POWER_MAX			3

#define MHK_STOPPED			0
#define MHK_FORWARD			1		// direction of DC motors
#define MHK_REVERSE			2

#define TYPE_STEPPER	0			// motor hawk is driving a stepper motor
#define TYPE_DCMOTORS	1			// motor hawk is driving two DC motors

#define STEPPER_RUN_ONCE		0	// run the specified steps once
#define STEPPER_RUN_CONTINUOUS	1	// run stepper continuously
