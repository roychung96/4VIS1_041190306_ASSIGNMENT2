Class MainWindow
    'DataClasses1.dbml connection context
    Dim databaseContext As New DataClasses1DataContext
    Private Sub Window_Loaded(sender As Object, e As RoutedEventArgs) Handles MyBase.Loaded
        ReloadFromDatabase()

    End Sub
    Private Sub ReloadFromDatabase()

        Dim ViewerViewSource As System.Windows.Data.CollectionViewSource = CType(Me.FindResource("ViewerViewSource"), System.Windows.Data.CollectionViewSource)
        'Load data by setting the CollectionViewSource.Source property:
        'ViewerViewSource.Source = [generic data source]

        'Use LINQ query all the photos
        Dim dataQuery = From datas In databaseContext.Viewers Select datas

        'Load data by setting the ViewerViewSource.Source property
        ViewerViewSource.Source = dataQuery
    End Sub

  
    Private Sub btnNew_Click(sender As Object, e As RoutedEventArgs) Handles btnNew.Click
        ViewerDataGrid.SelectedIndex = -1
        Title_NameTextBox.Text = String.Empty
        DesignersTextBox.Text = String.Empty
        Game_PlatformTextBox.Text = String.Empty
        Release_MonthTextBox.Text = String.Empty
        Release_YearTextBox.Text = 0
    End Sub

    Private Sub btnAdd_Click(sender As Object, e As RoutedEventArgs) Handles btnAdd.Click
        Dim newData As New Viewer
        newData.title_Name = Title_NameTextBox.Text
        newData.designers = DesignersTextBox.Text
        newData.game_Platform = Game_PlatformTextBox.Text
        newData.release_Month = Release_MonthTextBox.Text
        newData.release_Year = Convert.ToInt32(Release_YearTextBox.Text)
        databaseContext.Viewers.InsertOnSubmit(newData)
        databaseContext.SubmitChanges()
        ReloadFromDatabase()
    End Sub

    Private Sub btnUpdate_Click(sender As Object, e As RoutedEventArgs) Handles btnUpdate.Click
        databaseContext.SubmitChanges()
    End Sub

    Private Sub bthnDelete_Click(sender As Object, e As RoutedEventArgs) Handles bthnDelete.Click
        'Remove item via dataContext
        Dim deleteItem = From datas In databaseContext.Viewers
                         Where datas.title_Name = ViewerDataGrid.SelectedValue.ToString()

        'Execute delete submission
        For Each detail As Viewer In deleteItem
            databaseContext.Viewers.DeleteOnSubmit(detail)
        Next
        databaseContext.SubmitChanges()

        ReloadFromDatabase()
    End Sub
End Class
