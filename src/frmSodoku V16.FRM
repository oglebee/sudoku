VERSION 5.00
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0C0C0&
   Caption         =   "Form1"
   ClientHeight    =   12210
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13155
   BeginProperty Font 
      Name            =   "Courier New"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   12210
   ScaleWidth      =   13155
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btn_UndoBookmark 
      Caption         =   "Undo to  BookMark"
      Height          =   540
      Left            =   9915
      TabIndex        =   219
      Top             =   2745
      Width           =   1200
   End
   Begin VB.CommandButton btn_Bookmark 
      Caption         =   "Bookmark"
      Height          =   435
      Left            =   8040
      TabIndex        =   218
      Top             =   1629
      Width           =   1005
   End
   Begin VB.Frame Frame2 
      Caption         =   "Block Sequence"
      Height          =   780
      Left            =   8235
      TabIndex        =   214
      Top             =   3525
      Width           =   3180
      Begin VB.OptionButton Option5 
         Caption         =   "High"
         Height          =   255
         Left            =   2235
         TabIndex        =   217
         Top             =   315
         Width           =   945
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Low"
         Height          =   300
         Left            =   1350
         TabIndex        =   216
         Top             =   315
         Value           =   -1  'True
         Width           =   1380
      End
      Begin VB.OptionButton Option3 
         Caption         =   "1,2,3"
         Height          =   315
         Left            =   270
         TabIndex        =   215
         Top             =   315
         Width           =   825
      End
   End
   Begin VB.TextBox txtTotalIterations 
      Alignment       =   2  'Center
      Height          =   315
      Left            =   6960
      TabIndex        =   211
      Top             =   2835
      Width           =   1380
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Unlimited"
      Height          =   375
      Index           =   1
      Left            =   6705
      TabIndex        =   207
      Top             =   4110
      Width           =   1320
   End
   Begin VB.OptionButton Option2 
      Caption         =   "4-28"
      Height          =   375
      Index           =   0
      Left            =   5520
      TabIndex        =   206
      Top             =   4035
      Value           =   -1  'True
      Width           =   945
   End
   Begin VB.TextBox txtDebug 
      Height          =   2160
      Index           =   2
      Left            =   5730
      MaxLength       =   65000
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   205
      Top             =   9735
      Width           =   6870
   End
   Begin VB.TextBox txtDebug 
      Height          =   2160
      Index           =   1
      Left            =   5730
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   204
      Top             =   7500
      Width           =   6870
   End
   Begin VB.TextBox txtTimeElapsed 
      Alignment       =   2  'Center
      Height          =   315
      Left            =   8355
      TabIndex        =   201
      Top             =   2835
      Width           =   1245
   End
   Begin VB.TextBox txtBlockCount 
      Alignment       =   2  'Center
      Height          =   315
      Left            =   6195
      TabIndex        =   200
      Top             =   2835
      Width           =   750
   End
   Begin VB.TextBox txtRowCount 
      Alignment       =   2  'Center
      Height          =   315
      Left            =   5430
      TabIndex        =   199
      Top             =   2835
      Width           =   750
   End
   Begin VB.TextBox txtSolution 
      Alignment       =   2  'Center
      Height          =   2445
      Left            =   5415
      MultiLine       =   -1  'True
      TabIndex        =   197
      Top             =   75
      Width           =   2445
   End
   Begin VB.CommandButton btn_Populate 
      Caption         =   "Populate"
      Height          =   435
      Left            =   8040
      TabIndex        =   196
      Top             =   135
      Width           =   1005
   End
   Begin VB.CommandButton btn_Solve 
      Caption         =   "Solve"
      Height          =   435
      Left            =   8040
      TabIndex        =   195
      Top             =   633
      Width           =   1005
   End
   Begin VB.TextBox txtDebug 
      Height          =   2160
      Index           =   0
      Left            =   5730
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   194
      Top             =   5265
      Width           =   6870
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   8
      Left            =   4650
      MultiLine       =   -1  'True
      TabIndex        =   193
      Top             =   10695
      Width           =   465
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   7
      Left            =   4170
      MultiLine       =   -1  'True
      TabIndex        =   192
      Top             =   10695
      Width           =   465
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   6
      Left            =   3690
      MultiLine       =   -1  'True
      TabIndex        =   191
      Top             =   10695
      Width           =   465
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   5
      Left            =   3150
      MultiLine       =   -1  'True
      TabIndex        =   190
      Top             =   10695
      Width           =   465
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   4
      Left            =   2670
      MultiLine       =   -1  'True
      TabIndex        =   189
      Top             =   10695
      Width           =   465
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   3
      Left            =   2190
      MultiLine       =   -1  'True
      TabIndex        =   188
      Top             =   10695
      Width           =   465
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   2
      Left            =   1650
      MultiLine       =   -1  'True
      TabIndex        =   187
      Top             =   10710
      Width           =   465
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   1
      Left            =   1170
      MultiLine       =   -1  'True
      TabIndex        =   186
      Top             =   10710
      Width           =   465
   End
   Begin VB.TextBox txtCol 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   0
      Left            =   690
      MultiLine       =   -1  'True
      TabIndex        =   185
      Top             =   10710
      Width           =   465
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   8
      Left            =   3690
      TabIndex        =   184
      Top             =   7230
      Width           =   1425
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   7
      Left            =   2190
      TabIndex        =   183
      Top             =   7230
      Width           =   1425
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   6
      Left            =   690
      TabIndex        =   182
      Top             =   7230
      Width           =   1425
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   5
      Left            =   3690
      TabIndex        =   181
      Top             =   3690
      Width           =   1425
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   4
      Left            =   2190
      TabIndex        =   180
      Top             =   3690
      Width           =   1425
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   3
      Left            =   690
      TabIndex        =   179
      Top             =   3690
      Width           =   1425
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   2
      Left            =   3690
      TabIndex        =   178
      Top             =   120
      Width           =   1425
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   1
      Left            =   2190
      TabIndex        =   177
      Top             =   120
      Width           =   1425
   End
   Begin VB.TextBox txtGrid 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   315
      Index           =   0
      Left            =   690
      TabIndex        =   176
      Top             =   120
      Width           =   1425
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   8
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   175
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   7
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   174
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   6
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   173
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   5
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   172
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   4
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   171
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   3
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   170
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   2
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   169
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   1
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   168
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox txtRow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H000000C0&
      Height          =   690
      Index           =   0
      Left            =   165
      MultiLine       =   -1  'True
      TabIndex        =   167
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.CommandButton btn_Start 
      Caption         =   "Seed"
      Height          =   435
      Left            =   8040
      TabIndex        =   165
      Top             =   1131
      Width           =   1005
   End
   Begin VB.CommandButton btn_Undo 
      Caption         =   "Undo Last Move"
      Height          =   540
      Left            =   11355
      TabIndex        =   164
      Top             =   2745
      Width           =   1200
   End
   Begin VB.TextBox tHistory 
      Height          =   2190
      Left            =   9870
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   163
      Top             =   465
      Width           =   2685
   End
   Begin VB.CommandButton btn_Reset 
      Caption         =   "Reset"
      Height          =   435
      Left            =   8040
      TabIndex        =   162
      Top             =   2130
      Width           =   1005
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   72
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   161
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   63
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   160
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   54
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   159
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   45
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   158
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   36
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   157
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   27
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   156
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   18
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   155
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   9
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   154
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   72
      Left            =   690
      TabIndex        =   72
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   63
      Left            =   690
      TabIndex        =   63
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   54
      Left            =   690
      TabIndex        =   54
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   45
      Left            =   690
      TabIndex        =   45
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   36
      Left            =   690
      TabIndex        =   36
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   27
      Left            =   690
      TabIndex        =   27
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   18
      Left            =   690
      TabIndex        =   18
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   9
      Left            =   690
      TabIndex        =   9
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   0
      Left            =   690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   153
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BeginProperty DataFormat 
         Type            =   0
         Format          =   "0"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   0
      Left            =   690
      TabIndex        =   0
      Top             =   1110
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   80
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   152
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   79
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   151
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   78
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   150
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   77
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   149
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   76
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   148
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   75
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   147
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   74
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   146
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   73
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   145
      TabStop         =   0   'False
      Top             =   9615
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   71
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   144
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   70
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   143
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   69
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   142
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   68
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   141
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   67
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   140
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   66
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   139
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   65
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   138
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   64
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   137
      TabStop         =   0   'False
      Top             =   8580
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   62
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   136
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   61
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   135
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   60
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   134
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   59
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   133
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   58
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   132
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   57
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   131
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   56
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   130
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   55
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   129
      TabStop         =   0   'False
      Top             =   7545
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   53
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   128
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   52
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   127
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   51
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   126
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   50
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   125
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   49
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   124
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   48
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   123
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   47
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   122
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   46
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   121
      TabStop         =   0   'False
      Top             =   6075
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   44
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   120
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   43
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   119
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   42
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   118
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   41
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   117
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   40
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   116
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   39
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   115
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   38
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   114
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   37
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   113
      TabStop         =   0   'False
      Top             =   5040
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   35
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   112
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   34
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   111
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   33
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   110
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   32
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   109
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   31
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   108
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   30
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   107
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   29
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   106
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   28
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   105
      TabStop         =   0   'False
      Top             =   4005
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   26
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   104
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   25
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   103
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   24
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   102
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   23
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   101
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   22
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   100
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   21
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   99
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   20
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   98
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   19
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   97
      TabStop         =   0   'False
      Top             =   2535
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   17
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   96
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   16
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   95
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   15
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   94
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   14
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   93
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   13
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   92
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   12
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   91
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   11
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   90
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   10
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   89
      TabStop         =   0   'False
      Top             =   1485
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   80
      Left            =   4650
      TabIndex        =   80
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   79
      Left            =   4170
      TabIndex        =   79
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   78
      Left            =   3690
      TabIndex        =   78
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   77
      Left            =   3150
      TabIndex        =   77
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   76
      Left            =   2670
      TabIndex        =   76
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   75
      Left            =   2190
      TabIndex        =   75
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   74
      Left            =   1650
      TabIndex        =   74
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   73
      Left            =   1170
      TabIndex        =   73
      Top             =   10230
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   71
      Left            =   4650
      TabIndex        =   71
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   70
      Left            =   4170
      TabIndex        =   70
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   69
      Left            =   3690
      TabIndex        =   69
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   68
      Left            =   3150
      TabIndex        =   68
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   67
      Left            =   2670
      TabIndex        =   67
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   66
      Left            =   2190
      TabIndex        =   66
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   65
      Left            =   1650
      TabIndex        =   65
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   64
      Left            =   1170
      TabIndex        =   64
      Top             =   9255
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   62
      Left            =   4650
      TabIndex        =   62
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   61
      Left            =   4170
      TabIndex        =   61
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   60
      Left            =   3690
      TabIndex        =   60
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   59
      Left            =   3150
      TabIndex        =   59
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   58
      Left            =   2670
      TabIndex        =   58
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   57
      Left            =   2190
      TabIndex        =   57
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   56
      Left            =   1650
      TabIndex        =   56
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   55
      Left            =   1170
      TabIndex        =   55
      Top             =   8220
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   53
      Left            =   4650
      TabIndex        =   53
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   52
      Left            =   4170
      TabIndex        =   52
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   51
      Left            =   3690
      TabIndex        =   51
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   50
      Left            =   3150
      TabIndex        =   50
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   49
      Left            =   2670
      TabIndex        =   49
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   48
      Left            =   2190
      TabIndex        =   48
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   47
      Left            =   1650
      TabIndex        =   47
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   46
      Left            =   1170
      TabIndex        =   46
      Top             =   6750
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   44
      Left            =   4650
      TabIndex        =   44
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   43
      Left            =   4170
      TabIndex        =   43
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   42
      Left            =   3690
      TabIndex        =   42
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   41
      Left            =   3150
      TabIndex        =   41
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   40
      Left            =   2670
      TabIndex        =   40
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   39
      Left            =   2190
      TabIndex        =   39
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   38
      Left            =   1650
      TabIndex        =   38
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   37
      Left            =   1170
      TabIndex        =   37
      Top             =   5715
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   35
      Left            =   4650
      TabIndex        =   35
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   34
      Left            =   4170
      TabIndex        =   34
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   33
      Left            =   3690
      TabIndex        =   33
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   32
      Left            =   3150
      TabIndex        =   32
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   31
      Left            =   2670
      TabIndex        =   31
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   30
      Left            =   2190
      TabIndex        =   30
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   29
      Left            =   1650
      TabIndex        =   29
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   28
      Left            =   1170
      TabIndex        =   28
      Top             =   4680
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   26
      Left            =   4650
      TabIndex        =   26
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   25
      Left            =   4170
      TabIndex        =   25
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   24
      Left            =   3690
      TabIndex        =   24
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   23
      Left            =   3150
      TabIndex        =   23
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   22
      Left            =   2670
      TabIndex        =   22
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   21
      Left            =   2190
      TabIndex        =   21
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   20
      Left            =   1650
      TabIndex        =   20
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   19
      Left            =   1170
      TabIndex        =   19
      Top             =   3210
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   17
      Left            =   4650
      TabIndex        =   17
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   16
      Left            =   4170
      TabIndex        =   16
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   15
      Left            =   3690
      TabIndex        =   15
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   14
      Left            =   3150
      TabIndex        =   14
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   13
      Left            =   2670
      TabIndex        =   13
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   12
      Left            =   2190
      TabIndex        =   12
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   11
      Left            =   1650
      TabIndex        =   11
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   10
      Left            =   1170
      TabIndex        =   10
      Top             =   2160
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   8
      Left            =   4650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   88
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   7
      Left            =   4170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   87
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   6
      Left            =   3690
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   86
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   5
      Left            =   3150
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   85
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   4
      Left            =   2670
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   84
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   3
      Left            =   2190
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   83
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   2
      Left            =   1650
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   82
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox aCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00800000&
      Height          =   690
      Index           =   1
      Left            =   1170
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   81
      TabStop         =   0   'False
      Top             =   435
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   8
      Left            =   4650
      TabIndex        =   8
      Top             =   1110
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   7
      Left            =   4170
      TabIndex        =   7
      Top             =   1110
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   6
      Left            =   3690
      TabIndex        =   6
      Top             =   1110
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   5
      Left            =   3150
      TabIndex        =   5
      Top             =   1110
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   4
      Left            =   2670
      TabIndex        =   4
      Top             =   1110
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   3
      Left            =   2190
      TabIndex        =   3
      Top             =   1110
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   2
      Left            =   1650
      TabIndex        =   2
      Top             =   1110
      Width           =   465
   End
   Begin VB.TextBox tCell 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   1
      Left            =   1170
      TabIndex        =   1
      Top             =   1110
      Width           =   465
   End
   Begin VB.Frame Frame1 
      Height          =   1095
      Left            =   5430
      TabIndex        =   208
      Top             =   3450
      Width           =   2670
      Begin VB.OptionButton Option1 
         Caption         =   "Compiled"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Index           =   1
         Left            =   1275
         TabIndex        =   210
         Top             =   165
         Width           =   1170
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Interpreted"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Index           =   0
         Left            =   75
         TabIndex        =   209
         Top             =   165
         Width           =   1170
      End
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Time"
      Height          =   180
      Left            =   8355
      TabIndex        =   213
      Top             =   2610
      Width           =   1245
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Caption         =   "Iterations"
      Height          =   180
      Left            =   6960
      TabIndex        =   212
      Top             =   2595
      Width           =   1380
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "Blocks"
      Height          =   180
      Left            =   6195
      TabIndex        =   203
      Top             =   2595
      Width           =   750
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Rows"
      Height          =   180
      Left            =   5430
      TabIndex        =   202
      Top             =   2610
      Width           =   750
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "txtDebug"
      Height          =   255
      Left            =   7890
      TabIndex        =   198
      Top             =   4950
      Width           =   2460
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00808080&
      BackStyle       =   1  'Opaque
      Height          =   810
      Index           =   6
      Left            =   90
      Top             =   10635
      Width           =   5115
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "History"
      Height          =   255
      Left            =   9870
      TabIndex        =   166
      Top             =   135
      Width           =   2685
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00808080&
      BackStyle       =   1  'Opaque
      Height          =   3480
      Index           =   1
      Left            =   90
      Top             =   7170
      Width           =   5115
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00808080&
      BackStyle       =   1  'Opaque
      Height          =   3630
      Index           =   0
      Left            =   90
      Top             =   15
      Width           =   5115
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00808080&
      BackStyle       =   1  'Opaque
      Height          =   3555
      Index           =   2
      Left            =   90
      Top             =   3630
      Width           =   5115
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Base 1
'This is version 16 2006-05-16
Dim clrLightGrey, clrDaryGrey, clrLightGreen, clrLightRed
Dim aCellMx(81, 10) As Integer                  '81x9 array contains available numbers for for each cell
Dim aGridMx(9, 10) As Integer                   '9x9 that ties all cells to their respective grids

