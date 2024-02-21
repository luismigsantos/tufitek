VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H80000007&
   Caption         =   "Trabalho realizado por:"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Voltar"
      Height          =   375
      Left            =   1920
      TabIndex        =   2
      Top             =   2400
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   840
      TabIndex        =   1
      Top             =   1680
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   600
      Width           =   2895
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Text1.Text = "Samuel Gorito"
Text2.Text = "Miguel Santos"
End Sub

