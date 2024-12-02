<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BloggingSite.Admin" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Add Blog</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Admin Dashboard</h1>
            <nav>
                <ul>
                    <li><a href="Blog.aspx">Home</a></li>
                    <li><a href="Admin.aspx">Admin</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <h2>Add a New Blog Post</h2>
            <form id="addBlogForm" runat="server">
                <div>
                    <label for="txtTitle">Blog Title</label>
                    <asp:TextBox ID="txtTitle" runat="server" required="true"></asp:TextBox>
                </div>
                <div>
                    <label for="txtContent">Content</label>
                    <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" required="true"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </div>
            </form>
        </main>
    </div>
</body>
</html>
