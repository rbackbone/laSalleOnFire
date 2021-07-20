VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00404040&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Simula Incêndio"
   ClientHeight    =   11145
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14325
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11145
   ScaleWidth      =   14325
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtVelocMin 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   4935
      TabIndex        =   14
      Text            =   "400"
      Top             =   10185
      Width           =   960
   End
   Begin VB.TextBox txtVelocMax 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   4935
      TabIndex        =   12
      Text            =   "800"
      Top             =   10605
      Width           =   960
   End
   Begin VB.Frame Frame2 
      Height          =   1380
      Left            =   12915
      TabIndex        =   11
      Top             =   9660
      Width           =   15
   End
   Begin VB.Frame Frame1 
      Height          =   15
      Left            =   105
      TabIndex        =   10
      Top             =   9555
      Width           =   15030
   End
   Begin VB.TextBox tempo_ini 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FF8080&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFC0&
      Height          =   480
      Left            =   9450
      Locked          =   -1  'True
      TabIndex        =   5
      Text            =   "00:00:00"
      Top             =   10395
      Width           =   1380
   End
   Begin VB.CheckBox chkVeloc 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      Caption         =   "velocidade diferentes"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   330
      Left            =   3780
      TabIndex        =   4
      Top             =   9660
      Value           =   1  'Checked
      Width           =   2850
   End
   Begin VB.CommandButton cmdSair 
      Appearance      =   0  'Flat
      Caption         =   "&Sair"
      Height          =   495
      Left            =   13440
      TabIndex        =   3
      Top             =   10185
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Configurar Cenário"
      Height          =   495
      Left            =   210
      TabIndex        =   2
      Top             =   9645
      Width           =   1980
   End
   Begin VB.TextBox tempo 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FF8080&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFC0&
      Height          =   480
      Left            =   11025
      Locked          =   -1  'True
      TabIndex        =   1
      Text            =   "00:00:00"
      Top             =   10395
      Width           =   1380
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Play"
      Height          =   495
      Left            =   7560
      TabIndex        =   0
      Top             =   10380
      Width           =   1455
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Index           =   0
      Interval        =   200
      Left            =   360
      Top             =   6360
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "milesegundos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   240
      Left            =   5925
      TabIndex        =   17
      Top             =   10620
      Width           =   1275
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "milesegundos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   240
      Left            =   5925
      TabIndex        =   16
      Top             =   10230
      Width           =   1275
   End
   Begin VB.Label lblInfo 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "o mais rápido faz 1 passo a cada"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   240
      Left            =   1875
      TabIndex        =   15
      Top             =   10230
      Width           =   2970
   End
   Begin VB.Label lblInfo2 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "o mais lento faz 1 passo a cada"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   240
      Left            =   2025
      TabIndex        =   13
      Top             =   10620
      Width           =   2820
   End
   Begin VB.Label lblexit 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "< saída >"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   225
      Index           =   1
      Left            =   12285
      TabIndex        =   9
      Top             =   10290
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Label lblexit 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "< saída >"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   225
      Index           =   0
      Left            =   12180
      TabIndex        =   8
      Top             =   9870
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "pessoas no prédio"
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   225
      Left            =   10185
      TabIndex        =   7
      Top             =   10080
      Width           =   2325
   End
   Begin VB.Label lQtPessoas 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   360
      Left            =   9810
      TabIndex        =   6
      Top             =   9975
      Width           =   180
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


Private Sub chkVeloc_Click()
    If chkVeloc.Value = vbChecked Then
    
        lblInfo.Caption = "o mais rápido faz 1 passo a cada"
        lblInfo2.Visible = True
        txtVelocMax.Visible = True
    
    Else
    
        lblInfo.Caption = "cada ator faz 1 passo a cada"
        lblInfo2.Visible = False
        txtVelocMax.Visible = False
    
    End If
End Sub

