VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Calculadora"
   ClientHeight    =   3105
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   3690
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3105
   ScaleWidth      =   3690
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton btnigual 
      Caption         =   "="
      Height          =   495
      Left            =   3000
      TabIndex        =   20
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton btnsubtrair 
      Caption         =   "-"
      Height          =   495
      Left            =   2280
      TabIndex        =   19
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton btnvirgula 
      Caption         =   "."
      Height          =   495
      Left            =   1560
      TabIndex        =   18
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton btnmaismenos 
      Caption         =   "+/-"
      Height          =   495
      Left            =   840
      TabIndex        =   17
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton btn0 
      Caption         =   "0"
      Height          =   495
      Left            =   120
      TabIndex        =   16
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton btnumsobre 
      Caption         =   "1/x"
      Height          =   495
      Left            =   3000
      TabIndex        =   15
      Top             =   1920
      Width           =   615
   End
   Begin VB.CommandButton btnsomar 
      Caption         =   "+"
      Height          =   495
      Left            =   2280
      TabIndex        =   14
      Top             =   1920
      Width           =   615
   End
   Begin VB.CommandButton btn3 
      Caption         =   "3"
      Height          =   495
      Left            =   1560
      TabIndex        =   13
      Top             =   1920
      Width           =   615
   End
   Begin VB.CommandButton btn2 
      Caption         =   "2"
      Height          =   495
      Left            =   840
      TabIndex        =   12
      Top             =   1920
      Width           =   615
   End
   Begin VB.CommandButton btn1 
      Caption         =   "1"
      Height          =   495
      Left            =   120
      TabIndex        =   11
      Top             =   1920
      Width           =   615
   End
   Begin VB.CommandButton btnraiz 
      Caption         =   "SQR"
      Height          =   495
      Left            =   3000
      TabIndex        =   10
      Top             =   1320
      Width           =   615
   End
   Begin VB.CommandButton btnmultiplicar 
      Caption         =   "*"
      Height          =   495
      Left            =   2280
      TabIndex        =   9
      Top             =   1320
      Width           =   615
   End
   Begin VB.CommandButton btn6 
      Caption         =   "6"
      Height          =   495
      Left            =   1560
      TabIndex        =   8
      Top             =   1320
      Width           =   615
   End
   Begin VB.CommandButton btn5 
      Caption         =   "5"
      Height          =   495
      Left            =   840
      TabIndex        =   7
      Top             =   1320
      Width           =   615
   End
   Begin VB.CommandButton btn4 
      Caption         =   "4"
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   1320
      Width           =   615
   End
   Begin VB.CommandButton btnlimpar 
      Caption         =   "C"
      Height          =   495
      Left            =   3000
      TabIndex        =   5
      Top             =   720
      Width           =   615
   End
   Begin VB.CommandButton btndividir 
      Caption         =   "/"
      Height          =   495
      Left            =   2280
      TabIndex        =   4
      Top             =   720
      Width           =   615
   End
   Begin VB.CommandButton btn9 
      Caption         =   "9"
      Height          =   495
      Left            =   1560
      TabIndex        =   3
      Top             =   720
      Width           =   615
   End
   Begin VB.CommandButton btn8 
      Caption         =   "8"
      Height          =   495
      Left            =   840
      TabIndex        =   2
      Top             =   720
      Width           =   615
   End
   Begin VB.CommandButton btn7 
      Caption         =   "7"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   615
   End
   Begin VB.TextBox txtresultado 
      Alignment       =   1  'Right Justify
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3495
   End
   Begin VB.Menu Sobre 
      Caption         =   "Sobre"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim operador As String
Dim ponto As Integer
Dim valor As Long

Private Sub btn0_Click()
If txtresultado = "0" Then
txtresultado = txtresultado + ","
Else
txtresultado = txtresultado + "0"
End If
End Sub

