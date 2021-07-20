VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1275
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4320
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1275
   ScaleWidth      =   4320
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox chkLow 
      Caption         =   "&Valores Baixos"
      Height          =   330
      Left            =   525
      TabIndex        =   13
      Top             =   840
      Width           =   1485
   End
   Begin VB.TextBox tOcupacao 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3150
      TabIndex        =   11
      Text            =   "13"
      Top             =   210
      Width           =   855
   End
   Begin VB.CheckBox chkAberta 
      Caption         =   "Aberta"
      Height          =   255
      Left            =   315
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   2310
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.CommandButton cmdProxAndar 
      Caption         =   "prox. andar"
      Height          =   330
      Left            =   630
      TabIndex        =   5
      Top             =   1680
      Visible         =   0   'False
      Width           =   1275
   End
   Begin VB.Frame Frame1 
      Caption         =   "Informações sobre as Salas"
      Height          =   1455
      Left            =   120
      TabIndex        =   3
      Top             =   1260
      Visible         =   0   'False
      Width           =   3975
      Begin VB.TextBox tCol 
         Height          =   300
         Left            =   2940
         TabIndex        =   9
         Text            =   "45"
         Top             =   945
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.TextBox tLin 
         Height          =   300
         Left            =   2940
         TabIndex        =   8
         Text            =   "45"
         Top             =   630
         Visible         =   0   'False
         Width           =   855
      End
   End
   Begin VB.TextBox tSala 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   2
      TabStop         =   0   'False
      Text            =   "1"
      Top             =   240
      Width           =   855
   End
   Begin VB.TextBox tAndar 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   120
      Locked          =   -1  'True
      TabIndex        =   1
      TabStop         =   0   'False
      Text            =   "1"
      Top             =   240
      Width           =   855
   End
   Begin VB.CommandButton cmdLeft 
      Caption         =   "<<"
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      Top             =   2280
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton cmdRight 
      Caption         =   ">>"
      Default         =   -1  'True
      Height          =   375
      Left            =   3000
      TabIndex        =   4
      Top             =   810
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Ocupação:"
      Height          =   270
      Left            =   2205
      TabIndex        =   12
      Top             =   315
      Width           =   780
   End
   Begin VB.Label Label3 
      Caption         =   "sala"
      Height          =   255
      Left            =   1080
      TabIndex        =   7
      Top             =   0
      Width           =   615
   End
   Begin VB.Label Label2 
      Caption         =   "andar"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   0
      Width           =   615
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
    Dim linha As Integer
    Dim coluna As Integer

Private Sub cmdProxAndar_Click()
    
    grava_corredor Int(tAndar.Text) - 1, Int(tSala.Text)
    
    If Int(tAndar.Text) = maxAndar Then
        tAndar.Text = 1
    Else
        tAndar.Text = (tAndar.Text + 1)
    End If
    
    tSala.Text = 1

End Sub

Private Sub cmdRight_Click()

    If Val(tOcupacao.Text) > 50 Then
        MsgBox "Ocupação máxima é 50"
        Exit Sub
    End If
    
    grava Int(tAndar.Text) - 1, Int(tSala.Text) - 1
    
    
    If Int(tSala.Text) = 1 And Int(tAndar.Text) = 1 Then
    
        grava_escada2 Int(tAndar.Text) - 1, maxSalas + 2
    
    End If
    
    If Int(tSala.Text) = maxSalas Then
        
        grava_corredor Int(tAndar.Text) - 1, Int(tSala.Text)
        
        If Int(tAndar.Text) = 1 Then
            grava_escada Int(tAndar.Text) - 1, maxSalas + 1
        Else
            
            Salas(Int(tAndar.Text) - 1, Int(tSala.Text)).salaSaida = maxSalas + 1
            Salas(Int(tAndar.Text) - 1, Int(tSala.Text)).linSaida = (12 + 6) * Int(tAndar.Text)
            Salas(Int(tAndar.Text) - 1, Int(tSala.Text)).colSaida = 0
            
            Salas(Int(tAndar.Text) - 1, Int(tSala.Text)).salaSaida2 = maxSalas + 2
            Salas(Int(tAndar.Text) - 1, Int(tSala.Text)).linSaida2 = (12 + 4) * Int(tAndar.Text)
            Salas(Int(tAndar.Text) - 1, Int(tSala.Text)).colSaida2 = 6
        
        End If
        
        tSala.Text = 1
        
        If Int(tAndar.Text) = maxAndar Then
            tAndar.Text = 1
        Else
            tAndar.Text = (tAndar.Text + 1)
        End If
    
    Else
        tSala.Text = tSala.Text + 1
    End If

    consulta Int(tAndar.Text) - 1, Int(tSala.Text) - 1
    tOcupacao.SetFocus
    Form1.lQtPessoas.Caption = Form1.sMan.UBound + 1
    'cmdr