Dim aCellVal(81)                                'Underlying values for each cell
Dim iCellValSub As Integer
Dim iCellVal As Integer                         'Entered number is the subscript used to update the aCellMx
Dim iPotentialEntry As Integer

Dim indDeletingValue As Boolean

Dim aHistory '(200, 3) 'As Integer                'History = Old Previous, Old Value, tCell
Dim iHistSub1
Dim aHistoryBookMarks
Dim iBookmarkSub As Integer
Dim iPreviousValue

'Remaining Choices
Dim aRowTot(9, 9) As Integer
Dim aColTot(9, 9) As Integer
Dim aGridTot(9, 9) As Integer

Dim iRowSub1, iRowSub2, iowSub3 As Long         'Starting subscript into aValRows
Dim iCol1, iCol2, iCol3 As Integer

Dim indBypassHistoryWrite As Boolean
Dim iActVal

Dim iSelRow, iSelCol, iSelCell, iSelGrid  As Integer

Dim iRemainingAvailable As Integer

'Sodoku Solver Variables
Dim aAllTriads(504, 5) As Integer               'All 504 Valid Triads 1,2,3 - individual Numbers, 4 binary total, 5 concat 1,2 & 3
Dim aAllTriadShadow
Dim aValidCellValues(81, 9)
Dim strCellEnteredInd As Boolean

