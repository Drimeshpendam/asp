1) Write program for calculating bills. If quantity is less than 5 then there is no any discount,
If quantity is greater than 5 and less than 25 then discount is 5%, If quantity is greater than
25 and less than 50 then discount is 15%, If quantity is greater than 50 discount is 20%.

Asp.net
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;Default.aspx.cs&quot;
Inherits=&quot;_Default&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
&lt;title&gt;&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
&lt;div&gt;
&lt;table cellspacing=&quot;10&quot; cellpadding=&quot;10&quot;&gt;
&lt;tr&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;Label1&quot; runat=&quot;server&quot; Text=&quot;ITEM NAME&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;

&lt;asp:Label ID=&quot;Label2&quot; runat=&quot;server&quot; Text=&quot;PRICE&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;Label3&quot; runat=&quot;server&quot; Text=&quot;QUANTITY&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;Label4&quot; runat=&quot;server&quot; Text=&quot;DISCOUNT&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;Label5&quot; runat=&quot;server&quot; Text=&quot;TOTAL&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblItem1&quot; runat=&quot;server&quot; Text=&quot;Item_1&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblPrice1&quot; runat=&quot;server&quot; Text=&quot;200&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:TextBox ID=&quot;txtItem1Qty&quot; runat=&quot;server&quot; AutoPostBack=&quot;True&quot;
OnTextChanged=&quot;txtItem1Qty_TextChanged&quot;&gt;&lt;/asp:TextBox&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblDiscount1&quot; runat=&quot;server&quot; Text=&quot;&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblTotal1&quot; runat=&quot;server&quot; Text=&quot;&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;/tr&gt;

&lt;tr&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblItem2&quot; runat=&quot;server&quot; Text=&quot;Item_2&quot;&gt;&lt;/asp:Label&gt;

&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblPrice2&quot; runat=&quot;server&quot; Text=&quot;300&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:TextBox ID=&quot;txtItem2Qty&quot; runat=&quot;server&quot; AutoPostBack=&quot;True&quot;
OnTextChanged=&quot;txtItem2Qty_TextChanged&quot;&gt;&lt;/asp:TextBox&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblDiscount2&quot; runat=&quot;server&quot; Text=&quot;&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblTotal2&quot; runat=&quot;server&quot; Text=&quot;&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;/tr&gt;

&lt;tr&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblItem3&quot; runat=&quot;server&quot; Text=&quot;Item_3&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblPrice3&quot; runat=&quot;server&quot; Text=&quot;150&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:TextBox ID=&quot;txtItem3Qty&quot; runat=&quot;server&quot; AutoPostBack=&quot;True&quot;
OnTextChanged=&quot;txtItem3Qty_TextChanged&quot;&gt;&lt;/asp:TextBox&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblDiscount3&quot; runat=&quot;server&quot; Text=&quot;&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblTotal3&quot; runat=&quot;server&quot; Text=&quot;&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;

&lt;td&gt;
&lt;asp:Button ID=&quot;btnCalculate&quot; runat=&quot;server&quot; Text=&quot;Calculate&quot;
OnClick=&quot;btnCalculate_Click&quot; /&gt;
&lt;/td&gt;
&lt;td&gt;
&lt;asp:Label ID=&quot;lblGrandTotal&quot; runat=&quot;server&quot; Text=&quot;Grand Total = &quot; Font-Bold=&quot;True&quot; Font-
Size=&quot;Large&quot;&gt;&lt;/asp:Label&gt;
&lt;/td&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/div&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;

c#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default :System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{

}

protected void txtItem1Qty_TextChanged(object sender, EventArgs e)
{
int item1Qty = System.Convert.ToInt32(txtItem1Qty.Text);

int discount = 0;
float discountPrice = 0.0f;
if (item1Qty &gt;= 5 &amp;&amp; item1Qty &lt; 25)
{
discount = 5;
}
else if (item1Qty &gt;= 25 &amp;&amp; item1Qty &lt; 50)
{
discount = 15;
}
else if (item1Qty &gt;= 50)
{
discount = 20;
}
discountPrice = ((System.Convert.ToInt32(lblPrice1.Text)) * item1Qty) / 100 * discount;
lblDiscount1.Text = discountPrice.ToString();
lblTotal1.Text = (((System.Convert.ToInt32(lblPrice1.Text)) * item1Qty) -
discountPrice).ToString();
}

