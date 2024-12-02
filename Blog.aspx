<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="BloggingSite.Blog" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogging Site</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Blogging Site</h1>
            <nav>
                <ul>
                    <li><a href="Blog.aspx">Home</a></li>
                    <li><a href="Admin.aspx">Admin</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <h2>Latest Blogs</h2>
            <div id="blogList">
                <!-- Blog posts will be displayed here -->
                <asp:Repeater ID="rptBlogs" runat="server">
                    <ItemTemplate>
                        <div class="blog-post">
                            <h3><%# Eval("Title") %></h3>
                            <p><%# Eval("Content") %></p>
                            <p><strong>Posted on:</strong> <%# Eval("DatePosted", "{0:MM/dd/yyyy}") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <div class="pagination">
                <asp:Label ID="lblPageInfo" runat="server" Text=""></asp:Label>
                <asp:Button ID="btnPrev" runat="server" Text="Previous" OnClick="btnPrev_Click" />
                <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
            </div>
        </main>
    </div>
</body>
</html>
