<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="byaneh.aspx.cs" Inherits="se" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--container--%>
    <div class="container">
        <br />
        <br />
        <%--row header--%>
        <div class="row">
            <div class="col-md-12 col-sm-12 text-center">
                <p style="font-size: 20px; text-align: center">فرم ثبت بیعانه مشتریان</p>
                <img src="images/222.png" style="height:50px" />
            </div>

            <br />
        </div>
        <%--row header--%>


        <%--row 1--%>
        <div class="row">

            <div class="span4">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter">نام و نام خانوادگی: <span class="red-clr bold">*</span></label>
                    <div class="controls">
                        <asp:TextBox ID="TextBox4" runat="server" class="span4 offse4 text-center" Height="35px"  ></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="span4">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter">تلفن تماس: <span class="red-clr bold">*</span></label>
                    <div class="controls">
                        <asp:TextBox ID="TextBox5" runat="server" class="span4 offse4 text-center" Height="35px"       MaxLength="11"></asp:TextBox>
                    </div>
                </div>
            </div>


             <div class="span4">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter;color:black">مبلغ بیعانه (بر حسب ریال) : <span class="red-clr bold">*</span></label>
                    <div class="controls">
                        <asp:TextBox ID="txt_byn" runat="server" class="span4 text-center" Height="35px" placeholder="مبلغ بر حسب ریال"  style=" -webkit-appearance: none;font-size:20px "   onkeyup="javascript:this.value=Comma(this.value);"></asp:TextBox>
                    </div>
                </div>
            </div>


        </div>
        <%--row 1--%>


        <%--row 2--%>
        <div class="row">
            <div class="span2">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter">پایه تحصیلی: <span class="red-clr bold">*</span></label>
                    <div class="controls">
                        <asp:DropDownList ID="DropDownList2" runat="server" class="span2">
                            <asp:ListItem Value="0">انتخاب پایه  </asp:ListItem>
                            <asp:ListItem Value="1">اول ابتدایی</asp:ListItem>
                            <asp:ListItem Value="2">دوم ابتدایی</asp:ListItem>
                            <asp:ListItem Value="3">سوم ابتدایی</asp:ListItem>
                            <asp:ListItem Value="4">چهارم ابتدایی</asp:ListItem>
                            <asp:ListItem Value="5">پنجم ابتدایی</asp:ListItem>
                            <asp:ListItem Value="6">ششم ابتدایی</asp:ListItem>
                            <asp:ListItem Value="7">پایه هفتم</asp:ListItem>
                            <asp:ListItem Value="8">پایه هشتم</asp:ListItem>
                            <asp:ListItem Value="9">پایه نهم</asp:ListItem>
                            <asp:ListItem Value="10">پایه دهم</asp:ListItem>
                            <asp:ListItem Value="11">پایه یازدهم</asp:ListItem>
                            <asp:ListItem Value="12">پایه دوازدهم</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

         
            <div class="span2">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter">نام مدرسه: <span class="red-clr bold">*</span></label>
                    <div class="controls">
                        <asp:DropDownList ID="DropDownList4" runat="server" class="span2" DataTextField="madrase" DataValueField="madrase" DataSourceID="SqlDataSource2"></asp:DropDownList>
                      
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:poshakConnectionString %>" SelectCommand="SELECT [madrase] FROM [tbl_madrase]"></asp:SqlDataSource>
                      
                    </div>
                </div>
            </div>

              <div class="span2">
                <div class="control-group">
                    <label class="control-label" style="font-size: 18px; font-weight: lighter">جنسیت : <span class="red-clr bold">*</span></label>
                    <div class="controls">
                        <asp:DropDownList ID="DropDownList7" runat="server" class="span2">
                            <asp:ListItem Value="1">آقا</asp:ListItem>
                            <asp:ListItem Value="2">خانم</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>


            <div class="span2">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter">سایز: <span class="red-clr bold">*</span></label>
                    <div class="controls">
                       <asp:DropDownList ID="DropDownList1" runat="server" class="span2" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                           
                            <asp:ListItem Value="20">20</asp:ListItem>
                            <asp:ListItem Value="22">22</asp:ListItem>
                            <asp:ListItem Value="24">24</asp:ListItem>
                            <asp:ListItem Value="26">26</asp:ListItem>
                            <asp:ListItem Value="28">28</asp:ListItem>
                            <asp:ListItem Value="30">30</asp:ListItem>
                            <asp:ListItem Value="32">32</asp:ListItem>
                            <asp:ListItem Value="34">34 </asp:ListItem>
                            <asp:ListItem Value="36">36</asp:ListItem>
                            <asp:ListItem Value="38">38 </asp:ListItem>
                            <asp:ListItem Value="40">40</asp:ListItem>
                            <asp:ListItem Value="42">42</asp:ListItem>
                            <asp:ListItem Value="44">44</asp:ListItem>
                            <asp:ListItem Value="46">46</asp:ListItem>
                           <asp:ListItem Value="oversize">oversize</asp:ListItem>
                       </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="span2">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter">تعداد: <span class="red-clr bold">*</span></label>
                    <div class="controls">
                       <asp:DropDownList ID="DropDownList6" runat="server" class="span2">
                           <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2 </asp:ListItem>
                            <asp:ListItem Value="3">3 </asp:ListItem>
                            <asp:ListItem Value="4">4 </asp:ListItem>
                            <asp:ListItem Value="5">5 </asp:ListItem>
                       </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="span2">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter">جنس پارچه: <span class="red-clr bold">*</span></label>
                    <div class="controls">
                        <asp:DropDownList ID="DropDownList3" runat="server" class="span2" DataSourceID="SqlDataSource1" DataTextField="noparche" DataValueField="noparche">
                           
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:poshakConnectionString %>" SelectCommand="SELECT [noparche] FROM [tbl_parche]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
        <%--row 2--%>


        <%--row 3--%>
        <div class="row">

            <div class="span4">
                <div class="control-group">
                    <label class="control-label" style="font-size:18px; font-weight:lighter" >اضافات: <span class="red-clr bold">*</span></label>
                    <div class="controls">
                        <asp:DropDownList ID="DropDownList5" runat="server" class="span4" DataTextField="name" DataValueField="name" >
                            <asp:ListItem>شلوار</asp:ListItem>
                            <asp:ListItem>مقنعه</asp:ListItem>
                            <asp:ListItem>آرم</asp:ListItem>
                        </asp:DropDownList>                   
                        
                    </div>
                </div>
            </div>
           
            <div class="span1">
                <div class="control-group">
                    <label class="control-label" style="color:#efefef"">****<span class="red-clr bold"></span></label>
                    <div style="text-align: center">
                        <asp:Button ID="Button2" Class="btn btn-info btn-large" runat="server" Text="اضافه" OnClick="Button2_Click" />
                    </div>
            </div>

                </div>
            <div class="span3">
                <div class="control-group">
                    <label class="control-label" style="color:#efefef"">اضافه کردن موارد: <span class="red-clr bold"></span></label>
                </div>
            </div>


            <div class="span1">
                                                                <asp:TextBox ID="TextBox1" Visible="false" runat="server" class="span4 text-center" Height="35px"  placeholder="مبلغ بر حسب ریال"  style=" -webkit-appearance: none;font-size:20px "   onkeyup="javascript:this.value=Comma(this.value);"></asp:TextBox>                

                <div class="control-group">
                    <label class="control-label"  style="color:#efefef""> **** <span class="red-clr bold"></span></label>
                    <div style="text-align: center">
                        <asp:Button ID="Button1" Class="btn btn-info btn-large" runat="server" Text="ثبت بیعانه مشتری" OnClick="Button1_Click" />
                    </div>
                </div>

            </div>
            
        </div>

        <%--row 3--%>





        <br />
            <div class="row">
                <div class="span6" style="text-align: center">

                <asp:GridView ID="GridView1" runat="server" style="text-align: center" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None" Width="443px" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="کد" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="نام مورد" SortExpression="name" />
                        <asp:BoundField DataField="size" HeaderText="سایز" SortExpression="size" />
                        <asp:BoundField DataField="gimat" HeaderText="قیمت" SortExpression="gimat" />
                        <asp:TemplateField HeaderText="حذف">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('آیا از حذف مورد مطمئن هستید؟')" CommandArgument='<%# Eval("id") %>'>حذف</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                        

                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:poshakConnectionString %>" SelectCommand="SELECT [size], [gimat], [name], [id] FROM [tbl_movagat]"></asp:SqlDataSource>
                        

                </div>
            </div>

        <%--row 3--%>
    </div>

    <script>
        //function to add commas to textboxes
        function Comma(Num) {
            Num += '';
            Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
            Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
            x = Num.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1))
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            return x1 + x2;

        }


    </script>

    <%--container--%>
</asp:Content>