Dim aValTriads '(504, 27) As Integer
'Dim iValidTriadSub As Integer

Dim aValRows 'Redimmed in x1300(10000, 19) - Row Number;  1 - 9 Valid Triads actual values;   11 - 19 2 to the number power
Dim aRowStart(9) As Integer                     'Starting row number of each of the nine rows in the aValRows grid
Dim iRowCnt As Integer
Dim iBlks As Long
Dim aValBlks(20000, 28) As Integer              'First dimension = set 1, 2 or 3, second dimension - index into aValRows
Dim iBlockSub1, iBlockSub2, iBlockSub3 As Integer ' Set as part of x1400
Dim iBlkSub1, iBlkSub2, iBlkSub3 As Integer     ' Set as part of x1500 - used to switch blocks 1 & 2 to the smallest for speed

'Version 2 - store only Column totals for blocks
Dim aBlocks '(20000, 13)                          '1 - Block Number(1, 2 or 3), 2,3 & 4 - Row number,  5 - 13 Column 1 - 9 totals
Dim aBlkSub As Integer
Dim indSolution As Boolean
Dim iTotalSolutions As Integer
Dim iTotIterations As Long

'EarlyOut Variables
Dim indEarlyOut As Boolean
Dim iEarlyOut As Long
Dim intB1, intB2 As Integer
Dim eoutrange As Long                           'Debug to see how many early outs are detected via the range test

Dim iTot1Blocks, iTot2Blocks, iTot3Blocks As Long
Dim timeStart, timeEnd, timeElapsed
Dim xTimerStart, xTimerEnd As Integer
Private Sub btn_Bookmark_Click()
    iBookmarkSub = iBookmarkSub + 1
    aHistoryBookMarks(iBookmarkSub) = iHistSub1
End Sub
Private Sub btn_UndoBookmark_Click()
    If iBookmarkSub = 0 Then
        MsgBox "No more Bookmarks"
    Else
        Do While aHistoryBookMarks(iBookmarkSub) < iHistSub1
            Call btn_Undo_Click
        Loop
        aHistoryBookMarks(iBookmarkSub) = ""
        iBookmarkSub = iBookmarkSub - 1
    End If
End Sub
Public Sub x900_Enter_Single_Possibilities()
'**************************************************************************************
'* Simple logic - checks to see if there is only one avaiable entry for a cell        *
'* If there is, it enters the value and recursively calls itself checking for another *
'* cell where there is only one possible value                                        *
'**************************************************************************************
    For i = 1 To 81
        indSingleValue = True
        iPotentialEntry = 0
        If aCellVal(i) = " " Then         'Bails if entry exists in cell
            For ii = 1 To 9
                If aCellMx(i, ii) > 0 Then
                    If iPotentialEntry = 0 Then
                        iPotentialEntry = aCellMx(i, ii)
                    Else
                        indSingleValue = False
                        Exit For
                    End If
                End If
            Next
        End If
        If indSingleValue = True And iPotentialEntry > 0 Then
            tCell(i - 1) = iPotentialEntry
            Call x900_Enter_Single_Possibilities
        End If
    Next
End Sub
Public Sub x1000_Load_Valid_Triads()
    iv = 0
    For i = 1 To 9: For ii = 1 To 9: For iii = 1 To 9
        If ii = i Or ii = iii Or iii = i Then
        Else
            iv = iv + 1
            If iv > 504 Then
                Exit Sub
            Else
                aAllTriads(iv, 1) = i
                aAllTriads(iv, 2) = ii
                aAllTriads(iv, 3) = iii
                aAllTriads(iv, 4) = 2 ^ (i) + 2 ^ (ii) + 2 ^ (iii)
                aAllTriads(iv, 5) = aAllTriads(iv, 1) & aAllTriads(iv, 2) & aAllTriads(iv, 3)
            End If
        End If
    Next: Next: Next
End Sub
Public Sub x1100_Mark_Valid_Triads(iSearchNumber, iTriadCell)
'*****************************************************************************
'* Routine searches the aAllTriads array for the iSearchNumber               *
'* When a match is found in the appropriate column (1, 2 or 3) which is      *
'* determined by the iTriadCell value, the iSearchNumber a 1 is written      *
'*****************************************************************************
    For i = 1 To 504
        If aAllTriads(i, iTriadCell) = iSearchNumber Then
            aAllTriadShadow(i, iTriadCell) = 1
            If iTriadCell = 3 Then
                aAllTriadShadow(i, 4) = aAllTriadShadow(i, 1) + aAllTriadShadow(i, 2) + aAllTriadShadow(i, 3)
            End If
        End If
    Next
End Sub
Public Sub x1200_Save_Valid_Triads(iTriad)
'*********************************************************************
'* iTriad = 1 to 27 (One of the 27 Triads)                           *
'* Goes through each of the 504 aAllTriadShadow looking for 3's      *
'* If it finds one, it saves the subscript i (one of the aAllTriads) *
'*********************************************************************
    For i = 1 To 504
        If aAllTriadShadow(i, 4) = 3 Then
            ii = ii + 1
            aValTriads(ii, iTriad) = i
        End If
    Next
End Sub
Public Sub x1300_Find_ValidRows()
  
    iRowCnt = 0: iPreviousRow = 0: iRowStartSub = 0
    iCol1 = 1: iCol2 = 2: iCol3 = 3:
    
    For ix = 1 To 9
        For i = 1 To 20000
            If aValTriads(i, iCol1) = 0 Then Exit For
            For ii = 1 To 20000
                If aValTriads(ii, iCol2) = 0 Then: Exit For
                    For iii = 1 To 20000
                        If aValTriads(iii, iCol3) = 0 Then: Exit For
                            If aAllTriads(aValTriads(i, iCol1), 4) + _
                                aAllTriads(aValTriads(ii, iCol2), 4) + _
                                aAllTriads(aValTriads(iii, iCol3), 4) = 1022 Then
                                    iRowCnt = iRowCnt + 1
                                    If ix <> iPreviousRow Then
                                        iRowStartSub = ix
                                        aRowStart(iRowStartSub) = iRowCnt
                                        iPreviousRow = ix
                                    End If
                                    aValRows(iRowCnt, 1) = ix
                                    
                                    'These are necessary to display in the answer
                                    aValRows(iRowCnt, 2) = aAllTriads(aValTriads(i, iCol1), 1)
                                    aValRows(iRowCnt, 3) = aAllTriads(aValTriads(i, iCol1), 2)
                                    aValRows(iRowCnt, 4) = aAllTriads(aValTriads(i, iCol1), 3)
                                    aValRows(iRowCnt, 5) = aAllTriads(aValTriads(ii, iCol2), 1)
                                    aValRows(iRowCnt, 6) = aAllTriads(aValTriads(ii, iCol2), 2)
                                    aValRows(iRowCnt, 7) = aAllTriads(aValTriads(ii, iCol2), 3)
                                    aValRows(iRowCnt, 8) = aAllTriads(aValTriads(iii, iCol3), 1)
                                    aValRows(iRowCnt, 9) = aAllTriads(aValTriads(iii, iCol3), 2)
                                    aValRows(iRowCnt, 10) = aAllTriads(aValTriads(iii, iCol3), 3)
                                    
                                    'Binary Values - to speed things up
                                    aValRows(iRowCnt, 11) = 2 ^ (aAllTriads(aValTriads(i, iCol1), 1))
                                    aValRows(iRowCnt, 12) = 2 ^ (aAllTriads(aValTriads(i, iCol1), 2))
                                    aValRows(iRowCnt, 13) = 2 ^ (aAllTriads(aValTriads(i, iCol1), 3))
                                    aValRows(iRowCnt, 14) = 2 ^ (aAllTriads(aValTriads(ii, iCol2), 1))
                                    aValRows(iRowCnt, 15) = 2 ^ (aAllTriads(aValTriads(ii, iCol2), 2))
                                    aValRows(iRowCnt, 16) = 2 ^ (aAllTriads(aValTriads(ii, iCol2), 3))
                                    aValRows(iRowCnt, 17) = 2 ^ (aAllTriads(aValTriads(iii, iCol3), 1))
                                    aValRows(iRowCnt, 18) = 2 ^ (aAllTriads(aValTriads(iii, iCol3), 2))
                                    aValRows(iRowCnt, 19) = 2 ^ (aAllTriads(aValTriads(iii, iCol3), 3))
                            End If
                    Next
            Next
        Next
        iCol1 = iCol1 + 3: iCol2 = iCol2 + 3: iCol3 = iCol3 + 3
    Next
    'Call x1301_DisplayRows
    txtRowCount = iRowCnt
    txtRowCount.Refresh