End Sub

Private Sub consulta(andar As Integer, sala As Integer)
    Dim i As Integer

    'If Salas(andar, sala).aberta = True Then
    '    chkAberta.Value = vbChecked
    'Else
    '    chkAberta.Value = vbUnchecked
    'End If

    Randomize

    If Salas(andar, sala).ocupacao > 0 Then
        tOcupacao.Text = Salas(andar, sala).ocupacao
    Else
        If chkLow.Value = vbChecked Then
            tOcupacao.Text = CInt(Rnd * 15)
        Else
            tOcupacao.Text = CInt(Rnd * 45)
        End If
    End If
    
    If Salas(andar, sala).Col = 0 Then
        tCol.Text = 12
    Else
        tCol.Text = Salas(andar, sala).Col
    End If
    
    If Salas(andar, sala).Lin = 0 Then
        tLin.Text = 12
    Else
        tLin.Text = Salas(andar, sala).Lin
    End If
    
    
    
    
    For i = 0 To Salas(andar, sala).Lin
        For y = 0 To Salas(andar, sala).Col
            If Salas(andar, sala).Espaco(i, y).quem <> -1 Then
                
                If Form1.sMan.UBound < Salas(andar, sala).Espaco(i, y).quem Then
                    Load Form1.sMan(Salas(andar, sala).Espaco(i, y).quem)
                
                End If
                
                Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).top = 105 * i + Salas(andar, sala).top
                Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).left = 105 * y + Salas(andar, sala).left
                Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).BackColor = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
                Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).Visible = True
                
            
            End If
        Next
    Next
    
    
    
    
End Sub

Private Sub grava(andar As Integer, sala As Integer)
    Dim i As Integer
    Dim quem As Integer

    'If chkAberta.Value = vbChecked Then
    '    Salas(andar, sala).aberta = True
    'Else
    '    Salas(andar, sala).aberta = False
    'End If
    
    
    Salas(andar, sala).ocupacao = Val(tOcupacao.Text)
    
    Salas(andar, sala).Col = tCol.Text
    Salas(andar, sala).Lin = tLin.Text
    If sala > 0 Then
        Salas(andar, sala).left = Salas(andar, sala - 1).left + ((Salas(andar, sala - 1).Col + 3) * 105) 'col+3
    Else
        Salas(andar, sala).left = (7 * 105)
    End If
    If andar > 0 Then
        If sala = 0 Then
            Salas(andar, sala).top = Salas(andar - 1, sala).top + ((Salas(andar - 1, sala).Lin + 7) * 105)
        Else
            Salas(andar, sala).top = Salas(andar, sala - 1).top
        End If
    Else
        Salas(andar, sala).top = 0
    End If
        
    Salas(andar, sala).idSala = iContSalas
    iContSalas = iContSalas + 1
        
        
    qtSala = 0
    
    If andar = 0 And sala = 0 Then
        Form1.sMan(0).left = Salas(andar, sala).left
        Form1.sMan(0).top = Salas(andar, sala).top
    End If
        
    For i = 0 To Salas(andar, sala).Lin Step 2
        For y = 0 To Salas(andar, sala).Col Step 2
            
            
            If Salas(andar, sala).Espaco(i, y).quem = -1 Then
                
                If qtSala < Salas(andar, sala).ocupacao Then
                    Salas(andar, sala).Espaco(i, y).quem = Form1.sMan.UBound + 1
                    'qtSala = qtSala + 1
                End If
                If Form1.sMan.UBound < Salas(andar, sala).Espaco(i, y).quem Then
                    Load Form1.sMan(Salas(andar, sala).Espaco(i, y).quem)
                
                    Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).top = 105 * i + (Salas(andar, sala).top)
                    Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).left = 105 * y + (Salas(andar, sala).left)
                    Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).BackColor = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
                    Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).Tag = Str(andar) + ";" + Str(sala) + ";" + Str(i) + ";" + Str(y)
                    Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).Visible = True
                    
                End If
                'Form1.sMan(Salas(andar, sala).Espaco(i, y).quem).Tag = Str(andar) + ";" + Str(sala) + ";" + Str(i) + ";" + Str(y)
            
            End If
            
            qtSala = qtSala + 1
            
        Next
    Next

    If Form1.s1Andar.UBound < Salas(andar, sala).idSala Then
    
        Load Form1.s1Andar(Salas(andar, sala).idSala)
        
    End If
    On Error Resume Next
    
    Form1.s1Andar(Salas(andar, sala).idSala).top = Salas(andar, sala).top
    If Err.Number = 340 Then
        Load Form1.s1Andar(Salas(andar, sala).idSala)
        Form1.s1Andar(Salas(andar, sala).idSala).top = Salas(andar, sala).top
    End If
        
    Form1.s1Andar(Salas(andar, sala).idSala).left = Salas(andar, sala).left
    Form1.s1Andar(Salas(andar, sala).idSala).Width = (Salas(andar, sala).Col + 3) * 105 'col+3
    Form1.s1Andar(Salas(andar, sala).idSala).Height = (Salas(andar, sala).Lin + 2) * 105
    Form1.s1Andar(Salas(andar, sala).idSala).Visible = True

