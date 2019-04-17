using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UploadPhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DirectoryInfo folder = new DirectoryInfo(Request.MapPath("/photos"));
        foreach(FileInfo finfo in  folder.GetFiles())
        {
            lblLinks.Text += $"<a target='_blank' href='/photos/{finfo.Name}'>{finfo.Name}</a><br/>";
        }
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
        {
            lblMsg.Text = "Sorry! No file uploaded!";
            return; 
        }

        // virtual path to physical path
        string filename = Request.MapPath("/photos/" + FileUpload1.FileName);
        FileUpload1.SaveAs(filename);
        lblMsg.Text = "Uploaded file :  " + FileUpload1.FileName;



    }
}