Private Sub btn1_Click()
If txtresultado = "0" Then
txtresultado = "1"
Else
txtresultado = txtresultado + "1"
End If
End Sub

Private Sub btn2_Click()
If txtresultado = "0" Then
txtresultado = "2"
Else
txtresultado = txtresultado + "2"
End If
End Sub

Private Sub btn3_Click()
If txtresultado = "0" Then
txtresultado = "3"
Else
txtresultado = txtresultado + "3"
End If
End Sub

Private Sub btn4_Click()
If txtresultado = "0" Then
txtresultado = "4"
Else
txtresultado = txtresultado + "4"
End If
End Sub

Private Sub btn5_Click()
If txtresultado = "0" Then
txtresultado = "5"
Else
txtresultado = txtresultado + "5"
End If
End Sub

Private Sub btn6_Click()
If txtresultado = "0" Then
txtresultado = "6"
Else
txtresultado = txtresultado + "6"
End If
End Sub

Private Sub btn7_Click()
If txtresultado = "0" Then
txtresultado = "7"
Else
txtresultado = txtresultado + "7"
End If
End Sub

Private Sub btn8_Click()
If txtresultado = "0" Then
txtresultado = "8"
Else
txtresultado = txtresultado + "8"
End If
End Sub

Private Sub btn9_Click()
If txtresultado = "0" Then
txtresultado = "9"
Else
txtresultado = txtresultado + "9"
End If
End Sub

Private Sub btndividir_Click()
operador = "/"
valor = Val(txtresultado)
txtresultado = ""
ponto = 0
End Sub

Private Sub btnigual_Click()
If txtresultado = "" Then
MsgBox "Escolha os valores", 64, "Informação"
Else
Select Case operador
    Case "/":
        'txtresultado = valor / txtresultado
        
            If Val(txtresultado) = 0 Then
                MsgBox "Impossivel dividir por zero", 64, "Informação"
                Else
                txtresultado = valor / Val(txtresultado)
                
                End If
                
    Case "+":
            txtresultado = valor + Val(txtresultado)
    Case "-":
            txtresultado = valor - Val(txtresultado)
    Case "*":
            txtresultado = valor * Val(txtresultado)
End Select
End If
End Sub

Private Sub btnlimpar_Click()
txtresultado = "0"
ponto = 0
End Sub

Private Sub btnmaismenos_Click()
If txtresultado = txtresultado Then
    txtresultado = -txtresultado
    Else
    If txtresultado = -txtresultado Then
    txtresultado = txtresultado
    End If
End If

End Sub

Private Sub btnmultiplicar_Click()
operador = "*"
valor = Val(txtresultado)
txtresultado = ""
ponto = 0
End Sub

Private Sub btnraiz_Click()
If txtresultado = "0" Then
MsgBox "Impossivel fazer raiz quadrada", 64, "Informação"
Else
If txtresultado < "0" Then
MsgBox "Impossivel fazer raiz quadrada", 64, "Informação"
Else
txtresultado = Sqr(Val(txtresultado))
End If
End If
End Sub

Private Sub btnsomar_Click()
    operador = "+"
    valor = Val(txtresultado)
    txtresultado = ""
ponto = 0
End Sub

Private Sub btnsubtrair_Click()
operador = "-"
valor = Val(txtresultado)
txtresultado = ""
ponto = 0
End Sub

Private Sub btnumsobre_Click()
If txtresultado = 0 Then
MsgBox "Impossivel Dividir por zero (?!)", 64, "Informação"
Else
txtresultado = 1 / (Val(txtresultado))
End If
End Sub

Private Sub btnvirgula_Click()
If ponto = 0 Then
txtresultado = txtresultado + ","
ponto = 1
End If
If ponto = 1 Then
txtresultado = txtresultado
End If
End Sub

Private Sub Form_Load()
txtresultado = "0"
ponto = 0
End Sub

Private Sub Sobre_Click()
Form2.Show
End Sub