protected void txtItem2Qty_TextChanged(object sender, EventArgs e)
{
int item2Qty = System.Convert.ToInt32(txtItem2Qty.Text);
int discount = 0;
float discountPrice = 0.0f;
if (item2Qty &gt;= 5 &amp;&amp; item2Qty &lt; 25)
{
discount = 5;
}
else if (item2Qty &gt;= 25 &amp;&amp; item2Qty &lt; 50)
{
discount = 15;
}
else if (item2Qty &gt;= 50)

{
discount = 20;
}
discountPrice = ((System.Convert.ToInt32(lblPrice2.Text)) * item2Qty) / 100 * discount;
lblDiscount2.Text = discountPrice.ToString();
lblTotal2.Text = (((System.Convert.ToInt32(lblPrice2.Text)) * item2Qty) -
discountPrice).ToString();
}

protected void txtItem3Qty_TextChanged(object sender, EventArgs e)
{
int item3Qty = System.Convert.ToInt32(txtItem3Qty.Text);
int discount = 0;
float discountPrice = 0.0f;
if (item3Qty &gt;= 5 &amp;&amp; item3Qty &lt; 25)
{
discount = 5;
}
else if (item3Qty &gt;= 25 &amp;&amp; item3Qty &lt; 50)
{
discount = 15;
}
else if (item3Qty &gt;= 50)
{
discount = 20;
}
discountPrice = ((System.Convert.ToInt32(lblPrice3.Text)) * item3Qty) / 100 * discount;
lblDiscount3.Text = discountPrice.ToString();
lblTotal3.Text = (((System.Convert.ToInt32(lblPrice3.Text)) * item3Qty) -
discountPrice).ToString();
}

protected void btnCalculate_Click(object sender, EventArgs e)
{
int t1 = System.Convert.ToInt32(lblTotal1.Text);

int t2 = System.Convert.ToInt32(lblTotal2.Text);
int t3 = System.Convert.ToInt32(lblTotal3.Text);

lblGrandTotal.Text = (t1 + t2 + t3).ToString();
}
}

2. &lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;Default.aspx.cs&quot;
Inherits=&quot;_Default&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
&lt;title&gt;&lt;/title&gt;
&lt;link
&lt;/head&gt;

&lt;body style=&quot;height: 586px; width: 1294px&quot;&gt;
&lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
&lt;div style=&quot;background-color:gray; width: 1005px; height: 541px;&quot;&gt;

&amp;nbsp;
&lt;br /&gt;

&lt;asp:Label ID=&quot;Label1&quot; runat=&quot;server&quot; Text=&quot;Label&quot;&gt;Enter the Name:&lt;/asp:Label&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;asp:TextBox ID=&quot;TextBox1&quot; runat=&quot;server&quot;&gt;&lt;/asp:TextBox&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;br /&gt;

&lt;asp:Label ID=&quot;Label2&quot; runat=&quot;server&quot; Text=&quot;Label&quot;&gt;Etner the Marks of BCA-
301:&lt;/asp:Label&gt;
&amp;nbsp;
&lt;asp:TextBox ID=&quot;TextBox2&quot; runat=&quot;server&quot;&gt;&lt;/asp:TextBox&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;br /&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;

&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;asp:Label ID=&quot;Label8&quot; runat=&quot;server&quot; Text=&quot;Total: &quot;&gt;&lt;/asp:Label&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;asp:Label ID=&quot;lbltotal&quot; runat=&quot;server&quot;&gt;&lt;/asp:Label&gt;
&amp;nbsp;&amp;nbsp;
&lt;br /&gt;
&lt;asp:Label ID=&quot;Label3&quot; runat=&quot;server&quot; Text=&quot;Label&quot;&gt;Etner the Marks of BCA-
302:&lt;/asp:Label&gt;
&amp;nbsp;
&lt;asp:TextBox ID=&quot;TextBox3&quot; runat=&quot;server&quot;&gt;&lt;/asp:TextBox&gt;
&lt;br /&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;asp:Label ID=&quot;Label9&quot; runat=&quot;server&quot; Text=&quot;Percentage:&quot;&gt;&lt;/asp:Label&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;asp:Label ID=&quot;lblpercent&quot; runat=&quot;server&quot;&gt;&lt;/asp:Label&gt;
&lt;br /&gt;
&lt;asp:Label ID=&quot;Label4&quot; runat=&quot;server&quot; Text=&quot;Label&quot;&gt;Etner the Marks of BCA-
303:&lt;/asp:Label&gt;
&amp;nbsp;
&lt;asp:TextBox ID=&quot;TextBox4&quot;
runat=&quot;server&quot;&gt;&lt;/asp:TextBox&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nb
sp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbs
p;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbs
p;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;br /&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;