End Sub
Public Sub x1400_Find_Valid_Blocks()
Dim iTotalPasses As Long
Dim iSave1, iSave2, iSave3, iiSave1, iiSave2, iiSave3 As Integer

iCol1 = 2: iCol2 = 3: iCol3 = 4                                 'Each of the three columns that will be checked
iBlks = 0: iTotalPasses = 0: iTot1Blocks = 0: iTot2Blocks = 0: iTot3Blocks = 0

    For ix = 1 To 3                                             'Each of the three three blocks
        If ix = 1 Then
            iBlockSub1 = 1
            iRowSub1 = aRowStart(1): iRowSub2 = aRowStart(2): iRowSub3 = aRowStart(3)
        ElseIf ix = 2 Then
            iBlockSub2 = iBlks + 1
            iRowSub1 = aRowStart(4): iRowSub2 = aRowStart(5): iRowSub3 = aRowStart(6)
        Else
            iBlockSub3 = iBlks + 1
            iRowSub1 = aRowStart(7): iRowSub2 = aRowStart(8): iRowSub3 = aRowStart(9)
        End If
        For i = iRowSub1 To 20000                               'Each valid row - 1 through 9
            If aValRows(i, 1) <> aValRows(iRowSub1, 1) Then Exit For

            iSave1 = aValRows(i, 11) + aValRows(i, 12) + aValRows(i, 13)
            iSave2 = aValRows(i, 14) + aValRows(i, 15) + aValRows(i, 16)
            iSave3 = aValRows(i, 17) + aValRows(i, 18) + aValRows(i, 19)

            For ii = iRowSub2 To 20000
                If aValRows(ii, 1) <> aValRows(iRowSub2, 1) Then Exit For
                                
                iiSave1 = aValRows(ii, 11) + aValRows(ii, 12) + aValRows(ii, 13)
                iiSave2 = aValRows(ii, 14) + aValRows(ii, 15) + aValRows(ii, 16)
                iiSave3 = aValRows(ii, 17) + aValRows(ii, 18) + aValRows(ii, 19)
                
                For iii = iRowSub3 To 20000
                    If aValRows(iii, 1) <> aValRows(iRowSub3, 1) Then Exit For
                
                    If iSave1 + iiSave1 + aValRows(iii, 11) + aValRows(iii, 12) + aValRows(iii, 13) = 1022 Then
                         If iSave2 + iiSave2 + aValRows(iii, 14) + aValRows(iii, 15) + aValRows(iii, 16) = 1022 Then
                            If iSave3 + iiSave3 + aValRows(iii, 17) + aValRows(iii, 18) + aValRows(iii, 19) = 1022 Then
                                
                                iBlks = iBlks + 1
                                If ix = 1 Then
                                    iTot1Blocks = iTot1Blocks + 1
                                ElseIf ix = 2 Then
                                    iTot2Blocks = iTot2Blocks + 1
                                Else
                                    iTot3Blocks = iTot3Blocks + 1
                                End If
                                aBlocks(iBlks, 1) = ix: aBlocks(iBlks, 2) = i: aBlocks(iBlks, 3) = ii: aBlocks(iBlks, 4) = iii
                                aBlkSub = 4
                                For xx = 11 To 19
                                    aBlkSub = aBlkSub + 1
                                    aBlocks(iBlks, aBlkSub) = aValRows(i, xx) + aValRows(ii, xx) + aValRows(iii, xx)
                                Next
                                iTotalPasses = iTotalPasses + 1
                            End If
                        End If
                    End If
                Next
            Next
        Next
Next
txtBlockCount = iTotalPasses: txtBlockCount.Refresh
strDisp2String = ""
End Sub
Public Sub x1500_Find_Valid_Solutions()
Dim indBlockSwitch As String
iEarlyOut = 0: iTotIterations = 0: eoutrange = 0

'* It appears that the lowest two blocks are most efficient however, leave this in for awhile for testing *
    indBlockSwitch = "No Switch"
    If Option3 = True Then  '1,2,3
        iBlkSub1 = iBlockSub1: iBlkSub2 = iBlockSub2: iBlkSub3 = iBlockSub3             'No Switch
        indBlockSwitch = "No Switch"
    ElseIf Option4 = True Then                                                          'Lowest two Blocks tested first
        If iTot1Blocks <= iTot2Blocks Then
            If iTot2Blocks <= iTot3Blocks Then
                iBlkSub1 = iBlockSub1: iBlkSub2 = iBlockSub2: iBlkSub3 = iBlockSub3     'No Switch - OK
                indBlockSwitch = "No Switch"
            Else
                iBlkSub1 = iBlockSub1: iBlkSub2 = iBlockSub3: iBlkSub3 = iBlockSub2     '2 & 3 switch - OK
                indBlockSwitch = "2 & 3"
            End If
        Else
            If iTot1Blocks <= iTot3Blocks Then
                iBlkSub1 = iBlockSub1: iBlkSub2 = iBlockSub2: iBlkSub3 = iBlockSub3     'No Switch - OK
                indBlockSwitch = "No Switch"
            Else
                iBlkSub1 = iBlockSub3: iBlkSub2 = iBlockSub2: iBlkSub3 = iBlockSub1     '1 & 3 switch - OK
                indBlockSwitch = "1 & 3"
            End If
        End If
    ElseIf Option5 = True Then                                                          'Highest two Blocks tested first
        If iTot1Blocks <= iTot2Blocks Then
            If iTot1Blocks <= iTot3Blocks Then
                iBlkSub1 = iBlockSub3: iBlkSub2 = iBlockSub2: iBlkSub3 = iBlockSub1     '1 & 3 switch - OK
                indBlockSwitch = "1 & 3"
            Else
                iBlkSub1 = iBlockSub1: iBlkSub2 = iBlockSub2: iBlkSub3 = iBlockSub3     'No Switch - OK
                indBlockSwitch = "No Switch"
            End If
        Else
            If iTot2Blocks <= iTot3Blocks Then
                iBlkSub1 = iBlockSub1: iBlkSub2 = iBlockSub3: iBlkSub3 = iBlockSub2     '2 & 3 switch - OK
                indBlockSwitch = "2 & 3"
            Else
                iBlkSub1 = iBlockSub1: iBlkSub2 = iBlockSub2: iBlkSub3 = iBlockSub3     'No Switch - OK
                indBlockSwitch = "No Switch"
            End If
        End If
    End If
    
    For i = iBlkSub1 To 20000                               'Each valid block - 1 through 3
        If aBlocks(i, 1) <> aBlocks(iBlkSub1, 1) Then Exit For
            
        For ii = iBlkSub2 To 20000
            If aBlocks(ii, 1) <> aBlocks(iBlkSub2, 1) Then Exit For
            '*******************************************************************************************
            '* Check for EarlyOut                                                                      *
            '* Part 1 - If the totals of any of the Block 1 & 2 columns is too low or too high - Bails *
            '* Part 2 - Checks for dups and bails if it finds one                                      *
            '*******************************************************************************************
            indEarlyOut = False
            '*** EarlyOut Part 1 ***
               For zzz = 5 To 13
                    If aBlocks(i, zzz) + aBlocks(ii, zzz) > 1008 Or _
                        aBlocks(i, zzz) + aBlocks(ii, zzz) < 126 Or _
                        aBlocks(i, zzz) = aBlocks(ii, zzz) Then
                            eoutrange = eoutrange + 1
                            iEarlyOut = iEarlyOut + 1
                            indEarlyOut = True
                            Exit For
                    End If
            '*** EarlyOut Part 2 ****
                    binNum = 512
                    intB1 = aBlocks(i, zzz): intB2 = aBlocks(ii, zzz)
                    For iz = 1 To 9
                        If intB1 >= binNum Then
                            If intB2 >= binNum Then
                                iEarlyOut = iEarlyOut + 1
                                indEarlyOut = True
                                Exit For
                            Else
                                intB1 = intB1 - binNum
                            End If
                        ElseIf intB2 >= binNum Then
                                intB2 = intB2 - binNum
                        End If
                        binNum = binNum / 2
                    Next
                    If indEarlyOut = True Then Exit For
                Next
            '*** End of EarlyOut ***
            
            If indEarlyOut = False Then
                For iii = iBlkSub3 To 20000
                    If aBlocks(iii, 1) <> aBlocks(iBlkSub3, 1) Then Exit For
                    
                    iTotIterations = iTotIterations + 1
                    For iv = 5 To 13
                       If aBlocks(i, iv) + aBlocks(ii, iv) + aBlocks(iii, iv) <> 1022 Then Exit For
                    Next
                    If iv = 14 Then
                         If indBlockSwitch = "No Switch" Then
                            iSub = i: iiSub = ii:  iiiSub = iii
                        ElseIf indBlockSwitch = "1 & 3" Then
                            iSub = iii: iiSub = ii:  iiiSub = i
                        ElseIf indBlockSwitch = "2 & 3" Then
                            iSub = i: iiSub = iii:  iiiSub = ii
                        End If
                        Call x1700_Display_Solution(iSub, iiSub, iiiSub)
                        txtTotalIterations = Format(iTotIterations, "###,###,###,###")
                    End If
                Next
            End If
        Next
    Next
    txtDebug(1) = "EarlyOut " & iEarlyOut & vbCrLf
    txtDebug(1) = txtDebug(1) & "1-" & iTot1Blocks & " 2-" & iTot2Blocks & " 3-" & iTot3Blocks & " Range - " & eoutrange
