VERSION 5.00
Begin VB.Form frmThread 
   Caption         =   "Thread Form"
   ClientHeight    =   840
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   1560
   LinkTopic       =   "Form1"
   ScaleHeight     =   840
   ScaleWidth      =   1560
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   240
      Top             =   120
   End
End
Attribute VB_Name = "frmThread"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private mThreadable As IThreadable

Event ThreadDone()

Public Sub Start()
    Timer1.Enabled = True
End Sub

Public Property Set Threadable(newValue As IThreadable)
    Set mThreadable = newValue
End Property

Private Sub Form_Unload(Cancel As Integer)
    RaiseEvent ThreadDone
End Sub

Private Sub Timer1_Timer()
    Timer1.Enabled = False
    mThreadable.Start
    Unload Me
End Sub