&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;asp:Label ID=&quot;Label10&quot; runat=&quot;server&quot; Text=&quot;Grade:&quot;&gt;&lt;/asp:Label&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&amp;nbsp;&amp;nbsp;
&lt;asp:Label ID=&quot;lblgrade&quot; runat=&quot;server&quot;&gt;&lt;/asp:Label&gt;
&lt;br /&gt;
&lt;asp:Label ID=&quot;Label5&quot; runat=&quot;server&quot; Text=&quot;Label&quot;&gt;Etner the Marks of BCA-
304:&lt;/asp:Label&gt;
&amp;nbsp;
&lt;asp:TextBox ID=&quot;TextBox5&quot; runat=&quot;server&quot;&gt;&lt;/asp:TextBox&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;asp:Label ID=&quot;Label6&quot; runat=&quot;server&quot; Text=&quot;Label&quot;&gt;Etner the Marks of BCA-
305:&lt;/asp:Label&gt;
&amp;nbsp;
&lt;asp:TextBox ID=&quot;TextBox6&quot; runat=&quot;server&quot;&gt;&lt;/asp:TextBox&gt;
&lt;br /&gt;
&lt;br /&gt;
&lt;asp:Label ID=&quot;Label7&quot; runat=&quot;server&quot; Text=&quot;Label&quot;&gt;Etner the Marks of BCA-
306:&lt;/asp:Label&gt;
&amp;nbsp;
&lt;asp:TextBox ID=&quot;TextBox7&quot; runat=&quot;server&quot;&gt;&lt;/asp:TextBox&gt;

&lt;br /&gt;
&lt;br /&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;asp:Button ID=&quot;Button1&quot; runat=&quot;server&quot; OnClick=&quot;Button1_Click&quot; Text=&quot;Show result&quot; /&gt;
&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;
&lt;asp:Button ID=&quot;Button2&quot; runat=&quot;server&quot; OnClick=&quot;Button2_Click&quot; Text=&quot;clear&quot; /&gt;
&lt;br /&gt;

&lt;/div&gt;

&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;

c#

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default :System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{

}

protected void Button1_Click(object sender, EventArgs e)
{
int m1 = System.Convert.ToInt32(TextBox2.Text);
int m2 = System.Convert.ToInt32(TextBox3.Text);
int m3 = System.Convert.ToInt32(TextBox4.Text);
int m4 = System.Convert.ToInt32(TextBox5.Text);
int m5 = System.Convert.ToInt32(TextBox6.Text);
int m6 = System.Convert.ToInt32(TextBox7.Text);

int total = m1 + m2 + m3 + m4 + m5 + m6;
lbltotal.Text = total.ToString();

int prc = total / 6;
lblpercent.Text = (prc).ToString();
if (prc&lt; 30)
{
lblgrade.Text = &quot;F&quot;;
}
else if (prc&gt;= 30 &amp;&amp;prc&lt; 50)
{
lblgrade.Text = &quot;C&quot;;
}
else if (prc&gt;= 50 &amp;&amp;prc&lt; 75)
{
lblgrade.Text = &quot;B&quot;;
}
else if (prc&gt;= 75 &amp;&amp;prc&lt; 95)
{
lblgrade.Text = &quot;A&quot;;
}
else if (prc&gt;= 95 &amp;&amp;prc&lt;= 100)
{
lblgrade.Text = &quot;A+&quot;;
}
}

protected void Button2_Click(object sender, EventArgs e)
{
TextBox1.Text = &quot;&quot;;
TextBox2.Text = &quot;&quot;;
TextBox3.Text = &quot;&quot;;
TextBox4.Text = &quot;&quot;;
TextBox5.Text = &quot;&quot;;
TextBox6.Text = &quot;&quot;;
TextBox7.Text = &quot;&quot;;
lblgrade.Text = &quot;&quot;;

lblpercent.Text = &quot;&quot;;
lbltotal.Text = &quot;&quot;;
}
}

3. 3) Write a program containing the following controls:
• A ListBox
• A Button
• An Image
• A Label
The listbox is used to list items available in a store. When the user clicks on an item in the
listbox, its image is displayed in the image control. When the user clicks the button, the cost
of the selected item is displayed in the control.

