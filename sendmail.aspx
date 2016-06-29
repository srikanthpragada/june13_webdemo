<%@ Page Language="c#" ValidateRequest="false" %>

<%@ Import Namespace="System.Net.Mail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    void btnSend_Click(Object sender, System.EventArgs e)
    {
        try
        {
            MailMessage m = new MailMessage();
            m.To.Add(new MailAddress(txtTo.Text));
            m.From = new MailAddress(txtFrom.Text);
            m.Subject = txtSubject.Text;
            m.IsBodyHtml = true;  // body contains HTML
            m.Body = txtBody.Text;

            //Attachment a1 = new Attachment(Request.MapPath("web.config"));
            //m.Attachments.Add(a1);

            SmtpClient smtp = new SmtpClient("127.0.0.1", 25);

            // log on to mail server - Authenticate the sender 
            smtp.UseDefaultCredentials = false;
            smtp.EnableSsl = false;
            smtp.Credentials =
               new System.Net.NetworkCredential("admin@st.com", "admin");

            smtp.Send(m);
            lblMsg.Text = "Mail Sent Successfully!";

        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error --> " + ex.StackTrace;
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Send Mail</title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Send Mail</h3>
        <table>
            <tr>
                <td>To
                </td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>From
                </td>
                <td>
                    <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Subject
                </td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server" Width="319px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Body
                </td>
                <td>
                    <asp:TextBox ID="txtBody" runat="server" Height="112px" TextMode="MultiLine" Width="374px" />
                </td>
            </tr>
        </table>

        <asp:Button ID="Button1" runat="server" OnClick="btnSend_Click" Text="Send" /><br />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label><br />
    </form>
</body>
</html>
