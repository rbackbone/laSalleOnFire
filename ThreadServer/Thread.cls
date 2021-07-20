VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Thread"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Private mThreadable As IThreadable

Public Sub StartThread()
    Start mThreadable
End Sub

Public Property Set ThreadObject(RHS As IThreadable)
    Set mThreadable = RHS
End Property

