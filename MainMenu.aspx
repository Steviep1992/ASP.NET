<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="MainMenu.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Intro box Class-->
    <div class="jumbotron">
        <h1>HELLO THERE!</h1>
        <p class="lead">This is me, Steve. This project was made to show the many different programs I wrote in ASP.NET</p>
        <p><a href="http://www.github.com/steviep1992" class="btn btn-primary btn-lg">Back to my github &raquo;</a></p>
    </div>

    <!-- Bio Class-->
    <div class="row">
        <div class="col-md-4">
            <h2>A little bit about me and this project</h2>
            <p>
                My name is Steven Prestridge, and I am fairly new to asp.net. Everything that I know about asp.net is from my self teachings. I have experience with writing Java, HTML, and CSS so using
                asp.net in C# should be pretty similar to what I have done in the past. I have made this little project as a showcase for what I am practicing and learning. Below are some basic programs I have written to showcase what I have been learning. I hope you enjoy!
            </p>
            <p>
                <a class="btn btn-default" href="http://www.linkedin.com/in/steven-prestridge-9b94b3146/">To my LinkedIn Page &raquo;</a>
            </p>
        </div>

        <!-- Practice coding description class-->
        <div class="col-md-4">
            <h2>How often do I practice coding</h2>
            <p>
                I tend to practice coding at least 3 times a week for at least 6 hours each day. I tend to do a couple hours of practicing old techniques to start the day, and then move onto learning new things towards the middle of the day. 
                This is because it is just as important to learn as it is to practice what I already know. 
            </p>
            
        </div>

        <!-- Love for computers class-->
        <div class="col-md-4">
            <h2>What I love about computers</h2>
            <p>
              I learned at a very young age that I was always tech savy. Even as a kid I was always very interested in technology and how it works. I remember when I was about 10 me and my neighbor were learning how to mod our x box for fun, mainly just to see what we can do with it once we "broke" our x boxes. 
                As I got older I went the blue collar route and was working as a contractor while I tried to figure out what I wanted to go to school for. While I would never say anything bad about any job I have worked, I knew contracting wasn't something I wanted to do my entire life. So I then went to college to pursue a degree in Web Development and Administration. After my degree I also went on to get 2 certifications, one in Big Data Engineering, and the other in Python/Spark.
            </p>
              <br />
             <br />
             <br />
             <br />

            
            <br />
            </div>
        
        <h1>--------SAMPLE PROGRAMS BELOW--------</h1>
            
           <!-- Program to change the input to uppercase-->
<script runat="server">

   private void convertoupper(object sender, EventArgs e)
   {
      string str = mytext.Value;
      changed_text.InnerHtml = str.ToUpper();
   }
</script>
       
       
      <h3> Conversion to Upper Case </h3>
      
         <input runat="server" id="mytext" type="text" />
         <input runat="server" id="button1" type="submit" value="Enter..." OnServerClick="convertoupper"/>
         
         
         <h3> Results: </h3>
         <span runat="server" id="changed_text" />
    <hr />
        
        <br />
    

        <script runat="server">
   private void convertolower(object sender, EventArgs e)
   {
      string str1 = Text2.Value;
      changed_text2.InnerHtml = str1.ToLower();
   }
</script>
       
       
      <h3> Conversion to Lower Case </h3>
      
         <input runat="server" id="Text2" type="text" />
         <input runat="server" id="Submit2" type="submit" value="Enter..." OnServerClick="convertolower"/>
         
        
         <h3> Results: </h3>
         <span runat="server" id="changed_text2" />
    <hr />
        


    <h3>Database</h3>
    <h5>Simple select all statement from a table in a sample database I made in sql server</h5>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="FavoriteSport" HeaderText="FavoriteSport" SortExpression="FavoriteSport" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Info]"></asp:SqlDataSource>

    


    <br />
    <br />
    <br />
     <h5> Select all statement from a table in a sample database including where clause of "age < 30" I made in sql server</h5>


    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="FavoriteSport" HeaderText="FavoriteSport" SortExpression="FavoriteSport" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Info] WHERE ([Age] &lt; @Age)">
        <SelectParameters>
            <asp:Parameter DefaultValue="30" Name="Age" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    
    
    </div>
    
    
    
</asp:Content>