asp.net
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeBehind=&quot;Default.aspx.cs&quot;
Inherits=&quot;StoreApp.Default&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
&lt;title&gt;Store Items&lt;/title&gt;
&lt;style&gt;
.store-image {
width: 200px;
height: 200px;
}
&lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
&lt;div&gt;
&lt;asp:ListBox ID=&quot;lstItems&quot; runat=&quot;server&quot; AutoPostBack=&quot;true&quot;
OnSelectedIndexChanged=&quot;lstItems_SelectedIndexChanged&quot;&gt;
&lt;/asp:ListBox&gt;
&lt;br /&gt;
&lt;asp:Button ID=&quot;btnShowPrice&quot; runat=&quot;server&quot; Text=&quot;Show Price&quot;
OnClick=&quot;btnShowPrice_Click&quot; /&gt;
&lt;br /&gt;
&lt;asp:Label ID=&quot;lblPrice&quot; runat=&quot;server&quot; Text=&quot;Price will be displayed here.&quot; /&gt;
&lt;br /&gt;
&lt;asp:Image ID=&quot;imgItem&quot; runat=&quot;server&quot; CssClass=&quot;store-image&quot; /&gt;
&lt;/div&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
c#
using System;
using System.Collections.Generic;

namespace StoreApp
{
public partial class Default :System.Web.UI.Page
{

// Dictionary to hold store items, their prices, and their image paths
private Dictionary&lt;string, (decimal price, string imagePath)&gt;storeItems = new
Dictionary&lt;string, (decimal price, string imagePath)&gt;
{
{ &quot;Apple&quot;, (1.00m, &quot;~/Images/apple.png&quot;) },
{ &quot;Banana&quot;, (0.50m, &quot;~/Images/banana.png&quot;) },
{ &quot;Orange&quot;, (0.75m, &quot;~/Images/orange.png&quot;) }
};

protected void Page_Load(object sender, EventArgs e)
{
if (!IsPostBack)
{
// Populate the ListBox with items
foreach (var item in storeItems.Keys)
{
lstItems.Items.Add(item);
}
}
}

protected void lstItems_SelectedIndexChanged(object sender, EventArgs e)
{
// Display the image of the selected item
if (lstItems.SelectedItem != null)
{
string selectedItem = lstItems.SelectedItem.Text;
imgItem.ImageUrl = storeItems[selectedItem].imagePath;
}
}

protected void btnShowPrice_Click(object sender, EventArgs e)
{
// Display the price of the selected item

if (lstItems.SelectedItem != null)
{
string selectedItem = lstItems.SelectedItem.Text;
lblPrice.Text = $&quot;Price: ${storeItems[selectedItem].price}&quot;;
}
else
{
lblPrice.Text = &quot;Please select an item.&quot;;
}
}
}
}

4. 4) Write code that displays two advertisements alternately. When the user clicks on one of
the advertisements, he/she is redirected to “www.amazon.com”, and the other
advertisement redirects the user to “www.fabmart.com”. The weightage of the amazon
advertisement is 50 and that of the other one is 40. The advertisement should be centered
horizontally and should cover 60% of the width of the screen. Its height should be 80 units.
The width of the border should be 5 units.

asp.net
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;Default.aspx.cs&quot;
Inherits=&quot;_Default&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
&lt;meta charset=&quot;UTF-8&quot;&gt;

&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0&quot;&gt;
&lt;title&gt;Advertisement Rotator&lt;/title&gt;
&lt;style&gt;
.ad-container {
width: 60%;
height: 80px;
margin: 50px auto;
border: 5px solid #000;
display: flex;
justify-content: center;
align-items: center;
text-align: center;
font-size: 24px;
}

.ad-container.amazon {
background-color: #f3f3f3;
}
.ad-container.fabmart {
background-color: #e3e3e3;
}
&lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;div class=&quot;ad-container amazon&quot; onclick=&quot;location.href=&#39;https://www.amazon.com&#39;&quot;&gt;
Amazon Advertisement
&lt;/div&gt;

&lt;div class=&quot;ad-container fabmart&quot; onclick=&quot;location.href=&#39;https://www.fabmart.com&#39;&quot;&gt;
FabMart Advertisement
&lt;/div&gt;

&lt;/body&gt;

&lt;/html&gt;

C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default :System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{

}
}



3. Assignment

