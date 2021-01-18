// VCHawkDlg.cpp : implementation file
//

// standard windows visual C++ 
#include "stdafx.h"
#include "VCHawk.h"
#include "VCHawkDlg.h"
#include ".\vchawkdlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif



//////////////	Hawk  DLL interface  /////////////////////////////
#include "hawkdll.h"	// use the hawk header file
						
HINSTANCE				HawkDll;		 // handle for the dll

// make ProcAddress pointers for each hawk function
// using the type defs in the hawkdll.h header file

// system functions
Type_Sys_Initialise				Sys_Initialise;
Type_Sys_CloseAllDevices		Sys_CloseAllDevices;
Type_Sys_GetMotorHawkCount		Sys_GetMotorHawkCount;
Type_Sys_GetSwitchingHawkCount	Sys_GetSwitchingHawkCount;
Type_Sys_GetServoHawkCount		Sys_GetServoHawkCount;

// motor hawk functions
Type_Motor_SetType				Motor_SetType;
Type_Motor_RunSteps				Motor_RunSteps;
Type_Motor_SetDCMotors			Motor_SetDCMotors;
Type_Motor_GetDCMotors			Motor_GetDCMotors;
Type_Motor_GetType				Motor_GetType;
Type_Motor_GetStepper			Motor_GetStepper;
Type_Motor_GetStepsRemaining	Motor_GetStepsRemaining;
Type_Motor_SetDigitalOutputs	Motor_SetDigitalOutputs;
Type_Motor_GetDigitalOutputs	Motor_GetDigitalOutputs;
Type_Motor_GetDigitalInputs		Motor_GetDigitalInputs;
Type_Motor_SetLimitEnables		Motor_SetLimitEnables;
Type_Motor_GetLimitEnables		Motor_GetLimitEnables;
Type_Motor_SetStepper			Motor_SetStepper;
Type_Motor_PauseStepper			Motor_PauseStepper;
Type_Motor_ResumeStepper		Motor_ResumeStepper;
Type_Motor_StopStepper			Motor_StopStepper;
Type_Motor_SetRunMode			Motor_SetRunMode;
Type_Motor_ResetBoard			Motor_ResetBoard;

// switching hawk functions
Type_Switching_SetOutputs		Switching_SetOutputs;
Type_Switching_GetOutputs		Switching_GetOutputs;

// servo hawk functions
Type_Servo_SetServos		Servo_SetServos;
Type_Servo_GetServos		Servo_GetServos;
Type_Servo_SetOutputs		Servo_SetOutputs;
Type_Servo_GetOutputs		Servo_GetOutputs;


//////////// End of	Hawk  DLL interface  //////////////////////

////////////// Globals	Used with the Hawk Boards	/////////////////////////////////
int DevCount;					// number of valid devices found during initialisation
int MohawksConnected;			// number of motor hawks conected
int SwitchHawksConnected;		// number of switching hawks conected
int ServoHawksConnected;		// number of servo hawks conected




// CVCHawkDlg dialog
CVCHawkDlg::CVCHawkDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CVCHawkDlg::IDD, pParent)
	, m_found(0)
	, m_mhk_found(0)
	, m_shk_found(0)
	, m_svhk_found(0)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CVCHawkDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_TOTALFOUND, m_found);
	DDX_Text(pDX, IDC_MHKFOUND, m_mhk_found);
	DDX_Text(pDX, IDC_SHKFOUND, m_shk_found);
	DDX_Text(pDX, IDC_SVHKFOUND, m_svhk_found);
}

BEGIN_MESSAGE_MAP(CVCHawkDlg, CDialog)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
	ON_BN_CLICKED(IDC_SCAN, OnBnClickedScan)
	ON_BN_CLICKED(IDC_SETSHKOUTPUTS, OnBnClickedSetshkoutputs)
	ON_BN_CLICKED(IDC_CONFIGSTEPPER, OnBnClickedConfigstepper)
	ON_BN_CLICKED(IDC_SETSTEPPER, OnBnClickedSetstepper)
	ON_BN_CLICKED(IDC_RUNSTEPPER, OnBnClickedRunstepper)
	ON_BN_CLICKED(IDC_CONFIGDCMOTORS, OnBnClickedConfigdcmotors)
	ON_BN_CLICKED(IDC_SETDCMOTORS, OnBnClickedSetdcmotors)
	ON_BN_CLICKED(IDC_STOP_MOTORS, OnBnClickedStopMotors)
	ON_BN_CLICKED(IDC_GET_SWITCHING, OnBnClickedGetSwitching)
	ON_BN_CLICKED(IDC_GET_DCMOTOR, OnBnClickedGetDcmotor)
	ON_BN_CLICKED(IDC_GET_STEPPER, OnBnClickedGetStepper)
	ON_BN_CLICKED(IDC_SETSERVOPOS1, OnBnClickedSetservopos1)
	ON_BN_CLICKED(IDC_SETSERVOPOS2, OnBnClickedSetservopos2)
	ON_BN_CLICKED(IDC_SETSERVO_OUTPUTS, OnBnClickedSetservoOutputs)
	ON_BN_CLICKED(IDC_GET_SERVO_STATUS, OnBnClickedGetServoStatus)
	ON_BN_CLICKED(IDC_CLOSE, OnBnClickedClose)
