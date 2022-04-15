#include <Windows.h>
#include <tchar.h>
#include <iostream>
#include <chrono>
#include <thread>
#include <sys/types.h>
#include <stdio.h>

using namespace std;

int main()
{
	STARTUPINFO si = {};
	si.cb = sizeof si;

	PROCESS_INFORMATION pi = {};
	//const TCHAR* target = _T("C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe");

	const TCHAR* target_2 = _T("C:\\Program Files\\Sublime Text 3\\sublime_text.exe");

	for (int count = 1; count<= 3; count++){

		if (!CreateProcess(target_2, 0, 0, FALSE, 0, 0, 0, 0, &si, &pi)){
			cerr << "CreateProcess failed (" << GetLastError() << ").\n";
		}
		else{
			cout << "Process with ID "  << count << " was created "<< endl;
			
			WaitForSingleObject(pi.hProcess, count * 1000);
			
		
			if (PostThreadMessage(pi.dwThreadId, WM_QUIT, 0, 0)) 
				cout << "Request to terminate process has been sent!\n";
			// Close process and thread handles. 
			CloseHandle(pi.hProcess);
			CloseHandle(pi.hThread);
		}
	}

	cin.sync();
	cin.ignore();

	return 0;
}
