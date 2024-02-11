'####################################################'
'# Writen by : Charles Desrosiers-Gagnon            #'
'# Last update : February 11, 2024                  #'
'# To se the README.txt to full description of code #'
'####################################################'

Attribute VB_Name = "Module2"
'enlever 1 premiers characteres
Sub removeFirst1()
Attribute removeFirst1.VB_ProcData.VB_Invoke_Func = "P\n14"
    Dim zone As Range
    
    On Error Resume Next
    Set zone = Application.InputBox( _
      Title:="Remplacer les 1 premiers caracteres", _
      Prompt:="Rentrez la plage de donnes a remplacer", _
      Type:=8)
    On Error GoTo 0
    
    'Test to ensure User Did not cancel
    If zone Is Nothing Then Exit Sub
    
    
    For Each c In zone
        c.Value = Application.WorksheetFunction.Replace(c.Value, 1, 1, "")
    Next
End Sub
'enlever 3 premiers characteres
Sub removeFirst3()
Attribute removeFirst3.VB_ProcData.VB_Invoke_Func = "T\n14"
    Dim zone As Range
    
    On Error Resume Next
    Set zone = Application.InputBox( _
      Title:="Remplacer les 3 premiers caracteres", _
      Prompt:="Rentrez la plage de donnes a remplacer", _
      Type:=8)
    On Error GoTo 0
    
    'Test to ensure User Did not cancel
    If zone Is Nothing Then Exit Sub
    
    
    For Each c In zone
        c.Value = Application.WorksheetFunction.Replace(c.Value, 1, 3, "")
    Next
End Sub

'enlever 4 premiers characteres
Sub removeFirst4()
Attribute removeFirst4.VB_ProcData.VB_Invoke_Func = "Q\n14"
    Dim zone As Range
    
    On Error Resume Next
    Set zone = Application.InputBox( _
      Title:="Remplacer les 4 premiers caracteres", _
      Prompt:="Rentrez la plage de donnes a remplacer", _
      Type:=8)
    On Error GoTo 0
    
    'Test to ensure User Did not cancel
    If zone Is Nothing Then Exit Sub
    
    
    For Each c In zone
        c.Value = Application.WorksheetFunction.Replace(c.Value, 1, 4, "")
    Next
End Sub

Sub mettreEnMinuscule()

  Dim zone As Range
    
    On Error Resume Next
    Set zone = Application.InputBox( _
      Title:="METTRE EN MINUSCULE", _
      Prompt:="Rentrez la plage de donnes a remplacer", _
      Type:=8)
    On Error GoTo 0
    
    'Test to ensure User Did not cancel
    If zone Is Nothing Then Exit Sub
    
    On Error GoTo skip
    For Each c In zone
        
        c.Value = LCase(c.Value)
skip:
    
    Next

End Sub

Sub enleverDernierCaractere()

    Dim zone As Range
    Dim point As String
    Dim compare As String
    
    compare = "."
    
        On Error Resume Next
        Set zone = Application.InputBox( _
            Title:="ENLEVER DERNIER CARACTERE", _
            Prompt:="Rentrez la plage de donnes a remplacer", _
            Type:=8)
        On Error GoTo 0
        
        'Test to ensure User Did not cancel
        If zone Is Nothing Then Exit Sub
    
        On Error GoTo skip
        For Each c In zone
            point = Right(c.Value, 1)
            If InStrRev(point, compare) > 0 Then
                c.Value = Left(c.Value, Len(c.Value) - 1)
            End If
skip:
    
        Next
End Sub


Sub subTrim()
    Dim nbLignes As Integer
    Dim nbColones As Integer
    Dim i As Integer
    Dim j As Integer
    
    

    Set zoneTable = Sheets("essai").Range("A2").CurrentRegion
    
    
    'MsgBox (nbLignes)
    nbColones = Sheets("essai").Columns.Count
    'MsgBox (nbColones)
    
    For i = 1 To nbColones
    On Error GoTo ErrMsG
        zoneTable.Cells(, i).Select
        Range(Selection, Selection.End(xlDown)).Select
        
        nbLignes1 = Application.Selection.Cells.Count
        
        For j = 2 To nbLignes1
            zoneTable.Cells(j, i).Value = WorksheetFunction.Trim(zoneTable.Cells(j, i).Value)
        Next j
    Next i

ErrMsG:
   MsgBox "There seems to be an error" & vbCrLf & Err.Description
   Exit Sub
End Sub
