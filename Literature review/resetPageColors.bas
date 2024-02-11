Attribute VB_Name = "Module4"
'test


Sub resetYGP()
Attribute resetYGP.VB_ProcData.VB_Invoke_Func = "R\n14"
'ctrl-shift-R
    Dim nbLignes As Integer
    Dim nbColones As Integer, colonesIterer As Integer
    Dim str As String, article As String
    Dim i As Integer
    Dim j As Integer
    Dim congMin  As Integer, congMax As Integer, srvMin As Integer, srvMax  As Integer
    
    
    
    Dim k As Integer
    Dim art As Integer
    
    Set zoneTable = Sheets("essai").Range("A2").CurrentRegion
    
    zoneTable.Cells(, 1).Select
    Range(Selection, Selection.End(xlToRight)).Select
    nbColones = Application.Selection.Cells.Count
    
    
    
    For i = 1 To nbColones
    On Error GoTo ErrMsG
        
            zoneTable.Cells(, i).Select
            Range(Selection, Selection.End(xlDown)).Select
            
            nbLignes1 = Application.Selection.Cells.Count
            
            For j = 2 To nbLignes1
            
            
                If zoneTable.Cells(j, i).Interior.ColorIndex = 4 _
                    Or zoneTable.Cells(j, i).Interior.ColorIndex = 6 _
                    Or zoneTable.Cells(j, i).Interior.ColorIndex = 28 _
                    Or zoneTable.Cells(j, i).Interior.ColorIndex = 54 _
                    Or zoneTable.Cells(j, i).Interior.ColorIndex = 38 Then
                        
                        zoneTable.Cells(j, i).Interior.ColorIndex = xlNone
                    
                End If
            Next j
    Next i
ErrMsG:
   MsgBox "There seems to be an error" & vbCrLf & Err.Description
   Exit Sub
End Sub

