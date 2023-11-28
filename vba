Sub СоздатьПрезентацию()
    ' Создаем новую презентацию
    Dim pptApp As Object
    Set pptApp = CreateObject("PowerPoint.Application")
    pptApp.Visible = True
    
    ' Добавляем новый слайд
    Dim pptPres As Object
    Set pptPres = pptApp.Presentations.Add
    Dim slideIndex As Integer
    slideIndex = 1
    Dim slide As Object
    Set slide = pptPres.Slides.Add(slideIndex, ppLayoutText)
    
    ' Добавляем кольцевую диаграмму на слайд
    Dim chartObject As Object
    Set chartObject = slide.Shapes.AddChart2(Type:=xlDoughnut, Left:=100, Top:=100, Width:=375, Height:=225).Chart
    
    ' Добавляем данные к диаграмме
    chartObject.SetSourceData Source:=Range("A1:C4")
    
    ' Задаем заголовок диаграммы
    chartObject.HasTitle = True
    chartObject.ChartTitle.Text = "Кольцевая диаграмма с тремя параметрами"
    
    ' Добавляем легенду
    chartObject.HasLegend = True
    
    ' Закрываем Excel
    pptApp.Quit
    Set pptApp = Nothing
End Sub