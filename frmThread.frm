VERSION 5.00
Begin VB.Form frmThread 
   Caption         =   "Form3"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form3"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frmThread"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Este frmThread é usada apenas para servir de "Chamador"
'
'Note que exite um objTHREAD (iterator) que é declarado com WithEvents
'Por causa do WithEvents é que precisamos de um form para cada Thread
'
'O evento objThread_MoveNow() é chamado a todo o instante pelo ThreadServer.
'Neste evento deve ser colocada a chamada ao método MoveAtor.
'Perceba que ela passa um parametro que é o INDICE do ator que será movido
'
'O evento objThread_Done é executado quando a thread termina.

Public WithEvents objThread As ThreadServer.Iterator
Attribute objThread.VB_VarHelpID = -1

Private contParada As Long

Private Sub Form_Load()
    'Este form não precisa aparecer na tela
    Me.Hide
    contParada = 0
End Sub

Private Sub objThread_Done()
    'ISTO É MUITO IMPORTANTE
    Set objThread = Nothing
    Unload Me
End Sub

Private Sub objThread_MoveNow(IndexObj As Integer)
Dim posTop As Single
Dim posLeft  As Single
Dim i As Integer, y As Integer, j As Integer, z As Integer
Dim sTag As String
Dim iPos As Integer
Dim status As Boolean
    '
    'Colocar aqui procedimentos para mover o ator cujo indice é IndexObj
    'Neste exemplo, eu fiz um simplificado:
    '
    'Neste exemplo, a TAG do ATOR possui duas letras:
    'U ou D = Up/Down       mais
    'L ou R = Left/Right
    'Exemplo:
    '   "UL" -> significa que o ator está indo para cima (U) e para esquerda (L)
    '
    'Tem apenas dois SELECT CASE, para mover o ator, se ele bater em algum canto
    'começa a ir para o outro lado (troca-se as letras).
    '
    
    If Form1.sMan.UBound = 0 Or StatusJogo = False Then
        objThread.HaltThread
        'Unload Me
        Exit Sub
    End If
    
    
    
    ' andar
    'i = Val(Mid(Form1.sMan(IndexObj).Tag, InStr(1, Form1.sMan(IndexObj).Tag, ";") - 2, 2))
    'sala
    'y = Val(Mid(Form1.sMan(IndexObj).Tag, InStr(1, Form1.sMan(IndexObj).Tag, ";") + 1, 2))
    '
    'j = Val(Mid(Form1.sMan(IndexObj).Tag, InStr(4, Form1.sMan(IndexObj).Tag, ";") + 1, 3))
    '
    'z = Val(Mid(Form1.sMan(IndexObj).Tag, InStr(7, Form1.sMan(IndexObj).Tag, ";") + 1, 4))
    
    
    sTag = Form1.sMan(IndexObj).Tag
    
    iPos = InStr(1, sTag, ";")
    i = Val(Mid(sTag, 1, iPos))
    sTag = Mid(sTag, iPos + 1, Len(sTag))
    
    iPos = InStr(1, sTag, ";")
    y = Val(Mid(sTag, 1, iPos))
    sTag = Mid(sTag, iPos + 1, Len(sTag))
    
    iPos = InStr(1, sTag, ";")
    j = Val(Mid(sTag, 1, iPos))
    sTag = Mid(sTag, iPos + 1, Len(sTag))
    
    z = Val(sTag)
    
    
    status = moverII(i, y, j, z)
    DoEvents
    Form1.tempo.Text = Format(Now, "hh:mm:ss")
    
    If Not status Then
        'Form1.lQtPessoas.Caption = Str(Form1.sMan.UBound + 1)
        Form1.lQtPessoas.Caption = Str(Int(Form1.lQtPessoas.Caption) - 1)
        objThread.HaltThread
        'Unload Me
    End If
    
    
''    Select Case (Mid$(frmPrograma.shpAtor(IndexObj).Tag, 1, 1))
''        Case "U"
''            posTop = frmPrograma.shpAtor(IndexObj).top - Screen.TwipsPerPixelY
''            If (posTop <= 0) Then
''                frmPrograma.shpAtor(IndexObj).Tag = "D" & Mid$(frmPrograma.shpAtor(IndexObj).Tag, 2, 1)
''            End If
''        Case "D"
''            posTop = frmPrograma.shpAtor(IndexObj).top + Screen.TwipsPerPixelY
''            If (posTop >= (frmPrograma.picSala.Height - frmPrograma.shpAtor(IndexObj).Height)) Then
''                frmPrograma.shpAtor(IndexObj).Tag = "U" & Mid$(frmPrograma.shpAtor(IndexObj).Tag, 2, 1)
''            End If
''    End Select
''
''    Select Case (Mid$(frmPrograma.shpAtor(IndexObj).Tag, 2, 1))
''        Case "L"
''            posLeft = frmPrograma.shpAtor(IndexObj).left - Screen.TwipsPerPixelX
''            If (posLeft <= 0) Then
''                frmPrograma.shpAtor(IndexObj).Tag = Mid$(frmPrograma.shpAtor(IndexObj).Tag, 1, 1) & "R"
''            End If
''        Case "R"
''            posLeft = frmPrograma.shpAtor(IndexObj).left + Screen.TwipsPerPixelX
''            If (posLeft >= (frmPrograma.picSala.Width - frmPrograma.shpAtor(IndexObj).Width)) Then
''                frmPrograma.shpAtor(IndexObj).Tag = Mid$(frmPrograma.shpAtor(IndexObj).Tag, 1, 1) & "L"
''            End If
''    End Select
''
''    frmPrograma.shpAtor(IndexObj).Move posLeft, posTop
''    DoEvents
    
    
    'O problema maior é que, dependendo da quantidade de atores, o DOEVENTS não tem muito
    'efeito, e tu não vai conseguir parar o programa, ou seja, não vai conseguir clicar no STOP.
    'Então tem que ser bem programado, para que quando o ator ACHE A SAÍDA, tu faça a Thread parar
    '
    'Neste exemplo, onde não tem um critério de parada definido, fiz um contador
    'que vai parar os atores quando chegar em 50000.
    'Outra alternativa é clicar no PARAR (mas pode ser que não consiga, como eu já disse acima)
    'contParada = contParada + 1
    'If (contParada >= 50000) Then
        'objThread.HaltThread
    'End If
End Sub

