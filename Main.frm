VERSION 5.00
Begin VB.Form frmCover 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   1695
   ClientLeft      =   2010
   ClientTop       =   2430
   ClientWidth     =   3735
   ControlBox      =   0   'False
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   113
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   249
   ShowInTaskbar   =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Place your Screensaver here."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3735
   End
End
Attribute VB_Name = "frmCover"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Form_Click()
    If RunMode = rmScreenSaver Then Unload Me
End Sub

Private Sub Form_DblClick()
    If RunMode = rmScreenSaver Then Unload Me
End Sub


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If RunMode = rmScreenSaver Then Unload Me
End Sub


Private Sub Form_KeyPress(KeyAscii As Integer)
    If RunMode = rmScreenSaver Then Unload Me
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If RunMode = rmScreenSaver Then Unload Me
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Static x0 As Integer
Static y0 As Integer
    If RunMode <> rmScreenSaver Then Exit Sub


    If ((x0 = 0) And (y0 = 0)) Or _
        ((Abs(x0 - X) < 5) And (Abs(y0 - Y) < 5)) _
        Then
            x0 = X
            y0 = Y
            Exit Sub
    End If

    Unload Me
End Sub
Private Sub Form_Unload(Cancel As Integer)
    If RunMode = rmScreenSaver Then ShowCursor True
End Sub

Private Sub Label1_Click()

End Sub