Private Sub cmdSair_Click()
Dim Cont As Long
    StatusJogo = False
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
    
    If lblexit(0).Visible = False Then
    
        MsgBox "Configuração do cenário está incompleta." + vbLf + "Você deve ter no mínimo 1 andar completo.", vbInformation, "Atenção"
        Exit Sub
        
    End If
    
    
    If StatusJogo = True Then
        Screen.MousePointer = vbHourglass
        StatusJogo = False
        
        Command1.Caption = "&Play"
        
        Me.Caption = ">> aguarde, finalizando processos..."
        Cont = 0
        Do While (Cont <= Forms.Count - 1)
            If (Forms(Cont).Name = "frmThread") Then
                Set frmT = Forms(Cont)
                'If frmT.objThread <> Nothing Then
                frmT.objThread.HaltThread
                'End
                Unload frmT
            Else
                Cont = Cont + 1
            End If
        Loop
        Me.Caption = ">> simulação interrompida"
        Screen.MousePointer = vbNormal
    Else
        StatusJogo = True
        Command1.Caption = "&Parar"
        
        
        On Error Resume Next
        Cont = 0
        Do While (Cont <= Forms.Count - 1) And (StatusJogo)
            If (StatusJogo) And (Forms(Cont).Name = "frmThread") Then
                Set frmT = Forms(Cont)
                frmT.objThread.StartThread
                DoEvents
            End If
            Cont = Cont + 1
        Loop
        If (Not StatusJogo) Then
            Cont = 0
            Do While (Cont <= Forms.Count - 1)
                If (Forms(Cont).Name = "frmThread") Then
                    Set frmT = Forms(Cont)
                    frmT.objThread.HaltThread
                    Unload frmT
                Else
                    Cont = Cont + 1
                End If
            Loop
        End If

        tempo_ini.Text = Format(Now, "hh:mm:ss")
        Me.Caption = ">> Simulação em andamento......"
    End If

End Sub

Private Sub Command2_Click()
On Error Resume Next
Dim Cont As Long
Dim frmT As frmThread
    
    For Cont = sMan.UBound To sMan.LBound Step -1
    
        If Cont = 0 Then Exit For
        
        sMan(Cont).Visible = False
        Unload sMan(Cont)
    
    Next
    
    Form2.Show vbModal
    Command1.Enabled = False
    Me.Caption = ">> Aguarde, instanciando Atores..."
    
    'Cria-se uma Thread (um form) para cada ator
    For Cont = sMan.LBound To sMan.UBound
        Set frmT = New frmThread
        Load frmT
        
        'Iniciamos a Thread com o indice do Ator que ela irá controlar
        Set frmT.objThread = New ThreadServer.Iterator
        frmT.objThread.IndexObj = Cont
        
        'Aqui definimos a velocidade da Thread em milisegundos
        Randomize
        If chkVeloc.Value = vbChecked Then
            
            frmT.objThread.TimeSpace = CInt(Rnd * Int(txtVelocMax.Text))
            If frmT.objThread.TimeSpace < Int(txtVelocMin.Text) Then
                frmT.objThread.TimeSpace = Int(txtVelocMin.Text)
            End If
            
        Else
            frmT.objThread.TimeSpace = Int(txtVelocMin.Text)
        End If
        
        
        'If frmT.objThread.TimeSpace < 1000 Then
        '    frmT.objThread.TimeSpace = 1000
        'End If
        
        DoEvents
        'If Not StatusJogo Then Exit For
    Next
    
    Me.Caption = ">> Simulação pode ser iniciada"
    Command1.Enabled = True
End Sub

Private Sub Form_Load()
    Dim i, y, j, z
    
    
    For i = 0 To maxAndar
        For y = 0 To maxSalas + 2
            For j = 0 To maxLin
                For z = 0 To maxCol
                    Salas(i, y).Espaco(j, z).quem = -1
                    'Salas(i, y).Espaco(j, z).left = True
                Next
            Next
        Next
    Next



    'Salas(0, 0).aberta = True
    'Salas(0, 0).qtSaidas = 1
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
    
    Me.Width = 15540 + 400
    Me.Height = 11520
    Me.Move (Screen.Width \ 2) - (Me.Width \ 2), (Screen.Height \ 2) - (Me.Height \ 2)
    

End Sub

Private Sub Form_Unload(Cancel As Integer)

'    If lThreadHandle1 > 0 Then
'        Call TerminateThread(lThreadHandle1, ByVal 0&)
'    End If
'
'    Call TerminateProcess(GetCurrentProcess, ByVal 0&)

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