End Sub
Public Sub x1700_Display_Solution(i, ii, iii)
'*********************************************************************************************************
'* Displays the correct answer                                                                           *
'* Dim aBlocks(9000, 13) '1 - Block Number(1, 2 or 3), 2,3 & 4 - Row number,  5 - 13 Column 1 - 9 totals *
'* Dim aValRows(9000, 10) As Long             'Row Number then  1 - 9; Valid Triads actual values stored *
'*********************************************************************************************************
strDummy1 = ""
    strDummy1 = aValRows(aBlocks(i, 2), 2) & " " & aValRows(aBlocks(i, 2), 3) & " " & aValRows(aBlocks(i, 2), 4) & " - " & _
    aValRows(aBlocks(i, 2), 5) & " " & aValRows(aBlocks(i, 2), 6) & " " & aValRows(aBlocks(i, 2), 7) & " - " & _
    aValRows(aBlocks(i, 2), 8) & " " & aValRows(aBlocks(i, 2), 9) & " " & aValRows(aBlocks(i, 2), 10) & vbCrLf
    
    strDummy1 = strDummy1 & aValRows(aBlocks(i, 3), 2) & " " & aValRows(aBlocks(i, 3), 3) & " " & aValRows(aBlocks(i, 3), 4) & " - " & _
    aValRows(aBlocks(i, 3), 5) & " " & aValRows(aBlocks(i, 3), 6) & " " & aValRows(aBlocks(i, 3), 7) & " - " & _
    aValRows(aBlocks(i, 3), 8) & " " & aValRows(aBlocks(i, 3), 9) & " " & aValRows(aBlocks(i, 3), 10) & vbCrLf
    
    strDummy1 = strDummy1 & aValRows(aBlocks(i, 4), 2) & " " & aValRows(aBlocks(i, 4), 3) & " " & aValRows(aBlocks(i, 4), 4) & " - " & _
    aValRows(aBlocks(i, 4), 5) & " " & aValRows(aBlocks(i, 4), 6) & " " & aValRows(aBlocks(i, 4), 7) & " - " & _
    aValRows(aBlocks(i, 4), 8) & " " & aValRows(aBlocks(i, 4), 9) & " " & aValRows(aBlocks(i, 4), 10) & vbCrLf & vbCrLf
    
    strDummy1 = strDummy1 & aValRows(aBlocks(ii, 2), 2) & " " & aValRows(aBlocks(ii, 2), 3) & " " & aValRows(aBlocks(ii, 2), 4) & " - " & _
    aValRows(aBlocks(ii, 2), 5) & " " & aValRows(aBlocks(ii, 2), 6) & " " & aValRows(aBlocks(ii, 2), 7) & " - " & _
    aValRows(aBlocks(ii, 2), 8) & " " & aValRows(aBlocks(ii, 2), 9) & " " & aValRows(aBlocks(ii, 2), 10) & vbCrLf
    
    strDummy1 = strDummy1 & aValRows(aBlocks(ii, 3), 2) & " " & aValRows(aBlocks(ii, 3), 3) & " " & aValRows(aBlocks(ii, 3), 4) & " - " & _
    aValRows(aBlocks(ii, 3), 5) & " " & aValRows(aBlocks(ii, 3), 6) & " " & aValRows(aBlocks(ii, 3), 7) & " - " & _
    aValRows(aBlocks(ii, 3), 8) & " " & aValRows(aBlocks(ii, 3), 9) & " " & aValRows(aBlocks(ii, 3), 10) & vbCrLf
    
    strDummy1 = strDummy1 & aValRows(aBlocks(ii, 4), 2) & " " & aValRows(aBlocks(ii, 4), 3) & " " & aValRows(aBlocks(ii, 4), 4) & " - " & _
    aValRows(aBlocks(ii, 4), 5) & " " & aValRows(aBlocks(ii, 4), 6) & " " & aValRows(aBlocks(ii, 4), 7) & " - " & _
    aValRows(aBlocks(ii, 4), 8) & " " & aValRows(aBlocks(ii, 4), 9) & " " & aValRows(aBlocks(ii, 4), 10) & vbCrLf & vbCrLf
    
    strDummy1 = strDummy1 & aValRows(aBlocks(iii, 2), 2) & " " & aValRows(aBlocks(iii, 2), 3) & " " & aValRows(aBlocks(iii, 2), 4) & " - " & _
    aValRows(aBlocks(iii, 2), 5) & " " & aValRows(aBlocks(iii, 2), 6) & " " & aValRows(aBlocks(iii, 2), 7) & " - " & _
    aValRows(aBlocks(iii, 2), 8) & " " & aValRows(aBlocks(iii, 2), 9) & " " & aValRows(aBlocks(iii, 2), 10) & vbCrLf
    
    strDummy1 = strDummy1 & aValRows(aBlocks(iii, 3), 2) & " " & aValRows(aBlocks(iii, 3), 3) & " " & aValRows(aBlocks(iii, 3), 4) & " - " & _
    aValRows(aBlocks(iii, 3), 5) & " " & aValRows(aBlocks(iii, 3), 6) & " " & aValRows(aBlocks(iii, 3), 7) & " - " & _
    aValRows(aBlocks(iii, 3), 8) & " " & aValRows(aBlocks(iii, 3), 9) & " " & aValRows(aBlocks(iii, 3), 10) & vbCrLf
    
    strDummy1 = strDummy1 & aValRows(aBlocks(iii, 4), 2) & " " & aValRows(aBlocks(iii, 4), 3) & " " & aValRows(aBlocks(iii, 4), 4) & " - " & _
    aValRows(aBlocks(iii, 4), 5) & " " & aValRows(aBlocks(iii, 4), 6) & " " & aValRows(aBlocks(iii, 4), 7) & " - " & _
    aValRows(aBlocks(iii, 4), 8) & " " & aValRows(aBlocks(iii, 4), 9) & " " & aValRows(aBlocks(iii, 4), 10) & vbCrLf

    txtSolution = strDummy1
    txtDebug(2) = "Solution - " & i & " " & ii & " " & iii
