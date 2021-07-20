VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IThreadable"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True

'Interface must be implemented for each object that you want
'to have threaded (See the example iterator class which is IThreadable)
Option Explicit

'This is where the thread will start so
Public Sub Start()
    
End Sub

'This is called if the thread is stopped
Public Sub Halt()

End Sub
