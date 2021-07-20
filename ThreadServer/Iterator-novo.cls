VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Iterator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit
'Private Declare Function GetTickCount Lib "kernel32.dll" () As Long
Private Declare Sub Sleep Lib "kernel32.dll" (ByVal dwMilliseconds As Long)

'Must implement IThreadable in order to call the Method (Start)
'within modThreads
Implements IThreadable

'Example events....You don't have to use events but it is good to
'some how tell the client when your thread object has finished
'....I will leave it upto on how you want to implement this!
Event Done()
Event MoveNow(IndexObj As Integer)
Public TimeSpace As Long
Public IndexObj As Integer

'This is used to inform the object that the client is
'requesting it to stop...Again you do not have to do it in this
'manner but this is an example
Private Continue As Boolean

'These public methods donot have to be called StartThread/HaltThread
'You can have any methods to start and stop threads
Public Sub StartThread()
    Start Me 'Calls modThread.Start with IThreadable object
End Sub

Public Sub HaltThread()
    Continue = False
End Sub

'The following methods are called from within modThreads to start/stop
'the thread
Private Sub IThreadable_Halt()
    Continue = False
End Sub

Private Sub IThreadable_Start()
    Continue = True
    Do While (Continue)
        Call Sleep(TimeSpace)
        If (Continue) Then RaiseEvent MoveNow(Me.IndexObj)
    Loop
    RaiseEvent Done
End Sub