Name : Drimesh Pendam Date : 10/13/2024
Program 1
Write a program to display no. of user who are online at present.
--------------------------
Code :
using System;
using System.Collections.Generic;
using System.Web.UI;
public partial class OnlineUsers : Page
{
// Simulated online users
private static List<string> onlineUsers = new List<string>();
protected void Page_Load(object sender, EventArgs e)
{
// This is where you would normally check your user sessions.
// For demonstration, we'll just display the count of the list.
Response.Write($"Number of users online: {onlineUsers.Count}");
}
// Method to add a user (for testing purposes)
public static void UserLogin(string username)
{
if (!onlineUsers.Contains(username))
{
onlineUsers.Add(username);
}
}
// Method to remove a user (for testing purposes)
public static void UserLogout(string username)

{
if (onlineUsers.Contains(username))
{
onlineUsers.Remove(username);
}
}
}

Program 2 :
Create a web form with text box, radio buttons and submit button. Use textbox for accepting user name,
user radio buttons for accepting color name (Yellow, Cyan, Lime, Gray...). Store username and selected
color name in cookie. When user hits the submit button, display Weelcome.aspx if cookie exists. On
welcome page, display welcome message with color selected by user. Get the colorname and user name
from cookie.
Code :
1. Form.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs"
Inherits="YourNamespace.Form" %>
<!DOCTYPE html>
<html>
<head>
<title>User Color Selection</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<label for="username">Username:</label>
<input type="text" id="username" runat="server" />
<br />
<label>Choose a color:</label>
<input type="radio" name="color" value="Yellow" runat="server" /> Yellow
<input type="radio" name="color" value="Cyan" runat="server" /> Cyan
<input type="radio" name="color" value="Lime" runat="server" /> Lime
<input type="radio" name="color" value="Gray" runat="server" /> Gray
<br />
<button type="submit" runat="server" onserverclick="Submit_Click">Submit</button>
</div>
</form>
</body>

</html>
2. Welcome.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs"
Inherits="YourNamespace.Welcome" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
<style>
body { background-color: <%= color %>; }
</style>
</head>
<body>
<h1>Welcome <%= username %></h1>
</body>
</html>
3.Welcome.aspx.cs
using System;
using System.Web;
public partial class Welcome : System.Web.UI.Page
{
protected string username;
protected string color;
protected void Page_Load(object sender, EventArgs e)
{
HttpCookie userCookie = Request.Cookies["UserInfo"];
if (userCookie != null)
{
username = userCookie.Values["Username"];
color = userCookie.Values["Color"];
}
}
}

Program 3
----------
Create a table "UserLogin" with UserName, Password and Role. Manually add following records
in UserLogin table
1) UserName : admin, Password : admin@123, Role : Admin
2) UserName : Anand, Password : anand@123, Role : Faculty
3) UserName : Prachiti, Password : prachiti@123, Role : Clerk
Create the login page. Accept username and password. Check if it exists in the table. If login role is "Admin"
then open admin.aspx, if role is "Faculty"; then open faculty.aspx and if role is "Clerk"; then open clerk.aspx
Store login name and role in cookie. Before opening admin.aspx/faculty.aspx/clerk.aspx, check the role. If
role is Admin and the page is admin.aspx then display Welcome Username else
display "You are not authorized to access this page"
----------
1.UserLogin
CREATE TABLE UserLogin (
UserName VARCHAR(50),
Password VARCHAR(50),
Role VARCHAR(20)
);
INSERT INTO UserLogin (UserName, Password, Role) VALUES ('admin', 'admin@123', 'Admin');
INSERT INTO UserLogin (UserName, Password, Role) VALUES ('Anand', 'anand@123', 'Faculty');
INSERT INTO UserLogin (UserName, Password, Role) VALUES ('Prachiti', 'prachiti@123', 'Clerk');
2.Login.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"
Inherits="YourNamespace.Login" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<label for="username">Username:</label>
<input type="text" id="username" runat="server" />
<br />
<label for="password">Password:</label>
<input type="password" id="password" runat="server" />

