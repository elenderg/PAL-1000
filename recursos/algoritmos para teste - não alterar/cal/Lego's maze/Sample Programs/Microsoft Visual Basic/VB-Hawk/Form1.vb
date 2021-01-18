Public Class Form1
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    Friend WithEvents Scan As System.Windows.Forms.Button
    Friend WithEvents DeviceCount As System.Windows.Forms.TextBox
    Friend WithEvents MotorHawks As System.Windows.Forms.TextBox
    Friend WithEvents SwitchingHawks As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents SetSwitchingOutputs As System.Windows.Forms.Button
    Friend WithEvents GetSwitchingSettings As System.Windows.Forms.Button
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents ConfigStepper As System.Windows.Forms.Button
    Friend WithEvents SetStepper As System.Windows.Forms.Button
    Friend WithEvents RunStepper As System.Windows.Forms.Button
    Friend WithEvents GetStepper As System.Windows.Forms.Button
    Friend WithEvents ConfigDCMotors As System.Windows.Forms.Button
    Friend WithEvents SetDCMotors As System.Windows.Forms.Button
    Friend WithEvents StopMotors As System.Windows.Forms.Button
    Friend WithEvents GetDCMotors As System.Windows.Forms.Button
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents SetServo1Pos1 As System.Windows.Forms.Button
    Friend WithEvents SetServo1Pos2 As System.Windows.Forms.Button
    Friend WithEvents SetServoOutputs As System.Windows.Forms.Button
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents Label16 As System.Windows.Forms.Label
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents ServoHawks As System.Windows.Forms.TextBox
    Friend WithEvents GetServoStatus As System.Windows.Forms.Button
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents Label19 As System.Windows.Forms.Label
    Friend WithEvents CloseDevices As System.Windows.Forms.Button
    Friend WithEvents Label20 As System.Windows.Forms.Label
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Scan = New System.Windows.Forms.Button
        Me.DeviceCount = New System.Windows.Forms.TextBox
        Me.MotorHawks = New System.Windows.Forms.TextBox
        Me.SwitchingHawks = New System.Windows.Forms.TextBox
        Me.Label2 = New System.Windows.Forms.Label
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label3 = New System.Windows.Forms.Label
        Me.Label4 = New System.Windows.Forms.Label
        Me.SetSwitchingOutputs = New System.Windows.Forms.Button
        Me.GetSwitchingSettings = New System.Windows.Forms.Button
        Me.Label5 = New System.Windows.Forms.Label
        Me.Label6 = New System.Windows.Forms.Label
        Me.ConfigStepper = New System.Windows.Forms.Button
        Me.SetStepper = New System.Windows.Forms.Button
        Me.RunStepper = New System.Windows.Forms.Button
        Me.GetStepper = New System.Windows.Forms.Button
        Me.ConfigDCMotors = New System.Windows.Forms.Button
        Me.SetDCMotors = New System.Windows.Forms.Button
        Me.StopMotors = New System.Windows.Forms.Button
        Me.GetDCMotors = New System.Windows.Forms.Button
        Me.Label7 = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.Label9 = New System.Windows.Forms.Label
        Me.Label10 = New System.Windows.Forms.Label
        Me.Label11 = New System.Windows.Forms.Label
        Me.Label12 = New System.Windows.Forms.Label
        Me.Label13 = New System.Windows.Forms.Label
        Me.Label14 = New System.Windows.Forms.Label
        Me.GroupBox1 = New System.Windows.Forms.GroupBox
        Me.Label19 = New System.Windows.Forms.Label
        Me.Label17 = New System.Windows.Forms.Label
        Me.ServoHawks = New System.Windows.Forms.TextBox
        Me.CloseDevices = New System.Windows.Forms.Button
        Me.GroupBox2 = New System.Windows.Forms.GroupBox
        Me.GroupBox3 = New System.Windows.Forms.GroupBox
        Me.SetServo1Pos1 = New System.Windows.Forms.Button
        Me.SetServo1Pos2 = New System.Windows.Forms.Button
        Me.SetServoOutputs = New System.Windows.Forms.Button
        Me.Label15 = New System.Windows.Forms.Label
        Me.Label16 = New System.Windows.Forms.Label
        Me.GroupBox4 = New System.Windows.Forms.GroupBox
        Me.Label18 = New System.Windows.Forms.Label
        Me.GetServoStatus = New System.Windows.Forms.Button
        Me.Label20 = New System.Windows.Forms.Label
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.SuspendLayout()
        '
        'Scan
        '
        Me.Scan.Location = New System.Drawing.Point(168, 56)
        Me.Scan.Name = "Scan"
        Me.Scan.TabIndex = 1
        Me.Scan.Text = "Scan"
        '
        'DeviceCount
        '
        Me.DeviceCount.Location = New System.Drawing.Point(224, 88)
        Me.DeviceCount.Name = "DeviceCount"
        Me.DeviceCount.Size = New System.Drawing.Size(64, 20)
        Me.DeviceCount.TabIndex = 2
        Me.DeviceCount.Text = "DeviceCount"
        '
        'MotorHawks
        '
        Me.MotorHawks.Location = New System.Drawing.Point(224, 112)
        Me.MotorHawks.Name = "MotorHawks"
        Me.MotorHawks.Size = New System.Drawing.Size(64, 20)
        Me.MotorHawks.TabIndex = 4
        Me.MotorHawks.Text = "Motor Hawks"
        '
        'SwitchingHawks
        '
        Me.SwitchingHawks.Location = New System.Drawing.Point(224, 136)
        Me.SwitchingHawks.Name = "SwitchingHawks"
        Me.SwitchingHawks.Size = New System.Drawing.Size(64, 20)
        Me.SwitchingHawks.TabIndex = 5
        Me.SwitchingHawks.Text = "Switching Hawks"
        '
        'Label2
        '
        Me.Label2.Location = New System.Drawing.Point(88, 112)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(128, 16)
        Me.Label2.TabIndex = 6
        Me.Label2.Text = "Number of Motor Hawks"
        Me.Label2.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label1
        '
        Me.Label1.Location = New System.Drawing.Point(80, 88)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(136, 16)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "Total Devices Connected"
        Me.Label1.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label3
        '
        Me.Label3.Location = New System.Drawing.Point(64, 136)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(152, 16)
        Me.Label3.TabIndex = 8
        Me.Label3.Text = "Number of Switching Hawks"
        Me.Label3.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label4
        '
        Me.Label4.Location = New System.Drawing.Point(96, 40)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(224, 16)
        Me.Label4.TabIndex = 9
        Me.Label4.Text = "Always scan for connected boards FIRST !"
        '
        'SetSwitchingOutputs
        '
        Me.SetSwitchingOutputs.Location = New System.Drawing.Point(48, 72)
        Me.SetSwitchingOutputs.Name = "SetSwitchingOutputs"
        Me.SetSwitchingOutputs.Size = New System.Drawing.Size(128, 23)
        Me.SetSwitchingOutputs.TabIndex = 10
        Me.SetSwitchingOutputs.Text = "Set Switching Outputs"
        '
        'GetSwitchingSettings
        '
        Me.GetSwitchingSettings.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.GetSwitchingSettings.Location = New System.Drawing.Point(48, 168)
        Me.GetSwitchingSettings.Name = "GetSwitchingSettings"
        Me.GetSwitchingSettings.Size = New System.Drawing.Size(128, 23)
        Me.GetSwitchingSettings.TabIndex = 11
        Me.GetSwitchingSettings.Text = "Get Switching Settings"
        '
        'Label5
        '
        Me.Label5.Location = New System.Drawing.Point(8, 40)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(184, 24)
        Me.Label5.TabIndex = 12
        Me.Label5.Text = "Turn on first three outputs on the first switching hawk connected"
        Me.Label5.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label6
        '
        Me.Label6.Location = New System.Drawing.Point(424, 160)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(184, 24)
        Me.Label6.TabIndex = 13
        Me.Label6.Text = "Refer to program listing on how to use the settings retrieved here"
        Me.Label6.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'ConfigStepper
        '
        Me.ConfigStepper.Location = New System.Drawing.Point(272, 296)
        Me.ConfigStepper.Name = "ConfigStepper"
        Me.ConfigStepper.Size = New System.Drawing.Size(176, 23)
        Me.ConfigStepper.TabIndex = 14
        Me.ConfigStepper.Text = "Configure for Stepper"
        '
        'SetStepper
        '
        Me.SetStepper.Location = New System.Drawing.Point(272, 336)
        Me.SetStepper.Name = "SetStepper"
        Me.SetStepper.Size = New System.Drawing.Size(176, 23)
        Me.SetStepper.TabIndex = 15
        Me.SetStepper.Text = "Set Stepper"
        '
        'RunStepper
        '
        Me.RunStepper.Location = New System.Drawing.Point(272, 376)
        Me.RunStepper.Name = "RunStepper"
        Me.RunStepper.Size = New System.Drawing.Size(176, 23)
        Me.RunStepper.TabIndex = 16
        Me.RunStepper.Text = "Run Stepper"
        '
        'GetStepper
        '
        Me.GetStepper.Location = New System.Drawing.Point(272, 416)
        Me.GetStepper.Name = "GetStepper"
        Me.GetStepper.Size = New System.Drawing.Size(176, 23)
        Me.GetStepper.TabIndex = 17
        Me.GetStepper.Text = "Get Stepper Motor Settings"
        '
        'ConfigDCMotors
        '
        Me.ConfigDCMotors.Location = New System.Drawing.Point(736, 296)
        Me.ConfigDCMotors.Name = "ConfigDCMotors"
        Me.ConfigDCMotors.Size = New System.Drawing.Size(144, 23)
        Me.ConfigDCMotors.TabIndex = 18
        Me.ConfigDCMotors.Text = "Configure for DC Motors"
        '
        'SetDCMotors
        '
        Me.SetDCMotors.Location = New System.Drawing.Point(736, 336)
        Me.SetDCMotors.Name = "SetDCMotors"
        Me.SetDCMotors.Size = New System.Drawing.Size(144, 23)
        Me.SetDCMotors.TabIndex = 19
        Me.SetDCMotors.Text = "Set DC Motor 1"
        '
        'StopMotors
        '
        Me.StopMotors.Location = New System.Drawing.Point(736, 376)
        Me.StopMotors.Name = "StopMotors"
        Me.StopMotors.Size = New System.Drawing.Size(144, 23)
        Me.StopMotors.TabIndex = 20
        Me.StopMotors.Text = "Stop Both Motors"
        '
        'GetDCMotors
        '
        Me.GetDCMotors.Location = New System.Drawing.Point(736, 416)
        Me.GetDCMotors.Name = "GetDCMotors"
        Me.GetDCMotors.Size = New System.Drawing.Size(144, 23)
        Me.GetDCMotors.TabIndex = 21
        Me.GetDCMotors.Text = "Get DC Motor Settings"
        '
        'Label7
        '
        Me.Label7.Location = New System.Drawing.Point(72, 296)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(192, 24)
        Me.Label7.TabIndex = 22
        Me.Label7.Text = "Configure the first motor hawk connected to control a stepper motor"
        Me.Label7.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label8
        '
        Me.Label8.Location = New System.Drawing.Point(32, 336)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(232, 24)
        Me.Label8.TabIndex = 23
        Me.Label8.Text = "Send a set of stepper parameters to indicate step interval , direction and power"
        Me.Label8.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label9
        '
        Me.Label9.Location = New System.Drawing.Point(80, 376)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(184, 24)
        Me.Label9.TabIndex = 24
        Me.Label9.Text = "Run the stepper motor with its current configuration for 200 steps"
        Me.Label9.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label10
        '
        Me.Label10.Location = New System.Drawing.Point(80, 416)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(184, 24)
        Me.Label10.TabIndex = 25
        Me.Label10.Text = "Refer to program listing on how to use the settings retrieved here"
        Me.Label10.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label11
        '
        Me.Label11.Location = New System.Drawing.Point(536, 416)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(184, 24)
        Me.Label11.TabIndex = 26
        Me.Label11.Text = "Refer to program listing on how to use the settings retrieved here"
        Me.Label11.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label12
        '
        Me.Label12.Location = New System.Drawing.Point(536, 296)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(184, 24)
        Me.Label12.TabIndex = 27
        Me.Label12.Text = "Configure the second motor hawk connected to control DC Motors"
        Me.Label12.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label13
        '
        Me.Label13.Location = New System.Drawing.Point(544, 336)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(176, 24)
        Me.Label13.TabIndex = 28
        Me.Label13.Text = "Run DC Motor 1 on board 2 according to supplied parameters"
        Me.Label13.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label14
        '
        Me.Label14.Location = New System.Drawing.Point(568, 376)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(152, 16)
        Me.Label14.TabIndex = 29
        Me.Label14.Text = "Stop both motors on board 2"
        Me.Label14.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label20)
        Me.GroupBox1.Controls.Add(Me.Label19)
        Me.GroupBox1.Controls.Add(Me.Label17)
        Me.GroupBox1.Controls.Add(Me.ServoHawks)
        Me.GroupBox1.Controls.Add(Me.CloseDevices)
        Me.GroupBox1.Location = New System.Drawing.Point(16, 24)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(384, 232)
        Me.GroupBox1.TabIndex = 30
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Initialisation"
        '
        'Label19
        '
        Me.Label19.Location = New System.Drawing.Point(56, 176)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(144, 16)
        Me.Label19.TabIndex = 41
        Me.Label19.Text = "Close all connected devices"
        Me.Label19.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Label17
        '
        Me.Label17.Location = New System.Drawing.Point(72, 136)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(128, 16)
        Me.Label17.TabIndex = 40
        Me.Label17.Text = "Number of Servo Hawks"
        Me.Label17.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'ServoHawks
        '
        Me.ServoHawks.Location = New System.Drawing.Point(208, 136)
        Me.ServoHawks.Name = "ServoHawks"
        Me.ServoHawks.Size = New System.Drawing.Size(64, 20)
        Me.ServoHawks.TabIndex = 39
        Me.ServoHawks.Text = "Servo Hawks"
        '
        'CloseDevices
        '
        Me.CloseDevices.Location = New System.Drawing.Point(208, 184)
        Me.CloseDevices.Name = "CloseDevices"
        Me.CloseDevices.TabIndex = 39
        Me.CloseDevices.Text = "Close"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.SetSwitchingOutputs)
        Me.GroupBox2.Controls.Add(Me.GetSwitchingSettings)
        Me.GroupBox2.Location = New System.Drawing.Point(416, 24)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(224, 232)
        Me.GroupBox2.TabIndex = 31
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Switching Hawk"
        '
        'GroupBox3
        '
        Me.GroupBox3.Location = New System.Drawing.Point(16, 272)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(880, 184)
        Me.GroupBox3.TabIndex = 32
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Motor Hawk"
        '
        'SetServo1Pos1
        '
        Me.SetServo1Pos1.Location = New System.Drawing.Point(720, 64)
        Me.SetServo1Pos1.Name = "SetServo1Pos1"
        Me.SetServo1Pos1.Size = New System.Drawing.Size(120, 23)
        Me.SetServo1Pos1.TabIndex = 33
        Me.SetServo1Pos1.Text = "Set Servo1 to Pos 1"
        '
        'SetServo1Pos2
        '
        Me.SetServo1Pos2.Location = New System.Drawing.Point(720, 96)
        Me.SetServo1Pos2.Name = "SetServo1Pos2"
        Me.SetServo1Pos2.Size = New System.Drawing.Size(120, 23)
        Me.SetServo1Pos2.TabIndex = 34
        Me.SetServo1Pos2.Text = "Set Servo1 to Pos 2"
        '
        'SetServoOutputs
        '
        Me.SetServoOutputs.Location = New System.Drawing.Point(720, 160)
        Me.SetServoOutputs.Name = "SetServoOutputs"
        Me.SetServoOutputs.Size = New System.Drawing.Size(120, 23)
        Me.SetServoOutputs.TabIndex = 35
        Me.SetServoOutputs.Text = "Set Servo Outputs"
        '
        'Label15
        '
        Me.Label15.Location = New System.Drawing.Point(688, 48)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(192, 16)
        Me.Label15.TabIndex = 36
        Me.Label15.Text = "Move Servo1 on the first servo hawk"
        '
        'Label16
        '
        Me.Label16.Location = New System.Drawing.Point(672, 144)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(216, 16)
        Me.Label16.TabIndex = 37
        Me.Label16.Text = "Set Servo Outputs on the first servo hawk"
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.Label18)
        Me.GroupBox4.Controls.Add(Me.GetServoStatus)
        Me.GroupBox4.Location = New System.Drawing.Point(664, 24)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(232, 232)
        Me.GroupBox4.TabIndex = 38
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Servo Hawk"
        '
        'Label18
        '
        Me.Label18.Location = New System.Drawing.Point(80, 184)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(80, 16)
        Me.Label18.TabIndex = 40
        Me.Label18.Text = "Get Status"
        '
        'GetServoStatus
        '
        Me.GetServoStatus.Location = New System.Drawing.Point(56, 200)
        Me.GetServoStatus.Name = "GetServoStatus"
        Me.GetServoStatus.Size = New System.Drawing.Size(120, 23)
        Me.GetServoStatus.TabIndex = 39
        Me.GetServoStatus.Text = "Get Status"
        '
        'Label20
        '
        Me.Label20.Location = New System.Drawing.Point(24, 192)
        Me.Label20.Name = "Label20"
        Me.Label20.Size = New System.Drawing.Size(176, 16)
        Me.Label20.TabIndex = 42
        Me.Label20.Text = "(Just prior to terminating program)"
        Me.Label20.TextAlign = System.Drawing.ContentAlignment.BottomRight
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(920, 478)
        Me.Controls.Add(Me.Label16)
        Me.Controls.Add(Me.Label15)
        Me.Controls.Add(Me.SetServoOutputs)
        Me.Controls.Add(Me.SetServo1Pos2)
        Me.Controls.Add(Me.SetServo1Pos1)
        Me.Controls.Add(Me.Label14)
        Me.Controls.Add(Me.Label13)
        Me.Controls.Add(Me.Label12)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.Label10)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.GetDCMotors)
        Me.Controls.Add(Me.StopMotors)
        Me.Controls.Add(Me.SetDCMotors)
        Me.Controls.Add(Me.ConfigDCMotors)
        Me.Controls.Add(Me.GetStepper)
        Me.Controls.Add(Me.RunStepper)
        Me.Controls.Add(Me.SetStepper)
        Me.Controls.Add(Me.ConfigStepper)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.SwitchingHawks)
        Me.Controls.Add(Me.MotorHawks)
        Me.Controls.Add(Me.DeviceCount)
        Me.Controls.Add(Me.Scan)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox4)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

