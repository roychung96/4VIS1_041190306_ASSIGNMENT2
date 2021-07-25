<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Q2.aspx.vb" Inherits="Question_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Q</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="LinqDataSource1" Height="50px" Width="777px">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="title_Name" HeaderText="Title Name" SortExpression="title_Name" />
                <asp:BoundField DataField="release_Year" HeaderText="Release Year" SortExpression="release_Year" />
                <asp:BoundField DataField="release_Month" HeaderText="Release Month" SortExpression="release_Month" />
                <asp:BoundField DataField="game_Platform" HeaderText="Game Platform" SortExpression="game_Platform" />
                <asp:BoundField DataField="designers" HeaderText="Designers" SortExpression="designers" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Question_2.DataClasses1DataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Viewers">
        </asp:LinqDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="LinqDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="title_NameLabel" runat="server" Text='<%# Eval("title_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="release_YearLabel" runat="server" Text='<%# Eval("release_Year") %>' />
                    </td>
                    <td>
                        <asp:Label ID="release_MonthLabel" runat="server" Text='<%# Eval("release_Month") %>' />
                    </td>
                    <td>
                        <asp:Label ID="game_PlatformLabel" runat="server" Text='<%# Eval("game_Platform") %>' />
                    </td>
                    <td>
                        <asp:Label ID="designersLabel" runat="server" Text='<%# Eval("designers") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="title_NameTextBox" runat="server" Text='<%# Bind("title_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="release_YearTextBox" runat="server" Text='<%# Bind("release_Year") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="release_MonthTextBox" runat="server" Text='<%# Bind("release_Month") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="game_PlatformTextBox" runat="server" Text='<%# Bind("game_Platform") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="designersTextBox" runat="server" Text='<%# Bind("designers") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="title_NameTextBox" runat="server" Text='<%# Bind("title_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="release_YearTextBox" runat="server" Text='<%# Bind("release_Year") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="release_MonthTextBox" runat="server" Text='<%# Bind("release_Month") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="game_PlatformTextBox" runat="server" Text='<%# Bind("game_Platform") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="designersTextBox" runat="server" Text='<%# Bind("designers") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="title_NameLabel" runat="server" Text='<%# Eval("title_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="release_YearLabel" runat="server" Text='<%# Eval("release_Year") %>' />
                    </td>
                    <td>
                        <asp:Label ID="release_MonthLabel" runat="server" Text='<%# Eval("release_Month") %>' />
                    </td>
                    <td>
                        <asp:Label ID="game_PlatformLabel" runat="server" Text='<%# Eval("game_Platform") %>' />
                    </td>
                    <td>
                        <asp:Label ID="designersLabel" runat="server" Text='<%# Eval("designers") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">Id</th>
                                    <th runat="server">Title Name</th>
                                    <th runat="server">Release Year</th>
                                    <th runat="server">Release Month</th>
                                    <th runat="server">Game Platform</th>
                                    <th runat="server">Designers</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="title_NameLabel" runat="server" Text='<%# Eval("title_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="release_YearLabel" runat="server" Text='<%# Eval("release_Year") %>' />
                    </td>
                    <td>
                        <asp:Label ID="release_MonthLabel" runat="server" Text='<%# Eval("release_Month") %>' />
                    </td>
                    <td>
                        <asp:Label ID="game_PlatformLabel" runat="server" Text='<%# Eval("game_Platform") %>' />
                    </td>
                    <td>
                        <asp:Label ID="designersLabel" runat="server" Text='<%# Eval("designers") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
