VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Jogo do Galo - Jogador vs Jogador"
   ClientHeight    =   5715
   ClientLeft      =   45
   ClientTop       =   615
   ClientWidth     =   10005
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5715
   ScaleWidth      =   10005
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox Txt1 
      Height          =   375
      Left            =   6960
      MaxLength       =   10
      TabIndex        =   2
      Top             =   840
      Width           =   2175
   End
   Begin VB.TextBox Txt2 
      Height          =   375
      Left            =   6960
      MaxLength       =   10
      TabIndex        =   1
      Top             =   1440
      Width           =   2175
   End
   Begin VB.Line vertical2 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   2640
      X2              =   2640
      Y1              =   960
      Y2              =   4320
   End
   Begin VB.Line vertical1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   1080
      X2              =   1080
      Y1              =   960
      Y2              =   4320
   End
   Begin VB.Line vertical3 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   4200
      X2              =   4200
      Y1              =   960
      Y2              =   4320
   End
   Begin VB.Line diagonal2 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   840
      X2              =   4440
      Y1              =   4320
      Y2              =   840
   End
   Begin VB.Line diagonal1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   720
      X2              =   4320
      Y1              =   840
      Y2              =   4320
   End
   Begin VB.Line horizontal3 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   480
      X2              =   4560
      Y1              =   4080
      Y2              =   4080
   End
   Begin VB.Line horizontal2 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   480
      X2              =   4560
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line horizontal1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      X1              =   480
      X2              =   4560
      Y1              =   1200
      Y2              =   1200
   End
   Begin VB.Label lblpontos2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   8040
      TabIndex        =   22
      Top             =   4800
      Width           =   975
   End
   Begin VB.Label lblpontos1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   5880
      TabIndex        =   21
      Top             =   4800
      Width           =   975
   End
   Begin VB.Label lblvez 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3120
      TabIndex        =   20
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label Label4 
      BackColor       =   &H00000000&
      Caption         =   "É a vez do jogador:"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   480
      TabIndex        =   19
      Top             =   5160
      Width           =   2295
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   8
      Left            =   3480
      TabIndex        =   18
      Top             =   3480
      Width           =   1335
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   7
      Left            =   1920
      TabIndex        =   17
      Top             =   3480
      Width           =   1335
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   6
      Left            =   360
      TabIndex        =   16
      Top             =   3480
      Width           =   1335
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   5
      Left            =   3480
      TabIndex        =   15
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   4
      Left            =   1920
      TabIndex        =   14
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   2
      Left            =   3480
      TabIndex        =   13
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   3
      Left            =   360
      TabIndex        =   12
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   1
      Left            =   1920
      TabIndex        =   11
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label lblgalo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   56.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1215
      Index           =   0
      Left            =   360
      TabIndex        =   10
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label lblo 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   9240
      TabIndex        =   9
      Top             =   1440
      Width           =   495
   End
   Begin VB.Label lblx 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   9240
      TabIndex        =   8
      Top             =   840
      Width           =   495
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "VS"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   7320
      TabIndex        =   7
      Top             =   4200
      Width           =   375
   End
   Begin VB.Label lbljogador2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   7800
      TabIndex        =   6
      Top             =   4200
      Width           =   1935
   End
   Begin VB.Label lbljogador1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   5280
      TabIndex        =   5
      Top             =   4200
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Jogador 1"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   5640
      TabIndex        =   4
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "Jogador 2"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   5640
      TabIndex        =   3
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label lblinformacao 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   5400
      TabIndex        =   0
      Top             =   3600
      Width           =   4095
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FFFFFF&
      X1              =   360
      X2              =   4800
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FFFFFF&
      X1              =   360
      X2              =   4800
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      X1              =   3360
      X2              =   3360
      Y1              =   720
      Y2              =   4560
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      X1              =   1800
      X2              =   1800
      Y1              =   720
      Y2              =   4560
   End
   Begin VB.Menu top1 
      Caption         =   "Opções"
      Begin VB.Menu topmenu 
         Caption         =   "Menu Inicial"
      End
      Begin VB.Menu top2 
         Caption         =   "Novo jogo"
      End
      Begin VB.Menu top4 
         Caption         =   "Creditos"
      End
      Begin VB.Menu top3 
         Caption         =   "Sair"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim jogador As String
