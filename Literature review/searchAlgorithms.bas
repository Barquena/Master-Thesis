'####################################################'
'# Writen by : Charles Desrosiers-Gagnon            #'
'# Last update : February 11, 2024                  #'
'# To se the README.txt to full description of code #'
'####################################################'

Attribute VB_Name = "Module1"

'Call both function'
Sub tri()
Attribute tri.VB_ProcData.VB_Invoke_Func = "F\n14"
 Call findIncluded
 Call findDoubles
End Sub

   
Sub findIncluded()
Attribute findIncluded.VB_ProcData.VB_Invoke_Func = "F\n14"
    Dim nbLignes As Integer
    Dim nbColones As Integer
    Dim str As String, article
    Dim i As Integer
    Dim j As Integer
    Dim k As Integer
    Dim art As Integer
    

    Set zoneTable = Sheets("essai").Range("A2").CurrentRegion 'List of articles that need to be check if relevant for our study 
    Set zoneArticle = Sheets("liste").Range("B1").CurrentRegion 'List of articles already found and included in the review
    
    'nbLignes1 = zoneTable.Rows.Count
    nbLignes2 = zoneArticle.Rows.Count
    
    'MsgBox (nbLignes)
    nbColones = Sheets("essai").Columns.Count
    'MsgBox (nbColones)
    
    For i = 1 To nbColones
    On Error GoTo ErrMsG
        zoneTable.Cells(, i).Select
        Range(Selection, Selection.End(xlDown)).Select
        
        nbLignes1 = Application.Selection.Cells.Count
        
        For j = 2 To nbLignes1
            For k = 2 To nbLignes2
'                ' definition des zones d'observations
                 If zoneTable.Cells(j, i).Interior.ColorIndex <> xlNone Then Exit For
                 If zoneTable.Cells(j, i).Interior.ColorIndex = 3 Then Exit For
                 str = zoneTable.Cells(j, i).Value
                 If str = "" Then Exit Sub
                 article = zoneArticle.Cells(k, 2).Value
                 

'
                 art = InStrRev(str, article) ' avoid redundancy and speed up algorithm
'
'
                
                
                If art > 0 Then zoneTable.Cells(j, i).Interior.ColorIndex = 3 ' red : article already pick
                
            Next k
        Next j
    Next i

ErrMsG:
   MsgBox "There seems to be an error" & vbCrLf & Err.Description
   Exit Sub
End Sub
Sub findIrrelavant()
    Dim nbLignes As Integer
    Dim nbColones As Integer
    Dim str As String, article
    Dim i As Integer
    Dim j As Integer
    Dim k As Integer
    Dim art As Integer
    

    Set zoneTable = Sheets("essai").Range("A2").CurrentRegion
    Set zoneArticle = Sheets("listeIrrelevant").Range("A1").CurrentRegion
    
    'nbLignes1 = zoneTable.Rows.Count
    nbLignes2 = zoneArticle.Rows.Count
    
    'MsgBox (nbLignes)
    nbColones = Sheets("essai").Columns.Count
    'MsgBox (nbColones)
    
    For i = 1 To nbColones
    On Error GoTo ErrMsG
        zoneTable.Cells(, i).Select
        Range(Selection, Selection.End(xlDown)).Select
        
        nbLignes1 = Application.Selection.Cells.Count
        
        For j = 1 To nbLignes1
            
            For k = 1 To nbLignes2
'                ' definition des zones d'observations
                 If zoneTable.Cells(j, i).Interior.ColorIndex <> xlNone Then Exit For
                 If zoneTable.Cells(j, i).Interior.ColorIndex = 3 Then Exit For
                 str = zoneTable.Cells(j, i).Value
                 If str = "" Then Exit Sub
                 article = zoneArticle.Cells(k, 1).Value
                 

'
                 art = InStrRev(str, article) ' article pour eviter la redondance
'
'
                
                
                If art > 0 Then
                    zoneTable.Cells(j, i).Interior.ColorIndex = 3 ' rouge : article deja selectionne
                    Exit For
                End If
                
            Next k
        Next j
    Next i

ErrMsG:
   MsgBox "There seems to be an error" & vbCrLf & Err.Description
   Exit Sub
End Sub

Sub findExcluded()
    Dim nbLignes As Integer
    Dim nbColones As Integer
    Dim str As String, article
    Dim i As Integer
    Dim j As Integer
    Dim k As Integer
    Dim art As Integer
    

    Set zoneTable = Sheets("essai").Range("A2").CurrentRegion
    Set zoneArticle = Sheets("listeExcluded").Range("A1").CurrentRegion
    
    'nbLignes1 = zoneTable.Rows.Count
    nbLignes2 = zoneArticle.Rows.Count
    
    'MsgBox (nbLignes)
    nbColones = Sheets("essai").Columns.Count
    'MsgBox (nbColones)
    
    For i = 1 To nbColones
    On Error GoTo ErrMsG
        zoneTable.Cells(, i).Select
        Range(Selection, Selection.End(xlDown)).Select
        
        nbLignes1 = Application.Selection.Cells.Count
        
        For j = 2 To nbLignes1
            
            For k = 2 To nbLignes2
'                ' definition des zones d'observations
                 If zoneTable.Cells(j, i).Interior.ColorIndex <> xlNone Then Exit For
                 If zoneTable.Cells(j, i).Interior.ColorIndex = 3 Then Exit For
                 str = zoneTable.Cells(j, i).Value
                 If str = "" Then Exit Sub
                 article = zoneArticle.Cells(k, 1).Value
                 