END_MESSAGE_MAP()


// CVCHawkDlg message handlers

BOOL CVCHawkDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon

	// load the DLL and get the function pointers to the DLL functions
	LoadHawkDll();
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CVCHawkDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this function to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CVCHawkDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}



///////////////////////////////////////////////////////////////////////////////////////
//////////////////// Hawk Specific Functions	///////////////////////////////////////


// load the DLL and get the function pointers to the DLL functions
void CVCHawkDlg::LoadHawkDll(void)
{
	HawkDll = LoadLibrary("hawk.dll");		// load the DLL function library
	
	if(HawkDll != NULL)		// make sure DLL library has loaded correctly
	{
		// get the function pointers to the DLL system functions
		Sys_Initialise = (Type_Sys_Initialise)GetProcAddress( HawkDll, "Sys_Initialise");
		Sys_CloseAllDevices = (Type_Sys_CloseAllDevices)GetProcAddress( HawkDll, "Sys_CloseAllDevices");
		Sys_GetMotorHawkCount = (Type_Sys_GetMotorHawkCount)GetProcAddress( HawkDll, "Sys_GetMotorHawkCount");
		Sys_GetSwitchingHawkCount = (Type_Sys_GetSwitchingHawkCount)GetProcAddress( HawkDll, "Sys_GetSwitchingHawkCount");
		Sys_GetServoHawkCount = (Type_Sys_GetServoHawkCount)GetProcAddress( HawkDll, "Sys_GetServoHawkCount");

		// get the function pointers to the DLL Motor Hawk functions
		Motor_SetType = (Type_Motor_SetType)GetProcAddress( HawkDll, "Motor_SetType");
		Motor_RunSteps = (Type_Motor_RunSteps)GetProcAddress( HawkDll, "Motor_RunSteps");
		Motor_SetDCMotors = (Type_Motor_SetDCMotors)GetProcAddress( HawkDll, "Motor_SetDCMotors");
		Motor_GetDCMotors = (Type_Motor_GetDCMotors)GetProcAddress( HawkDll, "Motor_GetDCMotors");
		Motor_GetType = (Type_Motor_GetType)GetProcAddress( HawkDll, "Motor_GetType");
		Motor_GetStepper = (Type_Motor_GetStepper)GetProcAddress( HawkDll, "Motor_GetStepper");
		Motor_GetStepsRemaining = (Type_Motor_GetStepsRemaining)GetProcAddress( HawkDll, "Motor_GetStepsRemaining");
		Motor_SetDigitalOutputs = (Type_Motor_SetDigitalOutputs)GetProcAddress( HawkDll, "Motor_SetDigitalOutputs");
		Motor_GetDigitalOutputs = (Type_Motor_GetDigitalOutputs)GetProcAddress( HawkDll, "Motor_GetDigitalOutputs");
		Motor_GetDigitalInputs = (Type_Motor_GetDigitalInputs)GetProcAddress( HawkDll, "Motor_GetDigitalInputs");
		Motor_SetLimitEnables = (Type_Motor_SetLimitEnables)GetProcAddress( HawkDll, "Motor_SetLimitEnables");
		Motor_GetLimitEnables = (Type_Motor_GetLimitEnables)GetProcAddress( HawkDll, "Motor_GetLimitEnables");
		Motor_SetStepper = (Type_Motor_SetStepper)GetProcAddress( HawkDll, "Motor_SetStepper");
		Motor_PauseStepper = (Type_Motor_PauseStepper)GetProcAddress( HawkDll, "Motor_PauseStepper");
		Motor_ResumeStepper = (Type_Motor_ResumeStepper)GetProcAddress( HawkDll, "Motor_ResumeStepper");
		Motor_StopStepper = (Type_Motor_StopStepper)GetProcAddress( HawkDll, "Motor_StopStepper");
		Motor_SetRunMode = (Type_Motor_SetRunMode)GetProcAddress( HawkDll, "Motor_SetRunMode");
		Motor_ResetBoard = (Type_Motor_ResetBoard)GetProcAddress( HawkDll, "Motor_ResetBoard");

		// get the function pointers to the DLL Switching Hawk functions
		Switching_SetOutputs = (Type_Switching_SetOutputs)GetProcAddress( HawkDll, "Switching_SetOutputs");
		Switching_GetOutputs = (Type_Switching_GetOutputs)GetProcAddress( HawkDll, "Switching_GetOutputs");

		// get the function pointers to the DLL Servo Hawk functions
		Servo_SetServos = (Type_Servo_SetServos)GetProcAddress( HawkDll, "Servo_SetServos");
		Servo_GetServos = (Type_Servo_GetServos)GetProcAddress( HawkDll, "Servo_GetServos");
		Servo_SetOutputs = (Type_Servo_SetOutputs)GetProcAddress( HawkDll, "Servo_SetOutputs");
		Servo_GetOutputs = (Type_Servo_GetOutputs)GetProcAddress( HawkDll, "Servo_GetOutputs");
	}
	
}