Dim jogador1 As String
Dim valor As Integer
Dim ganhou As Boolean
Dim cpuganhou As Boolean
Dim jogador2 As String


Private Sub lblgalo_Click(Index As Integer)
Dim x As Boolean
ganhou = False
cpuganhou = False
lblgalo(Index).Caption = jogador
lblgalo(Index).Enabled = False
x = testeganhou

If x = False Then
If cpu = True Then
    Do
        Randomize
        valor = Int(8 * Rnd) + 0
    Loop Until lblgalo(valor).Caption = ""
    
    If lblgalo(valor).Caption = "" Then
        lblgalo(valor).Caption = "O"
        lblgalo(valor).Enabled = False
    Else
        While lblgalo(valor).Caption <> ""
            Randomize
            valor = Int(8 * Rnd) + 0
        Wend
    End If
    x = testeganhou
End If
End If

End Sub

Private Sub top2_Click()
lblpontos1.Caption = "0"
lblpontos2.Caption = "0"
Txt1.Text = "Jogador1"
If cpu = False Then
Txt2.Text = "Jogador2"
Else
Txt2.Text = "CPU"
End If
For i = 0 To 8
lblgalo(i).Caption = ""
lblgalo(i).Enabled = True
Next i
jogador = "X"
vertical1.Visible = False
vertical2.Visible = False
vertical3.Visible = False
horizontal1.Visible = False
horizontal2.Visible = False
horizontal3.Visible = False
diagonal1.Visible = False
diagonal2.Visible = False
lblvez.Caption = lbljogador1.Caption
End Sub
Private Sub Top3_Click()
End
End Sub
Private Sub top4_Click()
Form2.Show
End Sub
Private Sub Form_Load()
lblvez.Caption = lbljogador1.Caption
lblpontos1.Caption = "0"
lblpontos2.Caption = "0"
lblinformacao.Caption = "JOGO DO GALO"
vertical1.Visible = False
vertical2.Visible = False
vertical3.Visible = False
horizontal1.Visible = False
horizontal2.Visible = False
horizontal3.Visible = False
diagonal1.Visible = False
diagonal2.Visible = False
Txt1.Text = "Jogador1"
Txt2.Text = "Jogador2"
jogador = "X"
lblvez.Caption = lbljogador1.Caption
End Sub

Private Sub topmenu_Click()
Form3.Show
Unload Me
End Sub

Private Sub Txt1_Change()
jogador1 = Txt1
lbljogador1 = jogador1
End Sub
Private Sub Txt2_Change()
jogador2 = Txt2
lbljogador2 = jogador2
End Sub
Private Sub limpeza()
For i = 0 To 8
lblgalo(i).Caption = ""
lblgalo(i).Enabled = True
Next i
jogador = "X"
vertical1.Visible = False
vertical2.Visible = False
vertical3.Visible = False
horizontal1.Visible = False
horizontal2.Visible = False
horizontal3.Visible = False
diagonal1.Visible = False
diagonal2.Visible = False
End Sub

Function testeganhou() As Boolean
If lblgalo(0).Caption = lblgalo(1).Caption And lblgalo(0).Caption = lblgalo(2).Caption And lblgalo(0).Caption <> "" Then
horizontal1.Visible = True
ganhou = True
ElseIf lblgalo(3).Caption = lblgalo(4).Caption And lblgalo(3).Caption = lblgalo(5).Caption And lblgalo(3).Caption <> "" Then
horizontal2.Visible = True
ganhou = True
ElseIf lblgalo(6).Caption = lblgalo(7).Caption And lblgalo(6).Caption = lblgalo(8).Caption And lblgalo(6).Caption <> "" Then
horizontal3.Visible = True
ganhou = True
ElseIf lblgalo(0).Caption = lblgalo(3).Caption And lblgalo(0).Caption = lblgalo(6).Caption And lblgalo(0).Caption <> "" Then
vertical1.Visible = True
ganhou = True
ElseIf lblgalo(1).Caption = lblgalo(4).Caption And lblgalo(1).Caption = lblgalo(7).Caption And lblgalo(1).Caption <> "" Then
vertical2.Visible = True
ganhou = True
ElseIf lblgalo(2).Caption = lblgalo(5).Caption And lblgalo(2).Caption = lblgalo(8).Caption And lblgalo(2).Caption <> "" Then
vertical3.Visible = True
ganhou = True
ElseIf lblgalo(0).Caption = lblgalo(4).Caption And lblgalo(0).Caption = lblgalo(8).Caption And lblgalo(0).Caption <> "" Then
diagonal1.Visible = True
ganhou = True
ElseIf lblgalo(2).Caption = lblgalo(4).Caption And lblgalo(2).Caption = lblgalo(6).Caption And lblgalo(2).Caption <> "" Then
diagonal2.Visible = True
ganhou = True
End If

