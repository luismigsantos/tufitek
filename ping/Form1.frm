VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "CMDPING"
   ClientHeight    =   2505
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   4515
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2505
   ScaleWidth      =   4515
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command4 
      Caption         =   "Ping localhost"
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   1680
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Exit"
      Height          =   255
      Left            =   3600
      TabIndex        =   6
      Top             =   1920
      Width           =   735
   End
   Begin VB.CommandButton Command2 
      Caption         =   "About"
      Height          =   255
      Left            =   2760
      TabIndex        =   5
      Top             =   1920
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   240
      MaxLength       =   3
      TabIndex        =   4
      Top             =   360
      Width           =   735
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1320
      MaxLength       =   3
      TabIndex        =   3
      Top             =   360
      Width           =   735
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   2400
      MaxLength       =   3
      TabIndex        =   2
      Top             =   360
      Width           =   735
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   3480
      MaxLength       =   3
      TabIndex        =   1
      Top             =   360
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ping"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   1080
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Byte
Dim b As Byte
Dim c As Byte
Dim d As Byte

Private Sub Command1_Click()
Shell "ping -t " & a & "." & b & "." & c & "." & d, 1
End Sub

Private Sub Command2_Click()
frmAbout.Show
End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub Command4_Click()
Shell "ping -t localhost", 1
End Sub

Private Sub Text1_Change()
On Error GoTo nabo
a = CByte(Text1.Text)
Exit Sub
nabo:
Text1.Text = ""
End Sub

Private Sub Text2_Change()
On Error GoTo nabo
b = CByte(Text2.Text)
Exit Sub
nabo:  Text2.Text = ""
End Sub

Private Sub Text3_Change()
On Error GoTo nabo
c = CByte(Text3.Text)
Exit Sub
nabo: Text3.Text = ""
End Sub

Private Sub Text4_Change()
On Error GoTo nabo
d = CByte(Text4.Text)
Exit Sub
nabo:  Text4.Text = ""
End Sub

