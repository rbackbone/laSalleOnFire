VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Simula Incêndio"
   ClientHeight    =   7245
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14325
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   7245
   ScaleWidth      =   14325
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdSair 
      Caption         =   "&Sair"
      Height          =   495
      Left            =   10395
      TabIndex        =   5
      Top             =   6600
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Config"
      Height          =   495
      Left            =   7200
      TabIndex        =   4
      Top             =   6600
      Width           =   1215
   End
   Begin VB.TextBox intervalo 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   9240
      TabIndex        =   2
      Text            =   "500"
      Top             =   5880
      Width           =   495
   End
   Begin VB.TextBox tempo 
      Appearance      =   0  'Flat
      BackColor       =   &H00FF8080&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFC0&
      Height          =   285
      Left            =   8880
      Locked          =   -1  'True
      TabIndex        =   1
      Text            =   "00:00:00"
      Top             =   5400
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Play Simulation"
      Height          =   495
      Left            =   8520
      TabIndex        =   0
      Top             =   6600
      Width           =   1455
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Index           =   0
      Interval        =   200
      Left            =   360
      Top             =   6360
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "intervalo"
      Height          =   195
      Left            =   8520
      TabIndex        =   3
      Top             =   6000
      Width           =   600
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   0
      Left            =   0
      Top             =   0
      Width           =   1605
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   105
      Index           =   0
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   105
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub cmdSair_Click()
Dim Cont As Long
    Cont = 0
    Do While Cont < Forms.Count - 1
        If Not (Forms(Cont) Is Me) Then
            Unload Forms(Cont)
        Else
            Cont = Cont + 1
        End If
    Loop
    Unload Me
    End

End Sub

Private Sub Command1_Click()
Dim Cont As Long
Dim frmT As frmThread
    
    If StatusJogo = True Then
        StatusJogo = False
        Command1.Caption = "&Play"
        
        
    Else
        StatusJogo = True
        Command1.Caption = "&Parar"
    
        
        Me.Caption = "Aguarde, instanciando Atores..."
        
        'Cria-se uma Thread (um form) para cada ator
        For Cont = sMan.LBound To sMan.UBound
            Set frmT = New frmThread
            Load frmT
            
            'Iniciamos a Thread com o indice do Ator que ela irá controlar
            Set frmT.objThread = New ThreadServer.Iterator
            frmT.objThread.IndexObj = Cont
            
            'Aqui definimos a velocidade da Thread em milisegundos
            Randomize
            frmT.objThread.TimeSpace = 1000 + CInt(Rnd * 1000)
            'If frmT.objThread.TimeSpace < 1000 Then
            '    frmT.objThread.TimeSpace = 1000
            'End If
            
            frmT.objThread.StartThread
            DoEvents
            If Not StatusJogo Then Exit For
        Next
        
'        Cont = 0
'        each frmt
'        Do While Cont < Forms.Count - 1
'            If Forms(Cont).Name = "frmThread" Then
'
'                Set frmT = Forms(Cont)
'                Forms(Cont).StartThread
'                DoEvents
'            Else
'                Cont = Cont + 1
'            End If
'            If Not StatusJogo Then Exit Do
'        Loop
    
        Me.Caption = "Simulação em andamento......"
    End If

End Sub

Private Sub Command2_Click()
    Form2.Show vbModal
End Sub

Private Sub Form_Load()
    Dim i, y, j, z
    
    
    For i = 0 To maxAndar
        For y = 0 To maxSalas
            For j = 0 To 150
                For z = 0 To 150
                    Salas(i, y).Espaco(j, z).quem = -1
                Next
            Next
        Next
    Next



    Salas(0, 0).aberta = True
    Salas(0, 0).qtSaidas = 1
    Salas(0, 0).Lin = 12
    Salas(0, 0).Col = 12
    Salas(0, 0).Espaco(0, 0).quem = 0 'ocupado por
    Salas(0, 0).ocupacao = 45
    Salas(0, 0).left = 0
    Salas(0, 0).top = 0
    'Salas(0, 0).leftSaida = 1470
    '14     1470
    'Salas(0, 0).topSaida = 1260
    '12     1260
    
    
    
    
    
    
    
    


End Sub

Private Sub Form_Unload(Cancel As Integer)

'    If lThreadHandle1 > 0 Then
'        Call TerminateThread(lThreadHandle1, ByVal 0&)
'    End If
'
'    Call TerminateProcess(GetCurrentProcess, ByVal 0&)

End Sub

Private Sub intervalo_GotFocus()
    intervalo.SelStart = 0
    intervalo.SelLength = Len(intervalo.Text)
End Sub

Private Sub Timer1_Timer(index As Integer)
    Dim i As Integer, y As Integer, j As Integer, z As Integer

    
    If StatusJogo = False Then Exit Sub
    
    'For i = sMan.LBound To sMan.UBound
    '    mover i
    'DoEvents
    'Next

    If InStr(1, Timer1(index).Tag, ";") > 0 Then
        i = Val(Mid(Timer1(index).Tag, InStr(1, Timer1(index).Tag, ";") - 2, 2))
        y = Val(Mid(Timer1(index).Tag, InStr(1, Timer1(index).Tag, ";") + 1, 2))
        j = Val(Mid(Timer1(index).Tag, InStr(4, Timer1(index).Tag, ";") + 1, 3))
        z = Val(Mid(Timer1(index).Tag, InStr(7, Timer1(index).Tag, ";") + 1, 3))
    Else
        i = 0
        y = 0
    End If
'
    For j = 0 To 150
        For z = 150 To 0 Step -1
            If Salas(i, y).Espaco(j, z).quem = index Then
            
                'mover Salas(i, y).Espaco(j, z).quem
                moverII i, y, j, z
            
            End If
        Next
    Next
    
    'MsgBox index
    
    'If index <= sMan.UBound Then
        'mover index
    'End If
    
    'DoEvents

    tempo.Text = Format(Now, "hh:mm:ss")

End Sub

Private Sub mover(quem As Integer)
    Dim lNewLeft As Long



    lNewLeft = sMan(quem).left + sMan(quem).Width
    sMan(quem).Move lNewLeft, sMan(quem).top, sMan(quem).Width, sMan(quem).Height
    
    

End Sub