If cpu = True Then
If lblgalo(0).Caption = lblgalo(1).Caption And lblgalo(0).Caption = lblgalo(2).Caption And lblgalo(0).Caption = "O" Then
horizontal1.Visible = True
cpuganhou = True
ElseIf lblgalo(3).Caption = lblgalo(4).Caption And lblgalo(3).Caption = lblgalo(5).Caption And lblgalo(3).Caption = "O" Then
horizontal2.Visible = True
cpuganhou = True
ElseIf lblgalo(6).Caption = lblgalo(7).Caption And lblgalo(6).Caption = lblgalo(8).Caption And lblgalo(6).Caption = "O" Then
horizontal3.Visible = True
cpuganhou = True
ElseIf lblgalo(0).Caption = lblgalo(3).Caption And lblgalo(0).Caption = lblgalo(6).Caption And lblgalo(0).Caption = "O" Then
vertical1.Visible = True
cpuganhou = True
ElseIf lblgalo(1).Caption = lblgalo(4).Caption And lblgalo(1).Caption = lblgalo(7).Caption And lblgalo(1).Caption = "O" Then
vertical2.Visible = True
cpuganhou = True
ElseIf lblgalo(2).Caption = lblgalo(5).Caption And lblgalo(2).Caption = lblgalo(8).Caption And lblgalo(2).Caption = "O" Then
vertical3.Visible = True
cpuganhou = True
ElseIf lblgalo(0).Caption = lblgalo(4).Caption And lblgalo(0).Caption = lblgalo(8).Caption And lblgalo(0).Caption = "O" Then
diagonal1.Visible = True
cpuganhou = True
ElseIf lblgalo(2).Caption = lblgalo(4).Caption And lblgalo(2).Caption = lblgalo(6).Caption And lblgalo(2).Caption = "O" Then
diagonal2.Visible = True
cpuganhou = True
End If


End If

If ganhou = False Then
    If lblgalo(0).Caption <> "" And lblgalo(1).Caption <> "" And lblgalo(2).Caption <> "" And lblgalo(3).Caption <> "" And lblgalo(4).Caption <> "" And lblgalo(5).Caption <> "" And lblgalo(6).Caption <> "" And lblgalo(7).Caption <> "" And lblgalo(8).Caption <> "" Then
        MsgBox "O jogo terminou empatado", 64, "Fim do jogo"
        Call limpeza
    End If
End If

If ganhou = True Then
If cpuganhou = False Then
    If jogador = "X" Then
        MsgBox "O jogo foi ganho pelo jogador " + jogador1, 64, "Fim do jogo"
        Call limpeza
        lblpontos1.Caption = Val(lblpontos1.Caption) + 1
    End If
    If jogador = "O" Then
        MsgBox "O jogo foi ganho pelo jogador " + jogador2, 64, "Fim do jogo"
        Call limpeza
        lblpontos2.Caption = Val(lblpontos2.Caption) + 1
    End If
End If
If cpuganhou = True Then
        MsgBox "O jogo foi ganho pelo " + jogador2, 64, "Fim do jogo"
        Call limpeza
        lblpontos2.Caption = Val(lblpontos2.Caption) + 1
End If
    testeganhou = True
Else
    If jogador = "X" Then
        If cpu = False Then
        lblvez.Caption = lbljogador2.Caption
        jogador = "O"
        Else
        jogador = "X"
        End If
    Else
        lblvez.Caption = lbljogador1.Caption
        jogador = "X"
    End If
    testeganhou = False
End If
End Function