// Scan the USB system for all connected Hawk devices
void CVCHawkDlg::OnBnClickedScan()
{
	m_found = Sys_Initialise();
	DevCount = m_found;

	m_mhk_found	= Sys_GetMotorHawkCount();
	MohawksConnected = m_mhk_found;

	m_shk_found	= Sys_GetSwitchingHawkCount();
	SwitchHawksConnected	=	m_shk_found;
	
	m_svhk_found	= Sys_GetServoHawkCount();
	ServoHawksConnected	=	m_svhk_found;

	UpdateData(FALSE);	
}

// turn on the first 3 outputs on the first switching hawk board connected
void CVCHawkDlg::OnBnClickedSetshkoutputs()
{
	if(m_shk_found >0)								// make sure there is at least one switching hawk connected
		Switching_SetOutputs(1, 0x00000007);		// 0x0007 is 0000 .....0000 0000 0111 in binary

}

// configure the first motor hawk connected to control a stepper motor (rather than DC Motors)
void CVCHawkDlg::OnBnClickedConfigstepper()
{
	if(m_mhk_found >0)						// make sure there is at least one motor hawk connected
		Motor_SetType(1, TYPE_STEPPER);		// set board 1 to be a stepper motor controller
											// constant TYPE_STEPPER is defined in hawkdll.h to be the value 0
}


// send the stepper motor operating parameters (step interval, direction, power and step mode)
void CVCHawkDlg::OnBnClickedSetstepper()
{
	int device_number, direction, interval, step_mode, power;

	device_number = 1;			// use the first board connected
	direction = MHK_FORWARD;
	interval = 10;				// 10ms
	step_mode = STEP_MODE_FULL;
	power = 255;				// full power

	if(m_mhk_found >0)						// make sure there is at least one motor hawk connected
		Motor_SetStepper(device_number, direction, interval, step_mode, power );		// set board

}

// run the stepper motor on board 1 for 200 steps using the already specified settings
void CVCHawkDlg::OnBnClickedRunstepper()
{
	if(m_mhk_found >0)					// make sure there is at least one motor hawk connected
		Motor_RunSteps(1, 200);			// run 200 steps on board 1

}

// configure board to to control DC motors (rather than stepper type)
void CVCHawkDlg::OnBnClickedConfigdcmotors()
{
	if(m_mhk_found >1)						// make sure there is at least two motor hawks connected
		Motor_SetType(2, TYPE_DCMOTORS);	// set board 2 to be a DC motor controller

}

// run DC motor 1 on board 2 forward at almost full speed
void CVCHawkDlg::OnBnClickedSetdcmotors()
{
	int device_number, M1Speed, M1Dir, M2Speed, M2Dir;

	device_number = 2;
	M1Speed = 230;
	M1Dir = MHK_FORWARD;
	M2Speed = 0;
	M2Dir = MHK_REVERSE;

	if(m_mhk_found >1)							// make sure there is at least two motor hawks connected
		Motor_SetDCMotors(device_number, M1Speed, M1Dir, M2Speed, M2Dir);	// set motor 1 running forward at a little under full speed on board 2


}

