VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C00000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Cheque"
   ClientHeight    =   3420
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   9765
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3420
   ScaleWidth      =   9765
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txtordem 
      Height          =   285
      Left            =   1920
      TabIndex        =   10
      Top             =   1320
      Width           =   3735
   End
   Begin VB.TextBox txtlocal 
      Height          =   285
      Left            =   1920
      TabIndex        =   9
      Top             =   840
      Width           =   3735
   End
   Begin VB.CommandButton Btninfo 
      Caption         =   "Verificar"
      Height          =   375
      Left            =   8280
      TabIndex        =   8
      Top             =   2160
      Width           =   1095
   End
   Begin VB.TextBox txtnome 
      Height          =   285
      Left            =   1920
      MaxLength       =   46
      TabIndex        =   6
      Top             =   360
      Width           =   3735
   End
   Begin VB.TextBox txtdata 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   7440
      TabIndex        =   3
      Top             =   840
      Width           =   1815
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00C00000&
      Caption         =   "Extenso"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000A&
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   2040
      Width           =   1935
   End
   Begin VB.TextBox txtextenso 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   360
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   2880
      Width           =   9135
   End
   Begin VB.TextBox txtvalor 
      Alignment       =   1  'Right Justify
      Height          =   285
      Left            =   7440
      MaxLength       =   7
      TabIndex        =   0
      Top             =   360
      Width           =   1815
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C00000&
      Caption         =   "Label5"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000A&
      Height          =   375
      Left            =   240
      TabIndex        =   12
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label Label4 
      BackColor       =   &H00C00000&
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000A&
      Height          =   375
      Left            =   240
      TabIndex        =   11
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C00000&
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000A&
      Height          =   375
      Left            =   240
      TabIndex        =   7
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C00000&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000A&
      Height          =   255
      Left            =   6120
      TabIndex        =   5
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C00000&
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000A&
      Height          =   255
      Left            =   6120
      TabIndex        =   4
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim euro As String
Dim valor2 As String
Dim nome As String
Dim euros As String
Dim data As String
Dim ordem As String
Dim local1 As String
Dim valor As Long
Private Sub btninfo_Click()
If valor <= 0 Then MsgBox "Escolha o valor do cheque primeiro", 64, "Informação" Else If nome = "" Then MsgBox "Insira o seu nome", 64, "Informação" Else If Val(txtnome) <> 0 Then MsgBox "O nome não pode ter numeros", 64, "Informação" Else If local1 = "" Then MsgBox "Escolha o local de emissão", 64, "Informação" Else If ordem = "" Then MsgBox "Escolha tambem a quem vai ser passado o cheque", 64, "informação" Else If data = "" Then MsgBox "Escolha a data", 64, "Informação" Else If Val(local1) <> 0 Then MsgBox "O local não pode ter numeros", 64, "Informação" Else If nome & local1 & ordem <> "" Then MsgBox "Este cheque foi passado por " + nome + " com o valor de " + valor2 + " na data de " + data + " em " + local1 + " á ordem de " + ordem, 64, "Informação"
End Sub
Private Sub Check1_Click()
If Me.Height < 3500 Then Me.Height = 4000 Else Me.Height = 3000
If Form1.Caption = "Cheque" Then Form1.Caption = "Cheque - Extenso" Else Form1.Caption = "Cheque"
End Sub
Private Sub Form_Load()
Me.Height = 3000
Check1.Enabled = False
Label1 = "Valor(€)"
Label2 = "Data"
Label3 = "Nome"
Label4 = "Local"
Label5 = "Á ordem de"
End Sub

Private Sub txtdata_Change()
data = Format(txtdata, "Long Date")
End Sub

Private Sub txtdata_Click()
txtdata = Date
data = Format(txtdata, "Long Date")
End Sub

Private Sub txtlocal_Change()
local1 = txtlocal
End Sub

Private Sub Txtnome_Change()
nome = txtnome
End Sub

Private Sub txtordem_Change()
ordem = txtordem
End Sub

Private Sub txtvalor_change()
valor = Val(txtvalor)
milhoes = valor \ 1000000
resto = valor Mod 1000000
Select Case milhoes
Case 1: txtextenso = "um milhao"
    If resto = 0 Then txtextenso = "um milhao de"
Case 2: txtextenso = "dois milhoes"
    If resto = 0 Then txtextenso = "dois milhoes de"
Case 3: txtextenso = "tres milhoes"
    If resto = 0 Then txtextenso = "tres milhoes de"
