Attribute VB_Name = "Module1"
Option Explicit


Public StatusJogo As Boolean
Public Const maxAndar = 4
Public Const maxSalas = 9

Public iContSalas As Integer

Public Type OcupBy
   quem As Integer
   left As Boolean
End Type

Public Const maxCol = 150
Public Const maxLin = 105

Public Type sala
   Lin As Integer
   Col As Integer
   salaSaida As Integer
   linSaida As Integer
   colSaida As Integer
   salaSaida2 As Integer
   linSaida2 As Integer
   colSaida2 As Integer
   left As Integer
   top As Integer
   ocupacao As Byte
   idSala As Integer
   Espaco(maxLin, maxCol) As OcupBy
End Type

'Public Type ocupacao
'   Espaco(maxLin, maxCol) As Byte
'End Type

Public Salas(maxAndar, maxSalas + 2) As sala
'Public SalaPessoas(maxAndar, maxSalas) As ocupacao


Public Function moverII(andar As Integer, sala As Integer, l As Integer, c As Integer) As Boolean
    Dim lNewLeft As Long
    Dim colA As Integer
    Dim linA As Integer
    Dim colN As Integer
    Dim linN As Integer
    Dim salaN As Integer
    Dim andarN As Integer
    Dim vlogleft As Boolean
    Dim qual_sala As Byte
    
    colN = c
    linN = l
    andarN = andar
    salaN = sala
    
    If Salas(andar, sala).Espaco(l, c).left = True Then
        colA = c
    Else
        colA = Salas(andar, sala).Col - c
    End If
    linA = Salas(andar, sala).Lin - l
    
    ' está se movendo para direita
    If Salas(andar, sala).Espaco(l, c).left = False Then
    
        ' aqui chegou na próxima sala
        If (colA = 0 And linA = 0) Or (linA = 0 And Salas(andar, sala).salaSaida = -1) Then
        
            If sala = (Int(maxSalas - 1) / 2) Then
            
                qual_sala = CInt(Rnd * 1)
                
                vlogleft = IIf(qual_sala = 1, True, False)
                'vlogleft = True
            
            ElseIf sala > (Int(maxSalas - 1) / 2) Then
            
                vlogleft = False
            
            ElseIf Salas(andar, Salas(andar, sala).salaSaida).salaSaida2 > 0 Then
                
                vlogleft = True
                
            End If
            
            linN = Salas(andar, sala).linSaida
            colN = Salas(andar, sala).colSaida
            salaN = Salas(andar, sala).salaSaida
            If salaN > maxSalas Then andarN = 0
            
            If Salas(andar, sala).salaSaida = 0 Then
                moverII = True
                Exit Function
            End If
            
            If salaN <> -1 Then
                If Salas(andarN, salaN).Espaco(linN, colN).quem = -1 Then
            
                    Salas(andarN, salaN).Espaco(linN, colN).quem = Salas(andar, sala).Espaco(l, c).quem
                    Salas(andarN, salaN).Espaco(linN, colN).left = vlogleft
                    Salas(andar, sala).Espaco(l, c).quem = -1
                    
                Else
                    moverII = True
                    Exit Function
                End If
                
            End If
        ' tenta avançar coluna
        ElseIf colA > linA Or (linA = colA And linA > 0) Then
        
            ' avança coluna
            If Salas(andar, sala).Espaco(l, c + 1).quem = -1 Then
            
                Salas(andar, sala).Espaco(l, c + 1).quem = Salas(andar, sala).Espaco(l, c).quem
                Salas(andar, sala).Espaco(l, c + 1).left = Salas(andar, sala).Espaco(l, c).left
                Salas(andar, sala).Espaco(l, c).quem = -1
                colN = c + 1
            
            'não deu, avança linha
            ElseIf l < Salas(andar, sala).Lin And _
                       Salas(andar, sala).Espaco(l + 1, c).quem = -1 Then
                       
                Salas(andar, sala).Espaco(l + 1, c).quem = Salas(andar, sala).Espaco(l, c).quem
                Salas(andar, sala).Espaco(l + 1, c).left = Salas(andar, sala).Espaco(l, c).left
                Salas(andar, sala).Espaco(l, c).quem = -1
                linN = l + 1
            
            'não deu, recua linha  (movimento de ansiedade)
            ElseIf l > 0 Then
                If Salas(andar, sala).Espaco(l - 1, c).quem = -1 Then
            
                    Salas(andar, sala).Espaco(l - 1, c).quem = Salas(andar, sala).Espaco(l, c).quem
                    Salas(andar, sala).Espaco(l - 1, c).left = Salas(andar, sala).Espaco(l, c).left
                    Salas(andar, sala).Espaco(l, c).quem = -1
                    linN = l - 1
                End If
            Else
                moverII = True
                Exit Function
            End If
        
        ' tenta avançar linha
        ElseIf colA < linA Then
        
            ' avança linha
            If Salas(andar, sala).Espaco(l + 1, c).quem = -1 And _
               l < Salas(andar, sala).Lin Then
            
                Salas(andar, sala).Espaco(l + 1, c).quem = Salas(andar, sala).Espaco(l, c).quem
                Salas(andar, sala).Espaco(l + 1, c).left = Salas(andar, sala).Espaco(l, c).left
                Salas(andar, sala).Espaco(l, c).quem = -1
                linN = l + 1
            
            ' não deu, avança coluna
            ElseIf c < Salas(andar, sala).Col And _
                       Salas(andar, sala).Espaco(l, c + 1).quem = -1 Then
                       
                Salas(andar, sala).Espaco(l, c + 1).quem = Salas(andar, sala).Espaco(l, c).quem
                Salas(andar, sala).Espaco(l, c + 1).left = Salas(andar, sala).Espaco(l, c).left
                Salas(andar, sala).Espaco(l, c).quem = -1
                colN = c + 1
                       
            ' não deu, recua coluna (movimento de ansiedade)
            ElseIf c > 0 Then
            
                If Salas(andar, sala).Espaco(l, c - 1).quem = -1 Then
                       
                    Salas(andar, sala).Espaco(l, c - 1).quem = Salas(andar, sala).Espaco(l, c).quem
                    Salas(andar, sala).Espaco(l, c - 1).left = Salas(andar, sala).Espaco(l, c).left
                    Salas(andar, sala).Espaco(l, c).quem = -1
                    colN = c - 1
                End If
            Else
                moverII = True
                Exit Function
            End If
        
        End If
    
    ' se move pra esquerda
    Else
        ' aqui chegou na próxima sala
        If (colA = 0 And linA = 0) Or (linA = 0 And Salas(andar, sala).salaSaida2 = -1) Then
        
            If sala = (Int(maxSalas) / 2) + 1 Then
            
                vlogleft = IIf(CInt(Rnd * 1) = 1, True, False)
                vlogleft = True
            
            ElseIf sala > (Int(maxSalas) / 2) Then
            
                vlogleft = False
            
            ElseIf Salas(andar, Salas(andar, sala).salaSaida).salaSaida2 > 0 Then
                
                vlogleft = True
                
            End If
            
        
            linN = Salas(andar, sala).linSaida2
            colN = Salas(andar, sala).colSaida2
            salaN = Salas(andar, sala).salaSaida2
            If salaN > maxSalas Then andarN = 0
            
            If Salas(andar, sala).salaSaida2 = 0 Then
                moverII = True
                Exit Function
            End If
            
            If salaN <> -1 Then
                If Salas(andarN, salaN).Espaco(linN, colN).quem = -1 Then
            
                    Salas(andarN, salaN).Espaco(linN, colN).quem = Salas(andar, sala).Espaco(l, c).quem
                    Salas(andarN, salaN).Espaco(linN, colN).left = vlogleft
                    Salas(andar, sala).Espaco(l, c).quem = -1
                    
                Else
                    moverII = True
                    Exit Function
                End If
                
            End If
        ' tenta recuar coluna
        ElseIf colA > linA Or (linA = colA And linA > 0) And colA > 0 Then
        
            ' recua coluna
            If Salas(andar, sala).Espaco(l, c - 1).quem = -1 Then
            
                Salas(andar, sala).Espaco(l, c - 1).quem = Salas(andar, sala).Espaco(l, c).quem
                Salas(andar, sala).Espaco(l, c - 1).left = Salas(andar, sala).Espaco(l, c).left
                Salas(andar, sala).Espaco(l, c).quem = -1
                colN = c - 1
            
            'não deu, avança linha
            ElseIf l < Salas(andar, sala).Lin And _
                       Salas(andar, sala).Espaco(l + 1, c).quem = -1 Then
                       
                Salas(andar, sala).Espaco(l + 1, c).quem = Salas(andar, sala).Espaco(l, c).quem
                Salas(andar, sala).Espaco(l + 1, c).left = Salas(andar, sala).Espaco(l, c).left
                Salas(andar, sala).Espaco(l, c).quem = -1
                linN = l + 1
            
            'não deu, recua linha  (movimento de ansiedade)
            ElseIf l > 0 Then
                If Salas(andar, sala).Espaco(l - 1, c).quem = -1 Then
            
                    Salas(andar, sala).Espaco(l - 1, c).quem = Salas(andar, sala).Espaco(l, c).quem
                    Salas(andar, sala).Espaco(l - 1, c).left = Salas(andar, sala).Espaco(l, c).left
                    Salas(andar, sala).Espaco(l, c).quem = -1
                    linN = l - 1
                End If
            Else
                moverII = True
                Exit Function
            End If
        
        ' tenta avançar linha
        ElseIf colA < linA Then
        
            ' avança linha
            If Salas(andar, sala).Espaco(l + 1, c).quem = -1 And _
               l < Salas(andar, sala).Lin Then
            
                Salas(andar, sala).Espaco(l + 1, c).quem = Salas(andar, sala).Espaco(l, c).quem
                Salas(andar, sala).Espaco(l + 1, c).left = Salas(andar, sala).Espaco(l, c).left
                Salas(andar, sala).Espaco(l, c).quem = -1
                linN = l + 1
            
            ' não deu, recua coluna
            ElseIf c > 0 Then
                
                If Salas(andar, sala).Espaco(l, c - 1).quem = -1 Then
                       
                    Salas(andar, sala).Espaco(l, c - 1).quem = Salas(andar, sala).Espaco(l, c).quem
                    Salas(andar, sala).Espaco(l, c - 1).left = Salas(andar, sala).Espaco(l, c).left
                    Salas(andar, sala).Espaco(l, c).quem = -1
                    colN = c - 1
                End If
            
            ' não deu, avança coluna (movimento de ansiedade)
            ElseIf Salas(andar, sala).Espaco(l, c + 1).quem = -1 Then
            
                Salas(andar, sala).Espaco(l, c + 1).quem = Salas(andar, sala).Espaco(l, c).quem
                Salas(andar, sala).Espaco(l, c + 1).left = Salas(andar, sala).Espaco(l, c).left
                Salas(andar, sala).Espaco(l, c).quem = -1
                colN = c + 1
            Else
                moverII = True
                Exit Function
            End If
        
        End If
    
    End If
    
    On Error Resume Next
    
    If salaN <> -1 Then
        If Salas(andarN, salaN).Espaco(linN, colN).quem <> -1 Then
            Form1.sMan(Salas(andarN, salaN).Espaco(linN, colN).quem).top = 105 * (linN) + (Salas(andarN, salaN).top)
            Form1.sMan(Salas(andarN, salaN).Espaco(linN, colN).quem).left = 105 * (colN) + (Salas(andarN, salaN).left)
            Form1.sMan(Salas(andarN, salaN).Espaco(linN, colN).quem).Tag = Str(andarN) + ";" + Str(salaN) + ";" + Str(linN) + ";" + Str(colN)
        End If
        
        moverII = True
    Else
        Form1.sMan(Salas(andar, sala).Espaco(l, c).quem).Visible = False
        If Salas(andar, sala).Espaco(l, c).quem > 0 Then
            Unload Form1.sMan(Salas(andar, sala).Espaco(l, c).quem)
        End If
        Salas(andar, sala).Espaco(l, c).quem = -1
        moverII = False
    End If
    
    'lNewLeft = sMan(quem).left + sMan(quem).Width
    'sMan(quem).Move lNewLeft, sMan(quem).top, sMan(quem).Width, sMan(quem).Height
    

End Function



