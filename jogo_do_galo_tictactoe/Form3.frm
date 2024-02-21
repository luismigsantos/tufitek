VERSION 5.00
Object = "{D27CDB6B-AE6D-11CF-96B8-444553540000}#1.0#0"; "FLASH.OCX"
Begin VB.Form Form3 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Jogo do galo I.M. 2005"
   ClientHeight    =   4950
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   7440
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4950
   ScaleWidth      =   7440
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command1 
      Caption         =   "Jogar!"
      Height          =   375
      Left            =   5280
      TabIndex        =   3
      Top             =   2520
      Width           =   975
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00000000&
      Caption         =   "Jogador VS Jogador"
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   1080
      TabIndex        =   2
      Top             =   3000
      Width           =   2055
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00000000&
      Caption         =   "Jogador VS CPU"
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   1080
      TabIndex        =   1
      Top             =   1920
      Width           =   2055
   End
   Begin ShockwaveFlashObjectsCtl.ShockwaveFlash ShockwaveFlash1 
      Height          =   1215
      Left            =   960
      TabIndex        =   0
      Top             =   240
      Width           =   5415
      _cx             =   4203855
      _cy             =   4196447
      FlashVars       =   ""
      Movie           =   "c:\test.swf"
      Src             =   "c:\test.swf"
      WMode           =   "Window"
      Play            =   0   'False
      Loop            =   -1  'True
      Quality         =   "High"
      SAlign          =   ""
      Menu            =   -1  'True
      Base            =   ""
      AllowScriptAccess=   "always"
      Scale           =   "ShowAll"
      DeviceFont      =   0   'False
      EmbedMovie      =   0   'False
      BGColor         =   ""
      SWRemote        =   ""
      MovieData       =   ""
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Option1.Value = True Then
cpu = True
Form1!Txt2.Text = "CPU"
Form1!Txt2.Visible = False
Form1!Label2.Visible = False
Form1!lblo.Visible = False
End If
If Option2.Value = True Then
cpu = False
Form1!Txt2.Text = "Jogador2"
End If
Form1.Show
Unload Me
End Sub
Private Sub Form_Load()
Option1.Value = True
ShockwaveFlash1.Base = App.Path & "\test.swf"
End Sub