End Sub

Private Sub grava_corredor(andar As Integer, sala As Integer)
    Dim i As Integer
    Dim quem As Integer

    
    'Salas(andar, sala).ocupacao = Val(InputBox("Se deseja algumas pessoas no corredor, diga quantas:", "CORREDOR"))
    
    'If Salas(andar, sala).ocupacao = 0 Then Exit Sub
    
    Salas(andar, sala).Col = 134  '15 * maxSalas - 2
    Salas(andar, sala).Lin = 4
    Salas(andar, sala).left = (7 * 105)
    
    Salas(andar, sala).top = Salas(andar, sala - 1).top + ((Salas(andar, sala - 1).Lin + 2) * 105)
        
    Salas(andar, sala).idSala = iContSalas
    iContSalas = iContSalas + 1
    
    For i = 0 To maxSalas - 1
        Salas(andar, i).salaSaida = sala
        Salas(andar, i).linSaida = 0
        Salas(andar, i).colSaida = (i + 1) * (Salas(andar, i).Col + 2)
    Next
        
    If Form1.s1Andar.UBound <= (Salas(andar, sala).idSala) Then
    
        Load Form1.s1Andar(Salas(andar, sala).idSala)
        
    End If
    On Error Resume Next
    
    Form1.s1Andar(Salas(andar, sala).idSala).top = Salas(andar, sala).top
    If Err.Number = 340 Then
        Load Form1.s1Andar(Salas(andar, sala).idSala)
        Form1.s1Andar(Salas(andar, sala).idSala).top = Salas(andar, sala).top
    End If
        
    Form1.s1Andar(Salas(andar, sala).idSala).left = Salas(andar, sala).left
    Form1.s1Andar(Salas(andar, sala).idSala).Width = (Form1.s1Andar(Salas(andar, sala).idSala - 1).Width * maxSalas)
    Form1.s1Andar(Salas(andar, sala).idSala).Height = (5 * 105)
    Form1.s1Andar(Salas(andar, sala).idSala).BackStyle = 1
    Form1.s1Andar(Salas(andar, sala).idSala).BackColor = &H808080
    Form1.s1Andar(Salas(andar, sala).idSala).Visible = True

End Sub

