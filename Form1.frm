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
      Interval        =   500
      Left            =   360
      Top             =   6360
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   23
      Left            =   5250
      Top             =   2100
      Width           =   1605
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   22
      Left            =   2100
      Top             =   2100
      Width           =   1605
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   21
      Left            =   5250
      Top             =   0
      Width           =   1605
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   20
      Left            =   2100
      Top             =   0
      Width           =   1605
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   899
      Left            =   525
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   19
      Left            =   525
      Top             =   2100
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   898
      Left            =   735
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   897
      Left            =   945
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   896
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   895
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   894
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   893
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   892
      Left            =   525
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   891
      Left            =   735
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   890
      Left            =   945
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   889
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   888
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   887
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   886
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   885
      Left            =   525
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   884
      Left            =   735
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   883
      Left            =   945
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   882
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   881
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   880
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   879
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   878
      Left            =   525
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   877
      Left            =   735
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   876
      Left            =   945
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   875
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   874
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   873
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   872
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   871
      Left            =   525
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   870
      Left            =   735
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   869
      Left            =   945
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   868
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   867
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   866
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   865
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   864
      Left            =   525
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   863
      Left            =   735
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   862
      Left            =   945
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   861
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   860
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   859
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   858
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   857
      Left            =   525
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   856
      Left            =   735
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   855
      Left            =   945
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   854
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   853
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   852
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   851
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   850
      Left            =   1995
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   100
      Index           =   18
      Left            =   2100
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   849
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   848
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   847
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   846
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   845
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   844
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   843
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   842
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   841
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   840
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   839
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   838
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   837
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   836
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   835
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   834
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   833
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   832
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   831
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   830
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   829
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   828
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   827
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   826
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   825
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   824
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   823
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   822
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   821
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   820
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   819
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   818
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   817
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   816
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   815
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   814
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   813
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   812
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   811
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   810
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   809
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   808
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   807
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   806
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   805
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   804
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   803
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   802
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   801
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   800
      Left            =   3570
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   17
      Left            =   3675
      Top             =   2100
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   799
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   798
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   797
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   796
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   795
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   794
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   793
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   792
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   791
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   790
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   789
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   788
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   787
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   786
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   785
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   784
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   783
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   782
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   781
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   780
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   779
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   778
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   777
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   776
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   775
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   774
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   773
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   772
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   771
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   770
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   769
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   768
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   767
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   766
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   765
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   764
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   763
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   762
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   761
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   760
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   759
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   758
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   757
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   756
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   755
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   754
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   753
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   752
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   751
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   750
      Left            =   5145
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   16
      Left            =   5250
      Top             =   2100
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   749
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   748
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   747
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   746
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   745
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   744
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   743
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   742
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   741
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   740
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   739
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   738
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   737
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   736
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   735
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   734
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   733
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   732
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   731
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   730
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   729
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   728
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   727
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   726
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   725
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   724
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   723
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   722
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   721
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   720
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   719
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   718
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   717
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   716
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   715
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   714
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   713
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   712
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   711
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   710
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   709
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   708
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   707
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   706
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   705
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   704
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   703
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   702
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   701
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   700
      Left            =   6720
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   15
      Left            =   6825
      Top             =   2100
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   699
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   698
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   697
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   696
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   695
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   694
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   693
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   692
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   691
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   690
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   689
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   688
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   687
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   686
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   685
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   684
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   683
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   682
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   681
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   680
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   679
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   678
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   677
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   676
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   675
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   674
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   673
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   672
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   671
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   670
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   669
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   668
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   667
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   666
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   665
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   664
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   663
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   662
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   661
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   660
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   659
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   658
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   657
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   656
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   655
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   654
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   653
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   652
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   651
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   650
      Left            =   8295
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   649
      Left            =   13020
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   648
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   647
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   646
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   645
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   644
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   643
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   642
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   641
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   640
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   639
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   638
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   637
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   636
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   635
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   634
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   633
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   632
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   631
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   630
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   629
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   628
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   627
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   626
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   625
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   624
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   623
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   622
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   621
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   620
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   619
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   618
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   617
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   616
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   615
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   614
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   613
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   612
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   611
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   610
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   609
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   608
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   607
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   606
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   605
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   604
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   603
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   602
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   601
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   600
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   14
      Left            =   11550
      Top             =   2100
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   599
      Left            =   11445
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   598
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   597
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   596
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   595
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   594
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   593
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   592
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   591
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   590
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   589
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   588
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   587
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   586
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   585
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   584
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   583
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   582
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   581
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   580
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   579
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   578
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   577
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   576
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   575
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   574
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   573
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   572
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   571
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   570
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   569
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   568
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   567
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   566
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   565
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   564
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   563
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   562
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   561
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   560
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   559
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   558
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   557
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   556
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   555
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   554
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   553
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   552
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   551
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   550
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   13
      Left            =   9975
      Top             =   2100
      Width           =   1605
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   549
      Left            =   9870
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   548
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   547
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   546
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   545
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   544
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   543
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   542
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   541
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   540
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   539
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   538
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   537
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   536
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   535
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   534
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   533
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   532
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   531
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   530
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   529
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   528
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   527
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   526
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   525
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   524
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   523
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   522
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   521
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   520
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   519
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   518
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   517
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   516
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   515
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   514
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   513
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   512
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   511
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   510
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   509
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   508
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   507
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   506
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   505
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   504
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   503
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   502
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   501
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   500
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   12
      Left            =   8400
      Top             =   2100
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   499
      Left            =   14595
      Shape           =   3  'Circle
      Top             =   2205
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   498
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   497
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   496
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   495
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   494
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   493
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   492
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   3360
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   491
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   490
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   489
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   488
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   487
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   486
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   485
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   3150
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   484
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   483
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   482
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   481
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   480
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   479
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   478
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   2940
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   477
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   476
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   475
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   474
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   473
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   472
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   471
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   2730
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   470
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   469
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   468
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   467
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   466
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   465
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   464
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   2520
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   463
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   462
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   461
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   460
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   459
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   458
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   457
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   2310
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   456
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   455
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   454
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   453
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   452
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   451
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   450
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   2100
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   11
      Left            =   13125
      Top             =   2100
      Width           =   1600
   End
   Begin VB.Shape s1Andar 
      Height          =   735
      Index           =   10
      Left            =   525
      Top             =   3465
      Width           =   14205
   End
   Begin VB.Shape s1Andar 
      Height          =   735
      Index           =   9
      Left            =   525
      Top             =   1365
      Width           =   14205
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   8
      Left            =   13125
      Top             =   0
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   449
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   448
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   447
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   446
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   445
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   444
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   443
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   442
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   441
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   440
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   439
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   438
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   437
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   436
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   435
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   434
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   433
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   432
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   431
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   430
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   429
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   428
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   427
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   426
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   425
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   424
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   423
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   422
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   421
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   420
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   419
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   418
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   417
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   416
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   415
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   414
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   413
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   412
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   411
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   410
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   409
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   408
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   407
      Left            =   13125
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   406
      Left            =   13335
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   405
      Left            =   13545
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   404
      Left            =   13755
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   403
      Left            =   13965
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   402
      Left            =   14175
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   401
      Left            =   14385
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   400
      Left            =   14595
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   7
      Left            =   8400
      Top             =   0
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   399
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   398
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   397
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   396
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   395
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   394
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   393
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   392
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   391
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   390
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   389
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   388
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   387
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   386
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   385
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   384
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   383
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   382
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   381
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   380
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   379
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   378
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   377
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   376
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   375
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   374
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   373
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   372
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   371
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   370
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   369
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   368
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   367
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   366
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   365
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   364
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   363
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   362
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   361
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   360
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   359
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   358
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   357
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   356
      Left            =   8610
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   355
      Left            =   8820
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   354
      Left            =   9030
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   353
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   352
      Left            =   9450
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   351
      Left            =   9660
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   350
      Left            =   9870
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   6
      Left            =   9975
      Top             =   0
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   349
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   348
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   347
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   346
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   345
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   344
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   343
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   342
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   341
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   340
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   339
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   338
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   337
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   336
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   335
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   334
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   333
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   332
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   331
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   330
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   329
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   328
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   327
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   326
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   325
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   324
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   323
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   322
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   321
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   320
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   319
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   318
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   317
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   316
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   315
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   314
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   313
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   312
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   311
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   310
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   309
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   308
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   307
      Left            =   9975
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   306
      Left            =   10185
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   305
      Left            =   10395
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   304
      Left            =   10605
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   303
      Left            =   10815
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   302
      Left            =   11025
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   301
      Left            =   11235
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   300
      Left            =   11445
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   5
      Left            =   11550
      Top             =   0
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   299
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   298
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   297
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   296
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   295
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   294
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   293
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   292
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   291
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   290
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   289
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   288
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   287
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   286
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   285
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   284
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   283
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   282
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   281
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   280
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   279
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   278
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   277
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   276
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   275
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   274
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   273
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   272
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   271
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   270
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   269
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   268
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   267
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   266
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   265
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   264
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   263
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   262
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   261
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   260
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   259
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   258
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   257
      Left            =   11550
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   256
      Left            =   11760
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   255
      Left            =   11970
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   254
      Left            =   12180
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   253
      Left            =   12390
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   252
      Left            =   12600
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   251
      Left            =   12810
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   250
      Left            =   13020
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   249
      Left            =   8295
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   248
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   247
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   246
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   245
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   244
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   243
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   242
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   241
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   240
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   239
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   238
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   237
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   236
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   235
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   234
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   233
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   232
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   231
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   230
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   229
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   228
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   227
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   226
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   225
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   224
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   223
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   222
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   221
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   220
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   219
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   218
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   217
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   216
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   215
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   214
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   213
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   212
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   211
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   210
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   209
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   208
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   207
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   206
      Left            =   8085
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   205
      Left            =   7875
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   204
      Left            =   7665
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   203
      Left            =   7455
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   202
      Left            =   7245
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   201
      Left            =   7035
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   200
      Left            =   6825
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   4
      Left            =   6825
      Top             =   0
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   199
      Left            =   6720
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   198
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   197
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   196
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   195
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   194
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   193
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   192
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   191
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   190
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   189
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   188
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   187
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   186
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   185
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   184
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   183
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   182
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   181
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   180
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   179
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   178
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   177
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   176
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   175
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   174
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   173
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   172
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   171
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   170
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   169
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   168
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   167
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   166
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   165
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   164
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   163
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   162
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   161
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   160
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   159
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   158
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   157
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   156
      Left            =   6510
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   155
      Left            =   6300
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   154
      Left            =   6090
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   153
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   152
      Left            =   5670
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   151
      Left            =   5460
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   150
      Left            =   5250
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   100
      Index           =   3
      Left            =   5250
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   149
      Left            =   5145
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   148
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   147
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   146
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   145
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   144
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   143
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   142
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   141
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   140
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   139
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   138
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   137
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   136
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   135
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   134
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   133
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   132
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   131
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   130
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   129
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   128
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   127
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   126
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   125
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   124
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   123
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   122
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   121
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   120
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   119
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   118
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   117
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   116
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   115
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   114
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   113
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   112
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   111
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   110
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   109
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   108
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   107
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   106
      Left            =   4935
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   105
      Left            =   4725
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   104
      Left            =   4515
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   103
      Left            =   4305
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   102
      Left            =   4095
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   101
      Left            =   3885
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   100
      Left            =   3675
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   1365
      Index           =   2
      Left            =   3675
      Top             =   0
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   99
      Left            =   3570
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   98
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   97
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   96
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   95
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   94
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   93
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   92
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   91
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   90
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   89
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   88
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   87
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   86
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   85
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   84
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   83
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   82
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   81
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   80
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   79
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   78
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   77
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   76
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   75
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   74
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   73
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   72
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   71
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   70
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   69
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   68
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   67
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   66
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   65
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   64
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   63
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   62
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   61
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   60
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   59
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   58
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   57
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   56
      Left            =   3360
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   55
      Left            =   3150
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   54
      Left            =   2940
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   53
      Left            =   2730
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   52
      Left            =   2520
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   51
      Left            =   2310
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   50
      Left            =   2100
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape s1Andar 
      Height          =   100
      Index           =   1
      Left            =   2100
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   49
      Left            =   1995
      Shape           =   3  'Circle
      Top             =   105
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   48
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   47
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   46
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   45
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   44
      Left            =   945
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   43
      Left            =   735
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   42
      Left            =   525
      Shape           =   3  'Circle
      Top             =   1260
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   41
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   40
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   39
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   38
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   37
      Left            =   945
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   36
      Left            =   735
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   35
      Left            =   525
      Shape           =   3  'Circle
      Top             =   1050
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   34
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   33
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   32
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   31
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   30
      Left            =   945
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   29
      Left            =   735
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   28
      Left            =   525
      Shape           =   3  'Circle
      Top             =   840
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   27
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   26
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   25
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   24
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   23
      Left            =   945
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   22
      Left            =   735
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   21
      Left            =   525
      Shape           =   3  'Circle
      Top             =   630
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   20
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   19
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   18
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   17
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   16
      Left            =   945
      Shape           =   3  'Circle
      Top             =   420
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   105
      Index           =   15
      Left            =   735
      Shape           =   3  'Circle
      Top             =   420
      Width           =   105
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   105
      Index           =   14
      Left            =   525
      Shape           =   3  'Circle
      Top             =   420
      Width           =   105
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   13
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   12
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   11
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   10
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   9
      Left            =   945
      Shape           =   3  'Circle
      Top             =   210
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   105
      Index           =   8
      Left            =   735
      Shape           =   3  'Circle
      Top             =   210
      Width           =   105
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   105
      Index           =   7
      Left            =   525
      Shape           =   3  'Circle
      Top             =   210
      Width           =   105
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   6
      Left            =   1785
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   5
      Left            =   1575
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   4
      Left            =   1365
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   3
      Left            =   1155
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   100
      Index           =   2
      Left            =   945
      Shape           =   3  'Circle
      Top             =   0
      Width           =   100
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   105
      Index           =   1
      Left            =   735
      Shape           =   3  'Circle
      Top             =   0
      Width           =   105
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
      Left            =   525
      Top             =   0
      Width           =   1600
   End
   Begin VB.Shape sMan 
      BackColor       =   &H00FF8080&
      BackStyle       =   1  'Opaque
      Height          =   105
      Index           =   0
      Left            =   525
      Shape           =   3  'Circle
      Top             =   0
      Width           =   105
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
    If StatusJogo = True Then
        StatusJogo = False
        Command1.Caption = "&Play"
    Else
        Timer1.Interval = Int(intervalo.Text)
        StatusJogo = True
        Command1.Caption = "&Pause"
    End If
End Sub

Private Sub Command2_Click()
    Form2.Show vbModal
End Sub

Private Sub Form_Load()
    Dim i, y, j, z
    
    
    For i = 0 To maxAndar
        For y = 0 To maxSalas
            For j = 0 To 12
                For z = 0 To 150
                    Salas(i, y).Espaco(j, z).quem = -1
                Next
            Next
        Next
    Next

End Sub

Private Sub intervalo_GotFocus()
    intervalo.SelStart = 0
    intervalo.SelLength = Len(intervalo.Text)
End Sub

Private Sub Timer1_Timer()
    Dim i As Integer

    
    If StatusJogo = False Then Exit Sub
    
    
    For i = sMan.LBound To sMan.UBound
    
        mover i
    
    Next


    tempo.Text = Format(Now, "hh:mm:ss")

End Sub
 Private Sub mover(quem As Integer)
    Dim lNewLeft As Long



    lNewLeft = sMan(quem).left + sMan(quem).Width
    sMan(quem).Move lNewLeft, sMan(quem).top, sMan(quem).Width, sMan(quem).Height



 End Sub