<br />
<button type="submit" runat="server" onserverclick="Login_Click">Login</button>
</div>
</form>
</body>
</html>
3. Login.aspx.cs
using System;
using System.Data.SqlClient;
using System.Web;
public partial class Login : System.Web.UI.Page
{
protected void Login_Click(object sender, EventArgs e)
{
string username = username.Value;
string password = password.Value;
using (SqlConnection conn = new SqlConnection("YourConnectionString"))
{
conn.Open();
string query = "SELECT Role FROM UserLogin WHERE UserName=@username AND
Password=@password";
using (SqlCommand cmd = new SqlCommand(query, conn))
{
cmd.Parameters.AddWithValue("@username", username);
cmd.Parameters.AddWithValue("@password", password);
var role = cmd.ExecuteScalar();
if (role != null)
{
// Store user role in cookie
HttpCookie authCookie = new HttpCookie("UserRole");
authCookie.Values["Username"] = username;
authCookie.Values["Role"] = role.ToString();
Response.Cookies.Add(authCookie);
switch (role.ToString())
{
case "Admin":
Response.Redirect("admin.aspx");
break;

case "Faculty":
Response.Redirect("faculty.aspx");
break;
case "Clerk":
Response.Redirect("clerk.aspx");
break;
}
}
else
{
// Handle login failure
}
}
}
}
}

Program 4
Do the above program using Session.
Code :
1.UserLogin
CREATE TABLE UserLogin (
UserName VARCHAR(50),
Password VARCHAR(50),
Role VARCHAR(20)
);
INSERT INTO UserLogin (UserName, Password, Role) VALUES ('admin', 'admin@123', 'Admin');
INSERT INTO UserLogin (UserName, Password, Role) VALUES ('Anand', 'anand@123', 'Faculty');
INSERT INTO UserLogin (UserName, Password, Role) VALUES ('Prachiti', 'prachiti@123', 'Clerk');
2.Login.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"
Inherits="YourNamespace.Login" %>
<!DOCTYPE html>
<html>
<head>

<title>Login</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<label for="username">Username:</label>
<input type="text" id="username" runat="server" />
<br />
<label for="password">Password:</label>
<input type="password" id="password" runat="server" />
<br />
<button type="submit" runat="server" onserverclick="Login_Click">Login</button>
</div>
</form>
</body>
</html>
3. Login.aspx.cs
using System;
using System.Data.SqlClient;
using System.Web;
public partial class Login : System.Web.UI.Page
{
protected void Login_Click(object sender, EventArgs e)
{
string username = username.Value;
string password = password.Value;
using (SqlConnection conn = new SqlConnection("YourConnectionString"))
{
conn.Open();
string query = "SELECT Role FROM UserLogin WHERE UserName=@username AND
Password=@password";
using (SqlCommand cmd = new SqlCommand(query, conn))
{
cmd.Parameters.AddWithValue("@username", username);
cmd.Parameters.AddWithValue("@password", password);
var role = cmd.ExecuteScalar();
if (role != null)
{
// Store user role in cookie

HttpCookie authCookie = new HttpCookie("UserRole");
authCookie.Values["Username"] = username;
authCookie.Values["Role"] = role.ToString();
Response.Cookies.Add(authCookie);
switch (role.ToString())
{
case "Admin":
Response.Redirect("admin.aspx");
break;
case "Faculty":
Response.Redirect("faculty.aspx");
break;
case "Clerk":
Response.Redirect("clerk.aspx");
break;
}
}
else
{
// Handle login failure
}
}
}
}
}
4. Login.aspx.cs
using System;
using System.Data.SqlClient;
using System.Web;
public partial class Login : System.Web.UI.Page
{
protected void Login_Click(object sender, EventArgs e)
{
string username = username.Value;
string password = password.Value;
using (SqlConnection conn = new SqlConnection("YourConnectionString"))
{
conn.Open();
string query = "SELECT Role FROM UserLogin WHERE UserName=@username AND

Password=@password";
using (SqlCommand cmd = new SqlCommand(query, conn))
{
cmd.Parameters.AddWithValue("@username", username);
cmd.Parameters.AddWithValue("@password", password);
var role = cmd.ExecuteScalar();
if (role != null)
{
// Store user role in session
Session["Username"] = username;
Session["Role"] = role.ToString();
switch (role.ToString())
{
case "Admin":
Response.Redirect("admin.aspx");
break;
case "Faculty":
Response.Redirect("faculty.aspx");
break;
case "Clerk":
Response.Redirect("clerk.aspx");
break;
}
}
else
{
// Handle login failure
}
}
}
}
}
5. Admin.aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs"
Inherits="YourNamespace.admin" %>
<!DOCTYPE html>
<html>
<head>
<title>Admin Page</title>

</head>
<body>
<h1>Admin Page</h1>
</body>
</html>

6.admin.aspx.cs
using System;
public partial class admin : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
if (Session["Role"] == null || Session["Role"].ToString() != "Admin")
{
Response.Write("You are not authorized to access this page.");
Response.End();
}
else
{
Response.Write($"Welcome {Session["Username"]}");
}
}
}