Private Sub grava_escada(andar As Integer, sala As Integer)
    Dim i As Integer
    Dim quem As Integer

    
    'Salas(andar, sala).ocupacao = Val(InputBox("Se deseja algumas pessoas no corredor, diga quantas:", "CORREDOR"))
    
    'If Salas(andar, sala).ocupacao = 0 Then Exit Sub
    
    Salas(andar, sala).Col = 6
    Salas(andar, sala).Lin = (12 + 5) * (maxAndar + 1)
    Salas(andar, sala).left = Salas(andar, sala - 2).left + ((Salas(andar, sala - 2).Col + 3) * 105)
    Salas(andar, sala).top = Salas(andar, sala - 2).top
        
    Salas(andar, sala).idSala = iContSalas
    iContSalas = iContSalas + 1
    
    Salas(andar, sala - 1).salaSaida = maxSalas + 1
    Salas(andar, sala - 1).linSaida = (12 + 6) * (andar + 1)
    Salas(andar, sala - 1).colSaida = 0
        
    Salas(andar, sala).salaSaida = -1
        
    If Form1.s1Andar.UBound <= (Salas(andar, sala).idSala) Then
    
        Load Form1.s1Andar(Salas(andar, sala).idSala)
        
    End If
    On Error Resume Next
    
    Form1.s1Andar(Salas(andar, sala).idSala).top = Salas(andar, sala).top
    If Err.Number = 340 Then
        Load Form1.s1Andar(Salas(andar, sala).idSala)
        Form1.s1Andar(Salas(andar, sala).idSala).top = Salas(andar, sala).top
    End If
        
    Form1.s1Andar(Salas(andar, sala).idSala).left = Salas(andar, sala).left
    Form1.s1Andar(Salas(andar, sala).idSala).Width = (7 * 105)
    Form1.s1Andar(Salas(andar, sala).idSala).Height = (525 * (maxAndar + 2)) + (1470 * maxAndar)
    Form1.s1Andar(Salas(andar, sala).idSala).Height = Form1.s1Andar(Salas(andar, sala).idSala).Height - 105
    Form1.s1Andar(Salas(andar, sala).idSala).Visible = True
    
    Form1.lblexit(0).left = Salas(andar, sala).left - 230
    Form1.lblexit(0).top = Form1.s1Andar(Salas(andar, sala).idSala).Height
    Form1.lblexit(0).Visible = True

End Sub

Private Sub grava_escada2(andar As Integer, sala As Integer)
    Dim i As Integer
    Dim quem As Integer

    
    Salas(andar, sala).Col = 6
    Salas(andar, sala).Lin = (12 + 5) * (maxAndar + 1)
    Salas(andar, sala).left = 0
    Salas(andar, sala).top = Salas(andar, 1).top
        
    Salas(andar, sala).idSala = iContSalas
    iContSalas = iContSalas + 1
    
    Salas(andar, maxSalas).salaSaida2 = sala
    Salas(andar, maxSalas).linSaida2 = (12 + 4) * (andar + 1)
    Salas(andar, maxSalas).colSaida2 = 6
        
    Salas(andar, sala).salaSaida = -1
    Salas(andar, sala).salaSaida2 = -1
        
    If Form1.s1Andar.UBound <= (Salas(andar, sala).idSala) Then
    
        Load Form1.s1Andar(Salas(andar, sala).idSala)
        
    End If
    On Error Resume Next
    
    Form1.s1Andar(Salas(andar, sala).idSala).top = Salas(andar, sala).top
    If Err.Number = 340 Then
        Load Form1.s1Andar(Salas(andar, sala).idSala)
        Form1.s1Andar(Salas(andar, sala).idSala).top = Salas(andar, sala).top
    End If
        
    Form1.s1Andar(Salas(andar, sala).idSala).left = Salas(andar, sala).left
    Form1.s1Andar(Salas(andar, sala).idSala).Width = (7 * 105)
    Form1.s1Andar(Salas(andar, sala).idSala).Height = (525 * (maxAndar + 2)) + (1470 * maxAndar)
    Form1.s1Andar(Salas(andar, sala).idSala).Height = Form1.s1Andar(Salas(andar, sala).idSala).Height - 105
    Form1.s1Andar(Salas(andar, sala).idSala).Visible = True

    Form1.lblexit(1).left = Salas(andar, sala).left - 230
    Form1.lblexit(1).top = Form1.s1Andar(Salas(andar, sala).idSala).Height
    Form1.lblexit(1).Visible = True

End Sub


Private Sub Form_Load()

    Form1.sMan(0).Tag = " 0; 0; 0; 0"
    consulta 0, 0

End Sub

Private Sub tCol_GotFocus()
    tCol.SelStart = 0
    tCol.SelLength = Len(tCol.Text)
End Sub

Private Sub tLin_GotFocus()
    tLin.SelStart = 0
    tLin.SelLength = Len(tLin.Text)
End Sub

Private Sub tOcupacao_GotFocus()
    tOcupacao.SelStart = 0
    tOcupacao.SelLength = Len(tOcupacao.Text)
End Sub