Case 4: txtextenso = "quatro milhoes"
    If resto = 0 Then txtextenso = "quatro milhoes de"
Case 5: txtextenso = "cinco milhoes"
    If resto = 0 Then txtextenso = "cinco milhoes de"
Case 6: txtextenso = "seis milhoes"
    If resto = 0 Then txtextenso = "seis milhoes de"
Case 7: txtextenso = "sete milhoes"
    If resto = 0 Then txtextenso = "sete milhoes de"
Case 8: txtextenso = "oito milhoes"
    If resto = 0 Then txtextenso = "oito milhoes de"
Case 9: txtextenso = "nove milhoes"
    If resto = 0 Then txtextenso = "nove milhoes de"
End Select
If resto >= 1000 Then txtextenso = txtextenso + " e "
centenasmilhar = resto \ 100000
resto = resto Mod 100000
Select Case centenasmilhar
Case 1:
If valor < 1000000 Then
    If valor Mod 10000 < 1000 Then
    txtextenso = "cem"
    Else
    txtextenso = "cento"
    End If
End If
If valor > 1000000 Then
    If resto < 1000 Then
    txtextenso = txtextenso + "cem"
    Else
    txtextenso = txtextenso + "cento"
    End If
End If
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
Case 2: txtextenso = txtextenso + "duzentos"
    If valor < 1000000 Then txtextenso = "duzentos"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
Case 3: txtextenso = txtextenso + "trezentos"
    If valor < 1000000 Then txtextenso = "trezentos"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
Case 4: txtextenso = txtextenso + "quatrocentos"
    If valor < 1000000 Then txtextenso = "quatrocentos"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
Case 5: txtextenso = txtextenso + "quinhentos"
    If valor < 1000000 Then txtextenso = "quinhentos"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
Case 6: txtextenso = txtextenso + "seiscentos"
    If valor < 1000000 Then txtextenso = "seiscentos"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
Case 7: txtextenso = txtextenso + "setecentos"
    If valor < 1000000 Then txtextenso = "setecentos"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
Case 8: txtextenso = txtextenso + "oitocentos"
    If valor < 1000000 Then txtextenso = "oitocentos"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
Case 9: txtextenso = txtextenso + "novecentos"
    If valor < 1000000 Then txtextenso = "novecentos"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
    If resto < 1000 Then txtextenso = txtextenso + " mil"
End Select
dezenasmilhar = resto \ 10000
resto = resto Mod 10000
Select Case dezenasmilhar
Case 2: txtextenso = txtextenso + "vinte"
    If valor < 100000 Then txtextenso = "vinte"
    If resto < 1000 Then txtextenso = txtextenso + " mil"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
Case 3: txtextenso = txtextenso + "trinta"
    If valor < 100000 Then txtextenso = "trinta"
    If resto < 1000 Then txtextenso = txtextenso + " mil"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
Case 4: txtextenso = txtextenso + "quarenta"
    If valor < 100000 Then txtextenso = "quarenta"
    If resto < 1000 Then txtextenso = txtextenso + " mil"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
Case 5: txtextenso = txtextenso + "cinquenta"
    If valor < 100000 Then txtextenso = "cinquenta"
    If resto < 1000 Then txtextenso = txtextenso + " mil"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
Case 6: txtextenso = txtextenso + "sessenta"
    If valor < 100000 Then txtextenso = "sessenta"
    If resto < 1000 Then txtextenso = txtextenso + " mil"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
Case 7: txtextenso = txtextenso + "setenta"
    If valor < 100000 Then txtextenso = "setenta"
    If resto < 1000 Then txtextenso = txtextenso + " mil"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
Case 8: txtextenso = txtextenso + "oitenta"
    If valor < 100000 Then txtextenso = "oitenta"
    If resto < 1000 Then txtextenso = txtextenso + " mil"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
Case 9: txtextenso = txtextenso + "noventa"
    If valor < 100000 Then txtextenso = "noventa"
    If resto < 1000 Then txtextenso = txtextenso + " mil"
    If resto >= 1000 Then txtextenso = txtextenso + " e "