#End Region
    Declare Function Sys_Initialise Lib "hawk.dll" () As Integer        'hawk.dll is found in bin subdirectory or in windows/system32 directory
    Declare Function Sys_GetMotorHawkCount Lib "hawk.dll" () As Integer
    Declare Function Sys_GetSwitchingHawkCount Lib "hawk.dll" () As Integer
    Declare Function Sys_GetServoHawkCount Lib "hawk.dll" () As Integer
    Declare Function Sys_CloseAllDevices Lib "hawk.dll" () As Integer

    Declare Function Motor_SetType Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal Type As Integer) As Integer
    Declare Function Motor_RunSteps Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal Steps As Integer) As Integer
    Declare Function Motor_SetDCMotors Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal M1Speed As Integer, ByVal M1Dir As Integer, ByVal M2Speed As Integer, ByVal M2Dir As Integer) As Integer
    Declare Function Motor_GetDCMotors Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef M1Speed As Integer, ByRef M1Dir As Integer, ByRef M2Speed As Integer, ByRef M2Dir As Integer) As Integer
    Declare Function Motor_GetType Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef Type As Integer) As Integer
    Declare Function Motor_GetStepper Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef Direction As Integer, ByRef Interval As Integer, ByRef StepMode As Integer, ByRef Power As Integer, ByRef Steps As Integer, ByRef RunMode As Integer, ByRef Paused As Integer) As Integer
    Declare Function Motor_GetStepsRemaining Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef StepsRemaining As Integer) As Integer
    Declare Function Motor_SetDigitalOutputs Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal Outputs As Integer) As Integer
    Declare Function Motor_GetDigitalOutputs Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef Outputs As Integer) As Integer
    Declare Function Motor_GetDigitalInputs Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef Inputs As Integer) As Integer
    Declare Function Motor_SetLimitEnables Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal M1Forward As Integer, ByVal M1Reverse As Integer, ByVal M2Forward As Integer, ByVal M2Reverse As Integer) As Integer
    Declare Function Motor_GetLimitEnables Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef M1Forward As Integer, ByRef M1Reverse As Integer, ByRef M2Forward As Integer, ByRef M2Reverse As Integer) As Integer
    Declare Function Motor_SetStepper Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal Direction As Integer, ByVal Interval As Integer, ByVal StepMode As Integer, ByVal Power As Integer) As Integer
    Declare Function Motor_PauseStepper Lib "hawk.dll" (ByVal BoardNumber As Integer) As Integer
    Declare Function Motor_ResumeStepper Lib "hawk.dll" (ByVal BoardNumber As Integer) As Integer
    Declare Function Motor_StopStepper Lib "hawk.dll" (ByVal BoardNumber As Integer) As Integer
    Declare Function Motor_SetRunMode Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal RunMode As Integer) As Integer

    Declare Function Switching_SetOutputs Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal Outputs As Integer) As Integer
    Declare Function Switching_GetOutputs Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef Outputs As Integer) As Integer

    Declare Function Servo_SetServos Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal Servo1 As Integer, ByVal Servo2 As Integer, ByVal Servo3 As Integer, ByVal Servo4 As Integer, ByVal Servo5 As Integer, ByVal Servo6 As Integer, ByVal Servo7 As Integer, ByVal Servo8 As Integer) As Integer
    Declare Function Servo_GetServos Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef Servo1 As Integer, ByRef Servo2 As Integer, ByRef Servo3 As Integer, ByRef Servo4 As Integer, ByRef Servo5 As Integer, ByRef Servo6 As Integer, ByRef Servo7 As Integer, ByRef Servo8 As Integer) As Integer
    Declare Function Servo_SetOutputs Lib "hawk.dll" (ByVal BoardNumber As Integer, ByVal Outputs As Integer) As Integer
    Declare Function Servo_GetOutputs Lib "hawk.dll" (ByVal BoardNumber As Integer, ByRef Outputs As Integer) As Integer


    ' global variables used
    Dim count As Integer
    Dim MotorHawkCount As Integer
    Dim SwitchingHawkCount As Integer
    Dim ServoHawkCount As Integer



    Private Sub Scan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Scan.Click
        count = Sys_Initialise()
        DeviceCount.Text() = count

        MotorHawkCount = Sys_GetMotorHawkCount()
        MotorHawks.Text() = MotorHawkCount

        SwitchingHawkCount = Sys_GetSwitchingHawkCount()
        SwitchingHawks.Text() = SwitchingHawkCount

        ServoHawkCount = Sys_GetServoHawkCount()
        ServoHawks.Text() = ServoHawkCount

    End Sub

    Private Sub SetSwitchingOutputs_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SetSwitchingOutputs.Click
        If SwitchingHawkCount > 0 Then      ' make sure there is at least one switching hawk connected
            Switching_SetOutputs(1, 7)      '7 corresponds to 0111 in binary
        End If

    End Sub

    Private Sub GetSwitchingSettings_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GetSwitchingSettings.Click
        Dim err As Integer
        Dim outputs As Integer

        err = Switching_GetOutputs(1, outputs)
        If err = 0 Then
            ' variable outputs now contains the current state of the outputs on switching hawk 1
        End If

    End Sub

    Private Sub ConfigStepper_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ConfigStepper.Click
        Dim BoardNumber As Integer
        Dim MotorType As Integer

        BoardNumber = 1                             ' choose the first board
        MotorType = 0                               ' 0 for stepper motor, 1 for DC Motors
        If MotorHawkCount > 0 Then                  ' make sure there is at least one motor hawk connected
            Motor_SetType(BoardNumber, MotorType)   ' configure board for stepper motor control
        End If


    End Sub
    Private Sub SetStepper_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SetStepper.Click
        Dim BoardNumber, Direction, Interval, StepMode, Power As Integer

        BoardNumber = 1                 ' first motor hawk board
        Direction = 0                   ' forward
        Interval = 20                   ' 20ms per step
        StepMode = 0                    ' full step
        Power = 250                     ' full power

        If MotorHawkCount > 0 Then      ' make sure there is at least one motor hawk connected
            Motor_SetStepper(BoardNumber, Direction, Interval, StepMode, Power)  '7 corresponds to 0111 in binary
        End If

    End Sub

    Private Sub RunStepper_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RunStepper.Click

        If MotorHawkCount > 0 Then      ' make sure there is at least one motor hawk connected
            Motor_RunSteps(1, 200)    'do 200 steps using the configuration already set
        End If

    End Sub

    Private Sub GetStepper_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GetStepper.Click
        Dim err As Integer
        Dim BoardNumber, Direction, Interval, StepMode, Power, Steps, RunMode, Paused As Integer

        BoardNumber = 1
        err = Motor_GetStepper(BoardNumber, Direction, Interval, StepMode, Power, Steps, RunMode, Paused)
        If err = 0 Then
            ' variables Direction....Paused now contain the current settings as retrieved from first motor hawk
        End If

    End Sub

    Private Sub ConfigDCMotors_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ConfigDCMotors.Click
        Dim BoardNumber As Integer
        Dim MotorType As Integer

        BoardNumber = 1                             ' choose the first board
        MotorType = 1                               ' 0 for stepper motor, 1 for DC Motors
        If MotorHawkCount > 0 Then                  ' make sure there is at least one motor hawk connected
            Motor_SetType(BoardNumber, MotorType)   ' configure board for DC motor control
        End If

    End Sub

    Private Sub SetDCMotors_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SetDCMotors.Click
        Dim BoardNumber, M1Speed, M1Dir, M2Speed, M2Dir As Integer

        BoardNumber = 2                 ' second motor hawk board
        M1Speed = 230                   ' almost maximum speed
        M1Dir = 0                       ' 0 for forward, 1 for reverse
        M2Speed = 0                     ' stopped
        M2Dir = 1                       ' 0 for forward, 1 for reverse

        If MotorHawkCount > 1 Then      ' make sure there are at least two motor hawks connected
            Motor_SetDCMotors(BoardNumber, M1Speed, M1Dir, M2Speed, M2Dir)  'set both motors
        End If

    End Sub

    Private Sub StopMotors_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles StopMotors.Click

        Dim BoardNumber, M1Speed, M1Dir, M2Speed, M2Dir As Integer

        BoardNumber = 2                 ' second motor hawk board
        M1Speed = 0                     ' stopped
        M1Dir = 0                       ' 0 for forward, 1 for reverse
        M2Speed = 0                     ' stopped
        M2Dir = 1                       ' 0 for forward, 1 for reverse

        If MotorHawkCount > 1 Then      ' make sure there are at least two motor hawks connected
            Motor_SetDCMotors(BoardNumber, M1Speed, M1Dir, M2Speed, M2Dir)  'set both motors
        End If

    End Sub

    Private Sub GetDCMotors_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GetDCMotors.Click
        Dim BoardNumber, M1Speed, M1Dir, M2Speed, M2Dir, err As Integer

        BoardNumber = 2                 ' second motor hawk board

        err = Motor_GetDCMotors(BoardNumber, M1Speed, M1Dir, M2Speed, M2Dir) 'set both motors

        If err = 0 Then
            ' variables M1Speed....M2Dir now contain the current settings as retrieved from the board
        End If

    End Sub

    Private Sub SetServo1Pos1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SetServo1Pos1.Click
        Dim BoardNumber, Servo1, Servo2, Servo3, Servo4, Servo5, Servo6, Servo7, Servo8 As Integer

        BoardNumber = 1                 ' first servo hawk board
        Servo1 = 250                    ' set position of servo 1

        Servo2 = 512                    ' set position of servo to centre
        Servo3 = 512                    ' set position of servo to centre
        Servo4 = 512                    ' set position of servo to centre
        Servo5 = 512                    ' set position of servo to centre
        Servo6 = 512                    ' set position of servo to centre
        Servo7 = 512                    ' set position of servo to centre
        Servo8 = 512                    ' set position of servo to centre

        If ServoHawkCount > 0 Then      ' make sure there is at least one servo hawk connected
            Servo_SetServos(BoardNumber, Servo1, Servo2, Servo3, Servo4, Servo5, Servo6, Servo7, Servo8)   'set servo positions
        End If

    End Sub

    Private Sub SetServo1Pos2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SetServo1Pos2.Click
        Dim BoardNumber, Servo1, Servo2, Servo3, Servo4, Servo5, Servo6, Servo7, Servo8 As Integer

        BoardNumber = 1                 ' first servo hawk board
        Servo1 = 750                    ' set position of servo 1

        Servo2 = 512                    ' set position of servo to centre
        Servo3 = 512                    ' set position of servo to centre
        Servo4 = 512                    ' set position of servo to centre
        Servo5 = 512                    ' set position of servo to centre
        Servo6 = 512                    ' set position of servo to centre
        Servo7 = 512                    ' set position of servo to centre
        Servo8 = 512                    ' set position of servo to centre

        If ServoHawkCount > 0 Then      ' make sure there is at least one servo hawk connected
            Servo_SetServos(BoardNumber, Servo1, Servo2, Servo3, Servo4, Servo5, Servo6, Servo7, Servo8)   'set servo positions
        End If

    End Sub

    Private Sub SetServoOutputs_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SetServoOutputs.Click
        If ServoHawkCount > 0 Then      ' make sure there is at least one servo hawk connected
            Servo_SetOutputs(1, 7)      '7 corresponds to 0111 in binary (i.e. turn on first three outputs)
        End If

    End Sub

    Private Sub GetServoStatus_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GetServoStatus.Click
        Dim BoardNumber, Servo1, Servo2, Servo3, Servo4, Servo5, Servo6, Servo7, Servo8, Outputs As Integer
        Dim err As Integer

        BoardNumber = 1                 ' first servo hawk board
        err = Servo_GetServos(BoardNumber, Servo1, Servo2, Servo3, Servo4, Servo5, Servo6, Servo7, Servo8)   'get servo positions

        If err = 0 Then
            ' variables Servo1 ... Servo8 now contain the current position settings as retrieved from the board
        End If

        err = Servo_GetOutputs(BoardNumber, Outputs)    ' get servo outputs
        If err = 0 Then
            ' variable Outputs now contains the current on/off pattern of outputs as retrieved from the board
        End If

    End Sub

    Private Sub CloseDevices_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CloseDevices.Click
        Sys_CloseAllDevices()       ' close all open paths to connected USB devices (opened during "scan")
    End Sub
End Class
