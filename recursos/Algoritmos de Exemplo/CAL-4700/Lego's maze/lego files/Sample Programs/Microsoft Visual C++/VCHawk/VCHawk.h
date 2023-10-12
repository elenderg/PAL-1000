// VCHawk.h : main header file for the PROJECT_NAME application
//

#pragma once

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols


// CVCHawkApp:
// See VCHawk.cpp for the implementation of this class
//

class CVCHawkApp : public CWinApp
{
public:
	CVCHawkApp();

// Overrides
	public:
	virtual BOOL InitInstance();

// Implementation

	DECLARE_MESSAGE_MAP()
};

extern CVCHawkApp theApp;