End Sub
Private Sub btn_Solve_Click()
'Find Valid Triad
'* Outer Loop - i loops through the 27 triads
'* Next Loop - ii loops through the 3 cells in each triad
'* Next loop - iii loops through the 9 available numbers

    timeStart = Timer
    Call x900_Enter_Single_Possibilities: Form1.Refresh
    iCellValSub = 0
    For i = 1 To 27                                         'For each of the 27 Triads
        ReDim aAllTriadShadow(504, 4) As Integer            'Each pass thru 1 per triad
        'iValidTriadSub = 0
         For ii = 1 To 3                                    'For each of the three cells in a Triad
            strCellEnteredInd = False
            iCellValSub = iCellValSub + 1
            If aCellVal(iCellValSub) = "" Or aCellVal(iCellValSub) = " " Then
                For iii = 1 To 9                            'For each of the available Values for a Cell
                    If aCellMx(iCellValSub, iii) = iii Then
                        Call x1100_Mark_Valid_Triads(iii, ii)
                    End If
                Next
            Else
                strCellEnteredInd = True
                Call x1100_Mark_Valid_Triads(aCellVal(iCellValSub), ii)
            End If
        Next
        Call x1200_Save_Valid_Triads(i)
    Next
    
    Call xTimer("Start", "x1300"): Call x1300_Find_ValidRows: Call xTimer("Stop", "x1300")
    Call xTimer("Start", "x1400"): Call x1400_Find_Valid_Blocks: Call xTimer("Stop", "x1400")
    Call xTimer("Start", "x1500"): Call x1500_Find_Valid_Solutions: Call xTimer("Stop", "x1500")
    
    timeEnd = Timer: timeElapsed = timeEnd - timeStart: txtTimeElapsed = timeElapsed
End Sub
Private Sub btn_Start_Click()
'*********************************************************
'* This is used to set the background of the original or *
'* given numbers to cyan                                 *
'*********************************************************
    Call x0080_Set_Cell_Backcolor(&HFFFFC0)
    Call btn_Bookmark_Click
End Sub
Public Sub x0080_Set_Cell_Backcolor(WhichColor)
'**********************************************************
'* This is used to either set the background of all cells *
'* to white or the seed numbers to cyan                   *
'**********************************************************
    For i = 0 To 80
        If tCell(i) = "" Then
        Else
            tCell(i).BackColor = WhichColor
        End If
    Next
End Sub
Private Sub x550_Display_History()
'****************************************
'* Debug code that displays the history *
'****************************************
    tHistory = ""
    For i = 1 To iHistSub1
        tHistory = tHistory & "Cell " & aHistory(i, 3) & " New " & aHistory(i, 2) & " Prev " & aHistory(i, 1) & vbCrLf
    Next
End Sub
Private Sub btn_Undo_Click()
'**************************************
'* Undoes all entries *
'**************************************
    If iHistSub1 = 0 Then
        MsgBox "Nothing left to Undo"
        Exit Sub
    End If
    
    tmptCell = aHistory(iHistSub1, 3)       'Cell
    tmpValue = aHistory(iHistSub1, 2)       'Value

    tmpPrevious = aHistory(iHistSub1, 1)    'Previous Value
    indBypassHistoryWrite = True
    tCell(tmptCell) = tmpPrevious

    iHistSub1 = iHistSub1 - 1
    indBypassHistoryWrite = False
    Call x550_Display_History
End Sub
Private Sub tCell_Change(Index As Integer)
'Validate User Entry 1 thru 9 or " " or ""
'User either blanks out original entry or updates original entry with new value
'Save History & place in scrolling text box
    
    If indDeletingValue = True Then Exit Sub
    
    iSelCell = Index
    Call x0100_Determine_Row_Col_Grid

    'Edit for valid number or that old value has been deleted / backspaced
    If IsNumeric(tCell(Index)) Then
        If tCell(Index).Text > 0 And tCell(Index).Text < 10 Then
            If tCell(Index) <> aCellVal(Index + 1) And IsNumeric(aCellVal(Index + 1)) Then  'Restores old value
                iCellVal = aCellVal(Index + 1)                                              'Uses number from array
                iActVal = (aCellVal(Index + 1) * -1)                                        'Resets
                Call x0300_Update_aCellMx_aRowTot_AColTot_aGridTot
                Call x0060_Load_RowColGrid_Totals
            End If
            iCellVal = tCell(Index)                 'Populates iCellVal with the entered value
            iActVal = tCell(Index)
            iPreviousNumber = aCellVal(Index + 1)
            aCellVal(Index + 1) = tCell(Index)      'Populates the underlying cell array with the entered value
            Call x0300_Update_aCellMx_aRowTot_AColTot_aGridTot
            Call x0060_Load_RowColGrid_Totals
        Else
            MsgBox "Must be 1 - 9"                  'Traps more than one digit numeric
            indDeletingValue = True
            If aCellVal(Index + 1) = " " Then
                tCell(Index) = ""
            Else
                tCell(Index) = aCellVal(Index + 1)
            End If
            indDeletingValue = False
            Exit Sub
        End If
    Else
        If tCell(Index) = "" Then                   'Deletes current value
            iCellVal = aCellVal(Index + 1)
            iActVal = (aCellVal(Index + 1) * -1)
            iPreviousNumber = aCellVal(Index + 1)
            aCellVal(Index + 1) = tCell(Index)
            Call x0300_Update_aCellMx_aRowTot_AColTot_aGridTot
            Call x0060_Load_RowColGrid_Totals
        Else
            MsgBox "Must be 1 - 9; use Del or Backspace Key"
            indDeletingValue = True
            If aCellVal(Index + 1) = " " Then
                tCell(Index) = ""
            Else
                tCell(Index) = aCellVal(Index + 1)
            End If
            indDeletingValue = False
            Exit Sub
        End If
    End If
    
    If indBypassHistoryWrite = False Then               'Only needed for Undo
        iHistSub1 = iHistSub1 + 1
        aHistory(iHistSub1, 1) = iPreviousNumber        'aCellVal(Index + 1)    'Old Number or ""
        aHistory(iHistSub1, 2) = tCell(Index)           'New Number
        aHistory(iHistSub1, 3) = Index
        Call x550_Display_History
    End If
    
    Call x0070_Load_aCell
    Call x0400_Choices
End Sub
Public Sub x0300_Update_aCellMx_aRowTot_AColTot_aGridTot()
'*********************************************************************************
'* Individual Cell Array Updates - once for Row, once for Column & once for Grid *
'* Also updates Row Totals, Column Totals & Grid Totals                          *
'*********************************************************************************
    'Take out Row Value
    intStart = (iSelRow * 9)
    For i = 1 To 9
        aCellMx((intStart + i), iCellVal) = aCellMx((intStart + i), iCellVal) - iActVal
    Next
    'Take out Column Value
    intStart = (iSelCol)
    For i = 1 To 81 Step 9
        aCellMx((intStart + i), iCellVal) = aCellMx((intStart + i), iCellVal) - iActVal
    Next
    'Take out Grid Value
    For i = 1 To 9
        aCellMx(aGridMx(iSelGrid + 1, i), iCellVal) = aCellMx(aGridMx(iSelGrid + 1, i), iCellVal) - iActVal
    Next

    'Take out Row Value from Row Total
    If IsNumeric(iCellVal) Then
        aRowTot((iSelRow + 1), (iCellVal)) = aRowTot((iSelRow + 1), (iCellVal)) - iActVal
    End If
    'Take out Column Value from Column Total
    If IsNumeric(iCellVal) Then
        aColTot((iSelCol + 1), (iCellVal)) = aColTot((iSelCol + 1), (iCellVal)) - iActVal
    End If
    'Take out Grid Value from Grid Total
    If IsNumeric(iCellVal) Then
        aGridTot((iSelGrid + 1), (iCellVal)) = aGridTot((iSelGrid + 1), (iCellVal)) - iActVal
    End If
End Sub
Private Sub Form_Load()
    Call btn_Reset_Click
    Call x1000_Load_Valid_Triads        'Only needs to be done once per run
    Call x0200_Load_aGridMx_Values      'Only needs to be done once per run