// set the speed of both DC motors to 0 on board 2
void CVCHawkDlg::OnBnClickedStopMotors()
{
	int device_number, M1Speed, M1Dir, M2Speed, M2Dir;

	device_number = 2;
	M1Speed = 0;
	M1Dir = MHK_FORWARD;
	M2Speed = 0;
	M2Dir = MHK_REVERSE;

	if(m_mhk_found >1)							// make sure there is at least two motor hawks connected
		Motor_SetDCMotors(device_number, M1Speed, M1Dir, M2Speed, M2Dir);	// set speed to 0 for both motors on board 2

}

// get the current settings on the first switching hawk connected
void CVCHawkDlg::OnBnClickedGetSwitching()
{
	int outputs, error;

	if(m_shk_found >0)								// make sure there is at least one switching hawk connected
		error = Switching_GetOutputs(1, &outputs);			// get the current output settings into the vriable "outputs"

	if(error==0)
	{
		// contents of the variable "outputs" will now be valid
	}

}


// get the current DC Motor settings on board 1
void CVCHawkDlg::OnBnClickedGetDcmotor()
{
	int device_number, M1Speed, M1Dir, M2Speed, M2Dir, error;

	device_number = 1;
	
	if(m_mhk_found >0)							// make sure there is at least one motor hawk connected
		error = Motor_GetDCMotors(device_number, &M1Speed, &M1Dir, &M2Speed, &M2Dir);	// get settings for both motors on board 1

	if(error==0)
	{
		// contents of the variables M1Speed, M1Dir, M2Speed and M2Dir will now be valid
	}

}

// get the current stepper motor settings from board 1
void CVCHawkDlg::OnBnClickedGetStepper()
{
	int device_number, direction, interval, step_mode, power, error;
	int steps, run_mode, paused;

	device_number = 1;

	if(m_mhk_found >0)						// make sure there is at least one motor hawk connected
		error = Motor_GetStepper(device_number, &direction, &interval, &step_mode, &power, &steps, &run_mode, &paused );		// get settings from board

	if(error == 0)
	{
		// variables ( direction, interval .... paused) now contain valid data
	}

}

void CVCHawkDlg::OnBnClickedSetservopos1()
{
	int device_number, servo1, servo2, servo3, servo4, servo5, servo6, servo7, servo8;

	device_number = 1;			// use the first servo hawk connected
	servo1 = 250;				// first position of servo 1
	servo2 = servo3 = servo4 = servo5 = servo6 = servo7 = servo8 = 512;		// all other servos to centre position

	if(m_svhk_found >0)								// make sure there is at least one servo hawk connected
		Servo_SetServos(device_number, servo1, servo2, servo3, servo4, servo5, servo6, servo7, servo8);		// set the position of the servos

}

void CVCHawkDlg::OnBnClickedSetservopos2()
{
	int device_number, servo1, servo2, servo3, servo4, servo5, servo6, servo7, servo8;

	device_number = 1;			// use the first servo hawk connected
	servo1 = 750;				// second position of servo 1
	servo2 = servo3 = servo4 = servo5 = servo6 = servo7 = servo8 = 512;		// all other servos to centre position

	if(m_svhk_found >0)								// make sure there is at least one servo hawk connected
		Servo_SetServos(device_number, servo1, servo2, servo3, servo4, servo5, servo6, servo7, servo8);		// set the position of the servos

}

void CVCHawkDlg::OnBnClickedSetservoOutputs()
{
	if(m_svhk_found >0)								// make sure there is at least one servo hawk connected
		Servo_SetOutputs(1, 0x00000007);		// 0x0007 is 0000 .....0000 0000 0111 in binary

}

void CVCHawkDlg::OnBnClickedGetServoStatus()
{
	int device_number, servo1, servo2, servo3, servo4, servo5, servo6, servo7, servo8;
	int outputs, error;

	device_number = 1;			// use the first servo hawk connected
	error = Servo_GetServos(device_number, &servo1, &servo2, &servo3, &servo4, &servo5, &servo6, &servo7, &servo8);		// get the current servo positions
	if(error == 0)
	{
		// variables (servo1.....servo8) now contain valid data
	}

	error = Servo_GetOutputs(device_number, &outputs);		// get the current on/off pattern of the servo outputs
	if(error == 0)
	{
		// variable "outputs" now contains valid data
	}


}

// close all open paths to connected USB devices found during "scan"
void CVCHawkDlg::OnBnClickedClose()
{
	Sys_CloseAllDevices();
}