'
                 art = InStrRev(str, article) ' article pour eviter la redondance
'
'
                
                
                If art > 0 Then
                    zoneTable.Cells(j, i).Interior.ColorIndex = 3 ' rouge : article deja selectionne
                    Exit For
                End If
            Next k
        Next j
    Next i

ErrMsG:
   MsgBox "There seems to be an error" & vbCrLf & Err.Description
   Exit Sub
End Sub
Sub findRelevant()
    Dim nbLignes As Integer
    Dim nbColones As Integer
    Dim str As String, article As String
    Dim i As Integer
    Dim congMin  As Integer, congMax As Integer, srvMin As Integer, srvMax  As Integer
    
    
    
    Set zoneTable = Sheets("essai").Range("A2").CurrentRegion
    
    zoneTable.Cells(, 1).Select
    Range(Selection, Selection.End(xlToRight)).Select
    nbColones = Application.Selection.Cells.Count
    
    
    
    For i = 1 To nbColones
        'If coloneIterer = nbColones Then GoTo skip
        On Error GoTo ErrMsG
        
            zoneTable.Cells(, i).Select
            Range(Selection, Selection.End(xlDown)).Select
            
            nbLignes = Application.Selection.Cells.Count
            
            For j = 2 To nbLignes
                
                If zoneTable.Cells(j, i).Interior.ColorIndex = 38 Then GoTo skip 'rose
                If zoneTable.Cells(j, i).Interior.ColorIndex = 28 Then GoTo skip 'bleu
                If zoneTable.Cells(j, i).Interior.ColorIndex = 6 Then GoTo skip 'jaune
                If zoneTable.Cells(j, i).Interior.ColorIndex = 3 Then GoTo skip 'rouge
                If zoneTable.Cells(j, i).Interior.ColorIndex = 54 Then GoTo skip 'bourgogne
                
                article = zoneTable.Cells(j, i).Value
                
                str = zoneTable.Cells(j, i).Value
                If str = "" Then Exit Sub
                             
                             
                congMax = InStrRev(article, "Congenital")
                congMin = InStrRev(article, "congenital")
                srvMin = InStrRev(article, "systemic right ventricle")
                srvMax = InStrRev(article, "systemic right ventricle")
                
                'congenital
                If congMax > 0 Or congMin > 0 Then
                    zoneTable.Cells(j, i).Interior.ColorIndex = 28
                    'systemic right ventricle
                    If srvMin > 0 Or srvMax > 0 Then zoneTable.Cells(j, i).Interior.ColorIndex = 38
                Else
                    zoneTable.Cells(j, i).Interior.ColorIndex = 6
                End If
                
skip:
             Next j

    Next i

ErrMsG:
   MsgBox "There seems to be an error" & vbCrLf & Err.Description
   Exit Sub
                            
End Sub

'From thes articles that were found and were relevant to our search criterias, remove duplicate.
Sub findDoubles()

    Dim nbLignes As Long
    Dim nbColones As Long, colonesIterer As Long
    Dim str As String, article As String
    Dim i As Long
    Dim j As Long
    
    
    
    
    Dim k As Long
    Dim art As Long
    
    Set zoneTable = Sheets("essai").Range("A2").CurrentRegion
    
    zoneTable.Cells(, 1).Select
    Range(Selection, Selection.End(xlToRight)).Select
    nbColones = Application.Selection.Cells.Count
    
    
    
    For i = 1 To nbColones
        'If coloneIterer = nbColones Then GoTo skip
        On Error GoTo ErrMsG
        
            zoneTable.Cells(, i).Select
            Range(Selection, Selection.End(xlDown)).Select
            
            nbLignes1 = Application.Selection.Cells.Count
            
            For j = 2 To nbLignes1
                str = zoneTable.Cells(j, i).Value
                If str = "" Then Exit Sub
                For coloneIterer = nbColones To 1 Step -1
                
                    zoneTable.Cells(, coloneIterer).Select
                    Range(Selection, Selection.End(xlDown)).Select
                    nbLignes2 = Application.Selection.Cells.Count
                    
                        For k = 2 To nbLignes2
                            
                             ' definition des zones d'observations
                             'If zoneTable.Cells(j, i).Interior.ColorIndex <> xlNone Then Exit For
                             If zoneTable.Cells(k, coloneIterer).Interior.ColorIndex <> xlNone Then GoTo skip
                             If zoneTable.Cells(k, coloneIterer).Interior.ColorIndex = 3 Then GoTo skip
                             If zoneTable.Cells(k, coloneIterer).Interior.ColorIndex = 54 Then GoTo skip
                             
                             
                             article = zoneTable.Cells(k, coloneIterer).Value
                             
                             
                             
                                
                             art = InStrRev(str, article) ' Avoid redundancy
                            
                             ' If not in red, put to yellow if it is a duplicat 
                            
                             If art > 0 And j <> k And i <> coloneIterer Then
                                    If zoneTable.Cells(k, coloneIterer).Interior.ColorIndex <> 4 Then
                                        zoneTable.Cells(k, coloneIterer).Interior.ColorIndex = 54
                                        zoneTable.Cells(j, i).Interior.ColorIndex = 4 'OG
                                        
                                    End If
                             End If
skip:
                            
                              
                    Next k
                        
            Next coloneIterer
            
            
        Next j
'skip:
'       coloneIterer = coloneIterer + 1
    Next i

ErrMsG:
   MsgBox "There seems to be an error" & vbCrLf & Err.Description
   Exit Sub
End Sub
