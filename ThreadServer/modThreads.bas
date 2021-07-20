Attribute VB_Name = "modThreads"
'Handles the starting of the thread

Option Explicit

'API timer functions
Private Declare Function KillTimer Lib "user32" (ByVal hWnd As Long, _
  ByVal nIDEvent As Long) As Long

Private Declare Function SetTimer Lib "user32" (ByVal hWnd As Long, _
  ByVal nIDEvent As Long, ByVal uElapse As Long, _
  ByVal lpTimerFunc As Long) As Long

'global module IThreadable
Private mThreadable As IThreadable

'Holds the event ID
Private lThread As Long

'Enable timer and point to callback method TimerFired
Private Function TimerEnable(ByVal mSecs As Long) As Long
    
    TimerEnable = SetTimer(0, 0, mSecs, AddressOf TimerFired)

End Function

'Stop timer event
Private Function TimerDisable(ByVal TimerID As Long) As Long
    
    TimerDisable = KillTimer(0, TimerID)

End Function

'Begin the timer event and call IThreadable.Start
Private Sub TimerFired(ByVal hWnd As Long, _
  ByVal TimerID As Long, ByVal IDEvent As Long, _
  ByVal dwTime As Long)
  
    TimerDisable lThread 'Immediatley disable the callback
                         'The Server has returned back to the client
                         'at this point and a new thread has begun!
                         
    mThreadable.Start    'Call the Start method on the IThreadable object
    
End Sub

'Begin thread here
Public Function Start(Threadable As IThreadable)
    
    Set mThreadable = Threadable 'set global mod IThreadable
    
    lThread = TimerEnable(1) 'Set timer to run and store TimerID

End Function