End Select
If valor >= 1000000 Then txtextenso = txtextenso
unidadesmilhar = resto \ 1000
resto = resto Mod 1000
If dezenasmilhar = 1 Then
Select Case unidadesmilhar
    Case 0: txtextenso = txtextenso + "dez"
        If valor < 100000 Then txtextenso = "dez"
        txtextenso = txtextenso + " mil"
    Case 1: txtextenso = txtextenso + "onze"
        If valor < 100000 Then txtextenso = "onze"
        txtextenso = txtextenso + " mil"
    Case 2: txtextenso = txtextenso + "doze"
        If valor < 100000 Then txtextenso = "doze"
        txtextenso = txtextenso + " mil"
    Case 3: txtextenso = txtextenso + "treze"
        If valor < 100000 Then txtextenso = "treze"
        txtextenso = txtextenso + " mil"
    Case 4: txtextenso = txtextenso + "catorze"
        If valor < 100000 Then txtextenso = "catorze"
        txtextenso = txtextenso + " mil"
    Case 5: txtextenso = txtextenso + "quinze"
        If valor < 100000 Then txtextenso = "quinze"
        txtextenso = txtextenso + " mil"
    Case 6: txtextenso = txtextenso + "dezasseis"
        If valor < 100000 Then txtextenso = "dezasseis"
        txtextenso = txtextenso + " mil"
    Case 7: txtextenso = txtextenso + "dezassete"
        If valor < 100000 Then txtextenso = "dezassete"
        txtextenso = txtextenso + " mil"
    Case 8: txtextenso = txtextenso + "dezoito"
        If valor < 100000 Then txtextenso = "dezoito"
        txtextenso = txtextenso + " mil"
    Case 9: txtextenso = txtextenso + "dezanove"
        If valor < 100000 Then txtextenso = "dezanove"
        txtextenso = txtextenso + " mil"
    End Select
    Else
Select Case unidadesmilhar
    Case 1:
If valor >= 1000000 Then
        If valor Mod 1000000 >= 10000 Then txtextenso = txtextenso + "um "
        If valor Mod 10000 < 2000 Then txtextenso = txtextenso + "mil"
End If
If valor < 1000000 Then
        If valor > 20000 Then txtextenso = txtextenso + "um "
        If valor > 10000 Then txtextenso = txtextenso + "mil"
        If valor < 10000 Then txtextenso = "mil"
End If
    Case 2: txtextenso = txtextenso + "dois"
        If valor < 10000 Then txtextenso = "dois"
        txtextenso = txtextenso + " mil"
    Case 3: txtextenso = txtextenso + "tres"
        If valor < 10000 Then txtextenso = "tres"
        txtextenso = txtextenso + " mil"
    Case 4: txtextenso = txtextenso + "quatro"
        If valor < 10000 Then txtextenso = "quatro"
        txtextenso = txtextenso + " mil"
    Case 5: txtextenso = txtextenso + "cinco"
        If valor < 10000 Then txtextenso = "cinco"
        txtextenso = txtextenso + " mil"
    Case 6: txtextenso = txtextenso + "seis"
        If valor < 10000 Then txtextenso = "seis"
        txtextenso = txtextenso + " mil"
    Case 7: txtextenso = txtextenso + "sete"
        If valor < 10000 Then txtextenso = "sete"
        txtextenso = txtextenso + " mil"
    Case 8: txtextenso = txtextenso + "oito"
        If valor < 10000 Then txtextenso = "oito"
        txtextenso = txtextenso + " mil"
    Case 9: txtextenso = txtextenso + "nove"
        If valor < 10000 Then txtextenso = "nove"
        txtextenso = txtextenso + " mil"
End Select
End If
If valor >= 1000 Then txtextenso = txtextenso + " "
centenas = resto \ 100
resto = resto Mod 100
Select Case centenas
Case 1:
If valor < 1000 Then
    If resto = 0 Then
    txtextenso = "cem"
    Else
    txtextenso = "cento"
    End If
End If
If valor > 1000 Then
    If resto = 0 Then
    txtextenso = txtextenso + "e cem"
    Else
    txtextenso = txtextenso + "cento"
    End If
End If
Case 2: txtextenso = txtextenso + "e duzentos"
    If valor < 1000 Then txtextenso = "duzentos"
Case 3: txtextenso = txtextenso + "e trezentos"
    If valor < 1000 Then txtextenso = "trezentos"
Case 4: txtextenso = txtextenso + "e quatrocentos"
    If valor < 1000 Then txtextenso = "quatrocentos"
Case 5: txtextenso = txtextenso + "e quinhentos"
    If valor < 1000 Then txtextenso = "quinhentos"
Case 6: txtextenso = txtextenso + "e seiscentos"
    If valor < 1000 Then txtextenso = "seiscentos"