End Sub
Private Sub btn_Reset_Click()
'***************************************
'* Consolidation for startup and reset *
'***************************************
    txtRowCount = "": txtBlockCount = "": txtTotalIterations = "": txtTimeElapsed = ""
    txtDebug(0) = "": txtDebug(1) = "": txtDebug(2) = "": txtSolution = ""
    iBookmarkSub = 0
    
    ReDim aValRows(10000, 19) As Integer
    ReDim aValTriads(504, 27) As Integer    'Resets if doing multiple games
    ReDim aBlocks(20000, 13) As Integer
    ReDim aHistoryBookMarks(81)

    Call x0050_Reset
    Call x0060_Load_RowColGrid_Totals
    Call x0070_Load_aCell
    Call x0080_Set_Cell_Backcolor(&HFFFFFF)
    
    'Clearing History seems to want to be here
    ReDim aHistory(200, 3)
    tHistory = ""
    iHistSub1 = 0
End Sub
Public Sub x0050_Reset()
'***********************************************************
'* Resets all tCell, aCellVal, aRowTot, aColTot & aGridTot *
'***********************************************************
    For i = 0 To 80
        tCell(i) = ""
        aCellVal(i + 1) = ""
    Next i

    For i = 1 To 9
        For ii = 1 To 9
            aRowTot((i), (ii)) = ii: aColTot((i), (ii)) = ii: aGridTot((i), (ii)) = ii
        Next
    Next
    
    For i = 1 To 81
        For ii = 1 To 9
            aCellMx((i), (ii)) = ii
        Next
    Next
End Sub
Private Sub x0060_Load_RowColGrid_Totals()
'*******************************************************
'* After a cell is updated, this routine populates the *
'* remaining available values for the Row, Col & Grid  *
'*******************************************************
    For i = 1 To 9
        txtRow(i - 1) = "": txtCol(i - 1) = "": txtGrid(i - 1) = ""
        For ii = 1 To 9
            If aRowTot(i, ii) = 0 Then
                txtRow(i - 1).Text = txtRow(i - 1).Text & "."
            Else
                txtRow(i - 1).Text = txtRow(i - 1).Text & aRowTot(i, ii)
            End If
            
            If aColTot(i, ii) = 0 Then
                txtCol(i - 1).Text = txtCol(i - 1).Text & "."
            Else
                txtCol(i - 1).Text = txtCol(i - 1).Text & aColTot(i, ii)
            End If
            
            If aGridTot(i, ii) = 0 Then
                txtGrid(i - 1).Text = txtGrid(i - 1).Text & "."
            Else
                txtGrid(i - 1).Text = txtGrid(i - 1).Text & aGridTot(i, ii)
            End If
        Next
    Next
End Sub
Private Sub x0070_Load_aCell()
'Common Routine that loads all aCell boxes from the underlying array
    For i = 1 To 81
    aCell(i - 1).Text = ""
    If aCellVal(i) = " " Or aCellVal(i) = "" Then
         aCell(i - 1).BackColor = 14737632  'LightGrey
    Else
        aCell(i - 1).BackColor = (&H808080)   '155        'Dark Gray
    End If
        For ii = 1 To 9
            If aCellMx((i), (ii)) < 1 Then
                aCell(i - 1).Text = aCell(i - 1).Text & "."
            Else
                aCell(i - 1).Text = aCell(i - 1).Text & aCellMx((i), (ii))
            End If
        Next
    Next
End Sub
Private Sub x0400_Choices()
'*********************************************************************
' Displays 1,2 & 3 choice cells in three text boxes                  *
' Also, sets the background color to Green - 1, Yellow - 2 & Red - 3 *
'*********************************************************************
    For i = 1 To 81
        iRemainingAvailable = 0
        For ii = 1 To 9
            If aCellMx(i, ii) > 0 Then iRemainingAvailable = iRemainingAvailable + 1
        Next
        aCellMx(i, 10) = iRemainingAvailable
        If aCellMx(i, 10) = 1 And tCell(i - 1) = "" Then
             tCell(i - 1).BackColor = (&H80FF80)                'Light Green
        ElseIf aCellMx(i, 10) = 2 And tCell(i - 1) = "" Then
            tCell(i - 1).BackColor = (&H80FFFF)                 'Light Yellow
        ElseIf aCellMx(i, 10) = 3 And tCell(i - 1) = "" Then
            tCell(i - 1).BackColor = (&HC0E0FF)                 'Peach
        ElseIf tCell(i - 1).BackColor = &HFFFFC0 Then
        Else
            tCell(i - 1).BackColor = (&HFFFFFF)                 ' vbWhite
        End If
    Next
End Sub
Public Sub aCell_Click(Index As Integer)
'***********************************************
'* Debug code - used to display the underlying *
'* available valuesin a aCellMx                *
'***********************************************
    txtDebug(2).Text = ""
    For i = 1 To 9
        txtDebug(2).Text = txtDebug(2).Text & aCellMx((Index + 1), (i)) & " "
    Next
    txtDebug(2).Text = txtDebug(2).Text & " T" & aCellMx((Index + 1), (i)) & " "
End Sub
Public Sub x0100_Determine_Row_Col_Grid()
'Determine Row
    iSelRow = Int(iSelCell / 9)
'Determine Column This could be more clever divide by 9
' - if mod 0 iSelCol = 0
    If iSelCell = 0 Or iSelCell = 9 Or iSelCell = 18 Or iSelCell = 27 Or iSelCell = 36 Or iSelCell = 45 Or iSelCell = 54 Or iSelCell = 63 Or iSelCell = 72 Then
        iSelCol = 0
    ElseIf iSelCell = 1 Or iSelCell = 10 Or iSelCell = 19 Or iSelCell = 28 Or iSelCell = 37 Or iSelCell = 46 Or iSelCell = 55 Or iSelCell = 64 Or iSelCell = 73 Then
        iSelCol = 1
    ElseIf iSelCell = 2 Or iSelCell = 11 Or iSelCell = 20 Or iSelCell = 29 Or iSelCell = 38 Or iSelCell = 47 Or iSelCell = 56 Or iSelCell = 65 Or iSelCell = 74 Then
        iSelCol = 2
    ElseIf iSelCell = 3 Or iSelCell = 12 Or iSelCell = 21 Or iSelCell = 30 Or iSelCell = 39 Or iSelCell = 48 Or iSelCell = 57 Or iSelCell = 66 Or iSelCell = 75 Then
        iSelCol = 3
    ElseIf iSelCell = 4 Or iSelCell = 13 Or iSelCell = 22 Or iSelCell = 31 Or iSelCell = 40 Or iSelCell = 49 Or iSelCell = 58 Or iSelCell = 67 Or iSelCell = 76 Then
        iSelCol = 4
    ElseIf iSelCell = 5 Or iSelCell = 14 Or iSelCell = 23 Or iSelCell = 32 Or iSelCell = 41 Or iSelCell = 50 Or iSelCell = 59 Or iSelCell = 68 Or iSelCell = 77 Then
        iSelCol = 5
    ElseIf iSelCell = 6 Or iSelCell = 15 Or iSelCell = 24 Or iSelCell = 33 Or iSelCell = 42 Or iSelCell = 51 Or iSelCell = 60 Or iSelCell = 69 Or iSelCell = 78 Then
        iSelCol = 6
    ElseIf iSelCell = 7 Or iSelCell = 16 Or iSelCell = 25 Or iSelCell = 34 Or iSelCell = 43 Or iSelCell = 52 Or iSelCell = 61 Or iSelCell = 70 Or iSelCell = 79 Then
        iSelCol = 7
    ElseIf iSelCell = 8 Or iSelCell = 17 Or iSelCell = 26 Or iSelCell = 35 Or iSelCell = 44 Or iSelCell = 53 Or iSelCell = 62 Or iSelCell = 71 Or iSelCell = 80 Then
        iSelCol = 8
    End If
'Determine Grid
    If iSelRow > 5 Then
        If iSelCol > 5 Then
            iSelGrid = 8
        ElseIf iSelCol > 2 Then
            iSelGrid = 7
        Else
            iSelGrid = 6
        End If
    ElseIf iSelRow > 2 Then
        If iSelCol > 5 Then
            iSelGrid = 5
        ElseIf iSelCol > 2 Then
            iSelGrid = 4
        Else
            iSelGrid = 3
        End If
    Else
        If iSelCol > 5 Then
            iSelGrid = 2
        ElseIf iSelCol > 2 Then
            iSelGrid = 1
        Else
            iSelGrid = 0
        End If
    End If
