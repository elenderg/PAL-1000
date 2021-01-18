// VCHawkDlg.h : header file
//

#pragma once


// CVCHawkDlg dialog
class CVCHawkDlg : public CDialog
{
// Construction
public:
	CVCHawkDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	enum { IDD = IDD_VCHAWK_DIALOG };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support


// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public:
	void LoadHawkDll(void);
	afx_msg void OnBnClickedScan();
	int m_found;		// total number of boards (of any type) found
	int m_mhk_found;
	int m_shk_found;
	afx_msg void OnBnClickedSetshkoutputs();
	afx_msg void OnBnClickedConfigstepper();
	afx_msg void OnBnClickedSetstepper();
	afx_msg void OnBnClickedRunstepper();
	afx_msg void OnBnClickedConfigdcmotors();
	afx_msg void OnBnClickedSetdcmotors();
	afx_msg void OnBnClickedStopMotors();
	afx_msg void OnBnClickedGetSwitching();
	afx_msg void OnBnClickedGetDcmotor();
	afx_msg void OnBnClickedGetStepper();
	afx_msg void OnBnClickedSetservopos1();
	afx_msg void OnBnClickedSetservopos2();
	afx_msg void OnBnClickedSetservoOutputs();
	afx_msg void OnBnClickedGetServoStatus();
	int m_svhk_found;
	afx_msg void OnBnClickedClose();
};