Case 7: txtextenso = txtextenso + "e setecentos"
    If valor < 1000 Then txtextenso = "setecentos"
Case 8: txtextenso = txtextenso + "e oitocentos"
    If valor < 1000 Then txtextenso = "oitocentos"
Case 9: txtextenso = txtextenso + "e novecentos"
    If valor < 1000 Then txtextenso = "novecentos"
End Select
If resto >= 20 Then
txtextenso = txtextenso + " e "
Else
If resto = 10 Then
txtextenso = txtextenso + " e "
End If
End If
dezenas = resto \ 10
resto = resto Mod 10
Select Case dezenas
Case 2: txtextenso = txtextenso + "vinte"
    If valor < 100 Then txtextenso = "vinte"
Case 3: txtextenso = txtextenso + "trinta"
    If valor < 100 Then txtextenso = "trinta"
Case 4: txtextenso = txtextenso + "quarenta"
    If valor < 100 Then txtextenso = "quarenta"
Case 5: txtextenso = txtextenso + "cinquenta"
    If valor < 100 Then txtextenso = "cinquenta"
Case 6: txtextenso = txtextenso + "sessenta"
    If valor < 100 Then txtextenso = "sessenta"
Case 7: txtextenso = txtextenso + "setenta"
    If valor < 100 Then txtextenso = "setenta"
Case 8: txtextenso = txtextenso + "oitenta"
    If valor < 100 Then txtextenso = "oitenta"
Case 9: txtextenso = txtextenso + "noventa"
    If valor < 100 Then txtextenso = "noventa"
End Select
unidades = resto \ 1
resto = resto Mod 1
If valor Mod 10 = 0 Then
txtextenso = txtextenso
Else
txtextenso = txtextenso + " e "
End If
If dezenas = 1 Then
Select Case unidades
    Case 0: txtextenso = txtextenso + "dez"
        If valor < 20 Then txtextenso = "dez"
    Case 1: txtextenso = txtextenso + "onze"
        If valor < 20 Then txtextenso = "onze"
    Case 2: txtextenso = txtextenso + "doze"
        If valor < 20 Then txtextenso = "doze"
    Case 3: txtextenso = txtextenso + "treze"
        If valor < 20 Then txtextenso = "treze"
    Case 4: txtextenso = txtextenso + "catorze"
        If valor < 20 Then txtextenso = "catorze"
    Case 5: txtextenso = txtextenso + "quinze"
        If valor < 20 Then txtextenso = "quinze"
    Case 6: txtextenso = txtextenso + "dezasseis"
        If valor < 20 Then txtextenso = "dezasseis"
    Case 7: txtextenso = txtextenso + "dezassete"
        If valor < 20 Then txtextenso = "dezassete"
    Case 8: txtextenso = txtextenso + "dezoito"
        If valor < 20 Then txtextenso = "dezoito"
    Case 9: txtextenso = txtextenso + "dezanove"
        If valor < 20 Then txtextenso = "dezanove"
    End Select
Else
    Select Case unidades
    Case 1: txtextenso = txtextenso + "um"
        If valor < 10 Then txtextenso = "um euro"
    Case 2: txtextenso = txtextenso + "dois"
        If valor < 10 Then txtextenso = "dois"
    Case 3: txtextenso = txtextenso + "tres"
        If valor < 10 Then txtextenso = "tres"
    Case 4: txtextenso = txtextenso + "quatro"
        If valor < 10 Then txtextenso = "quatro"
    Case 5: txtextenso = txtextenso + "cinco"
        If valor < 10 Then txtextenso = "cinco"
    Case 6: txtextenso = txtextenso + "seis"
        If valor < 10 Then txtextenso = "seis"
    Case 7: txtextenso = txtextenso + "sete"
        If valor < 10 Then txtextenso = "sete"
    Case 8: txtextenso = txtextenso + "oito"
        If valor < 10 Then txtextenso = "oito"
    Case 9: txtextenso = txtextenso + "nove"
        If valor < 10 Then txtextenso = "nove"
    End Select
End If
If valor >= 2 Then txtextenso = txtextenso + " euros"
If txtvalor = "" Then txtextenso = "" Else If Val(txtvalor) = 0 Then txtextenso = "" Else If Val(txtvalor) < 0 Then txtextenso = "Não pode passar o cheque com valor negativo... Isso é que era bom!"
valor2 = txtextenso
Check1.Enabled = True
End Sub
