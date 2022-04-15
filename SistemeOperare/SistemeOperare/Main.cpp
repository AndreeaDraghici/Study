#include <Windows.h>
#include <tchar.h>
#include <iostream>
#include <chrono>
#include <thread>
#include <sys/types.h>
#include <stdio.h>

using namespace std;

void Proces_1()
{
    STARTUPINFO si = {};
    si.cb = sizeof si;

    PROCESS_INFORMATION pinfo = {};

    const TCHAR* target_2 = _T("C:\\Program Files (x86)\\Notepad++\\notepad++.exe");

    if (!CreateProcess(target_2, 0, 0, FALSE, 0, 0, 0, 0, &si, &pinfo)){
        cerr << "CreateProcess failed (" << GetLastError() << ").\n";
    }
    else
    {
        int count = 1;
        cout << "Process with ID " << count << " was created " << endl;
        WaitForSingleObject(pinfo.hProcess, count * 1000);
        if (PostThreadMessage(pinfo.dwThreadId, WM_QUIT, 0, 0))
            cout << "Request to terminate process has been sent!\n";
        // Close process and thread handles.
        CloseHandle(pinfo.hProcess);
        CloseHandle(pinfo.hThread);
    }
}

void Proces_2()
{

    STARTUPINFO si2 = {};
    si2.cb = sizeof si2;

    PROCESS_INFORMATION pinfo2 = {};
    const TCHAR* target = _T("C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe");

    if (!CreateProcess(target, 0, 0, FALSE, 0, 0, 0, 0, &si2, &pinfo2)) {
        cerr << "CreateProcess failed (" << GetLastError() << ").\n";
    }
    else
    {
        int count = 2;
        cout << "Process with ID " << count << " was created " << endl;
        WaitForSingleObject(pinfo2.hProcess, count * 2000);
        if (PostThreadMessage(pinfo2.dwThreadId, WM_QUIT, 0, 0))
            cout << "Request to terminate process has been sent!\n";
        // Close process and thread handles.
        CloseHandle(pinfo2.hProcess);
        CloseHandle(pinfo2.hThread);
    }

}

void Proces_3()
{
    STARTUPINFO si3 = {};
    si3.cb = sizeof si3;

    PROCESS_INFORMATION pinfo3 = {};
    const TCHAR* target_3 = _T("C:\\Program Files (x86)\\TeamViewer\\TeamViewer.exe");

    if (!CreateProcess(target_3, 0, 0, FALSE, 0, 0, 0, 0, &si3, &pinfo3)){
        cerr << "CreateProcess failed (" << GetLastError() << ").\n";
    }
    else
    {
        int count = 3;
        cout << "Process with ID " << count << " was created " << endl;
        WaitForSingleObject(pinfo3.hProcess, count * 3000);
        if (PostThreadMessage(pinfo3.dwThreadId, WM_QUIT, 0, 0))
            cout << "Request to terminate process has been sent!\n";
        // Close process and thread handles.
        CloseHandle(pinfo3.hProcess);
        CloseHandle(pinfo3.hThread);
    }
}

int main()
{
    Proces_1();
    Proces_2();
    Proces_3();
    cin.sync();
    cin.ignore();

    return 0;
}