End Sub
Public Sub x0200_Load_aGridMx_Values()
'**************************************************
' Routine loads the 9 x 9 Grid matrix linking the *
' appropriate aCellMx to the appropriate Grid     *
'**************************************************
    aGridMx(1, 1) = 1: aGridMx(1, 2) = 2: aGridMx(1, 3) = 3
    aGridMx(1, 4) = 10: aGridMx(1, 5) = 11: aGridMx(1, 6) = 12
    aGridMx(1, 7) = 19: aGridMx(1, 8) = 20: aGridMx(1, 9) = 21: aGridMx(1, 10) = 9
    aGridMx(2, 1) = 4: aGridMx(2, 2) = 5: aGridMx(2, 3) = 6
    aGridMx(2, 4) = 13: aGridMx(2, 5) = 14: aGridMx(2, 6) = 15
    aGridMx(2, 7) = 22: aGridMx(2, 8) = 23: aGridMx(2, 9) = 24: aGridMx(2, 10) = 9
    aGridMx(3, 1) = 7: aGridMx(3, 2) = 8: aGridMx(3, 3) = 9
    aGridMx(3, 4) = 16: aGridMx(3, 5) = 17: aGridMx(3, 6) = 18
    aGridMx(3, 7) = 25: aGridMx(3, 8) = 26: aGridMx(3, 9) = 27: aGridMx(3, 10) = 9
    aGridMx(4, 1) = 28: aGridMx(4, 2) = 29: aGridMx(4, 3) = 30
    aGridMx(4, 4) = 37: aGridMx(4, 5) = 38: aGridMx(4, 6) = 39
    aGridMx(4, 7) = 46: aGridMx(4, 8) = 47: aGridMx(4, 9) = 48: aGridMx(4, 10) = 9
    aGridMx(5, 1) = 31: aGridMx(5, 2) = 32: aGridMx(5, 3) = 33
    aGridMx(5, 4) = 40: aGridMx(5, 5) = 41: aGridMx(5, 6) = 42
    aGridMx(5, 7) = 49: aGridMx(5, 8) = 50: aGridMx(5, 9) = 51: aGridMx(5, 10) = 9
    aGridMx(6, 1) = 34: aGridMx(6, 2) = 35: aGridMx(6, 3) = 36
    aGridMx(6, 4) = 43: aGridMx(6, 5) = 44: aGridMx(6, 6) = 45
    aGridMx(6, 7) = 52: aGridMx(6, 8) = 53: aGridMx(6, 9) = 54: aGridMx(6, 10) = 9
    aGridMx(7, 1) = 55: aGridMx(7, 2) = 56: aGridMx(7, 3) = 57
    aGridMx(7, 4) = 64: aGridMx(7, 5) = 65: aGridMx(7, 6) = 66
    aGridMx(7, 7) = 73: aGridMx(7, 8) = 74: aGridMx(7, 9) = 75: aGridMx(7, 10) = 9
    aGridMx(8, 1) = 58: aGridMx(8, 2) = 59: aGridMx(8, 3) = 60
    aGridMx(8, 4) = 67: aGridMx(8, 5) = 68: aGridMx(8, 6) = 69
    aGridMx(8, 7) = 76: aGridMx(8, 8) = 77: aGridMx(8, 9) = 78: aGridMx(8, 10) = 9
    aGridMx(9, 1) = 61: aGridMx(9, 2) = 62: aGridMx(9, 3) = 63
    aGridMx(9, 4) = 70: aGridMx(9, 5) = 71: aGridMx(9, 6) = 72
    aGridMx(9, 7) = 79: aGridMx(9, 8) = 80: aGridMx(9, 9) = 81: aGridMx(9, 10) = 9
End Sub
Public Sub xTimer(StartStop, Routine)
    If StartStop = "Start" Then
        xTimerStart = Timer
    ElseIf StartStop = "Stop" Then
        txtDebug(0) = txtDebug(0) & Routine & " - " & Timer - xTimerStart & vbCrLf
    End If
End Sub
Public Sub x1301_DisplayRows()
'**************************************************************************
'* OK                                                                     *
'* Debug code that displays all eligible Triads for each of the 27 Triads *
'**************************************************************************
   Dim strDispString As String
   Dim strSubString As String
   For i = 1 To iRowCnt
        For ii = 1 To 19
            If ii = 1 Then strSubString = "R "
            
            strSubString = strSubString & aValRows(i, ii) & " "
        Next
        strDispString = strDispString & strSubString & vbCrLf
    Next
    
    txtDebug(1) = strDispString
End Sub
Public Sub x1500_Display_aBlock()
'Dim aBlocks(9000, 13) '1 - Block Number(1, 2 or 3), 2,3 & 4 - Row number,  5 - 13 Column 1 - 9 totals
    Dim strDebug As Variant
    
    Dim strDebug2 As String
    strDebug = ""
    For i = 1 To iBlks
            'If i > 1000 Then
                    'strDebug2 = strDebug2 & i '& "-"
                strDebug = ""
                For ii = 1 To 13
                    strDebug = strDebug & aBlocks(i, ii) & " "
                Next
                'strDebug2 = strDebug2 & strDebug & vbCrLf
                'txtDebug(2) = txtDebug(2) & i & "-" & strDebug & vbCrLf
                txtDebug(2) = txtDebug(2) & strDebug & vbCrLf
            'End If
    Next
    'txtDebug(2) = strDebug2
End Sub
Private Sub btn_Populate_Click()
    If Option2(0) = True Then
        'tCell(0) = 6
        'tCell(9) = 9
        'tCell(11) = 4
        'tCell(13) = 5
        'tCell(17) = 2
        'tCell(21) = 9
        'tCell(25) = 1
        'tCell(27) = 8
        'tCell(29) = 2
        'tCell(30) = 4
        'tCell(35) = 5
        'tCell(37) = 5
        'tCell(39) = 1
        'tCell(41) = 6
        'tCell(43) = 7
        'tCell(45) = 1
        'tCell(50) = 5
        'tCell(51) = 2
        'tCell(53) = 9
        'tCell(55) = 3
        'tCell(59) = 7
        'tCell(63) = 5
        'tCell(67) = 1
        'tCell(69) = 8
        'tCell(71) = 7
        'tCell(80) = 4
          
        'Sodoku Daily Very Hard puzzle
        'tCell(1) = 3
        'tCell(6) = 4
        'tCell(8) = 5
        'tCell(20) = 7
        'tCell(25) = 1
        'tCell(30) = 7
        'tCell(31) = 9
        'tCell(33) = 5
        'tCell(38) = 6
        'tCell(40) = 5
        'tCell(42) = 8
        'tCell(45) = 2
        'tCell(49) = 4
        'tCell(52) = 7
        'tCell(53) = 3
        'tCell(57) = 9
        'tCell(58) = 2
        'tCell(62) = 7
        'tCell(64) = 4
        'tCell(66) = 3
        'tCell(69) = 9
        'tCell(75) = 1
        'tCell(77) = 6
        
        'Deomcrat 2006-05-12 2 Solutions
        tCell(1) = 1
        tCell(2) = 5
        tCell(4) = 9
        tCell(7) = 6
        tCell(15) = 3
        tCell(18) = 3
        tCell(21) = 7
        tCell(24) = 9
        tCell(27) = 4
        tCell(31) = 1
        tCell(34) = 3
        tCell(36) = 1
        tCell(39) = 2
        tCell(41) = 5
        tCell(44) = 8
        tCell(46) = 9
        tCell(49) = 6

        tCell(53) = 2
        tCell(56) = 4
        tCell(59) = 6
        tCell(62) = 1
        tCell(65) = 2
        tCell(73) = 3
        tCell(76) = 2
        tCell(78) = 7
        tCell(79) = 8
       
    Else
        tCell(1) = 9
        tCell(8) = 5
        tCell(11) = 7
        tCell(12) = 8
        tCell(13) = 3
        tCell(20) = 8
        tCell(23) = 6
        tCell(26) = 3
        tCell(30) = 5
        tCell(31) = 6
        tCell(32) = 7
        tCell(34) = 1
        tCell(39) = 1
        tCell(45) = 9
        tCell(46) = 5
        tCell(51) = 3
        tCell(55) = 4
        tCell(61) = 9
        tCell(62) = 2
        tCell(68) = 8
        tCell(69) = 6
        tCell(75) = 9
        tCell(76) = 1
    End If
End Sub

