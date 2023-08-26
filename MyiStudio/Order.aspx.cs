using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class MyiStudio_Order : System.Web.UI.Page
{
    double tax = 0;
    double total = 0;
    double grand = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
        // ddlPlanners
        if (ddlPlanners.SelectedIndex == 1)
        {
            total = 80 * Convert.ToDouble(txtQuantity.Text);
        }
        else if (ddlPlanners.SelectedIndex == 2)
        {
            total = 100 * Convert.ToDouble(txtQuantity.Text);
        }
        else if (ddlPlanners.SelectedIndex == 3)
        {
            total = 100 * Convert.ToDouble(txtQuantity.Text);
        }
        else if (ddlPlanners.SelectedIndex == 4)
        {
            total = 50 * Convert.ToDouble(txtQuantity.Text);
        }
        else if (ddlPlanners.SelectedIndex == 5)
        {
            total = 100 * Convert.ToDouble(txtQuantity.Text);
        }
        else if (ddlPlanners.SelectedIndex == 6)
        {
            total = 110 * Convert.ToDouble(txtQuantity.Text);
        }
        else
        {
            total = 540 * Convert.ToDouble(txtQuantity.Text);
        }


        // lbAddOn
        if (lbAddOn.SelectedIndex == 0)
        {
            total = total + 25;
        }
        else if (lbAddOn.SelectedIndex == 1)
        {
            total = total + 25;
        }
        else if (lbAddOn.SelectedIndex == 2)
        {
            total = total + 20;
        }
        else if (lbAddOn.SelectedIndex == 3)
        {
            total = total + 15;
        }
        else 
        {
            total = total + 30;
        }

        //rblMonogram
        if (rblMonogram.SelectedIndex == 0)
        {
            total = total + 0;
        }
        else if (rblMonogram.SelectedIndex == 1)
        {
            total = total + 10;
        }
        else
        {
            total = total + 15;
        }

        // https://stackoverflow.com/questions/13025398/can-a-button-validate-more-validation-groups
        Page.Validate("VG1");
        if (Page.IsValid)
        {
            tax = 0.1 * total;
            grand = total + tax;

            lblTax.Text = Convert.ToString(tax);
            lblTotal.Text = Convert.ToString(total);
            lblGrand.Text = Convert.ToString(grand);

            lblOutput.Text = "<b style='color:#32CBAC; font-size:18px; font-style: italic!important; font-family: Crimson Text;'>Thank you. Your order has been processed.</b>";
        }
        else
        {
            lblOutput.Text = "<b style='color:#ff0000; font-size:10px; font-style: normal!important; font-family: Montserrat;'>Error is processing your order. <br /> Please check your order form again. Thank you.</b>";
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        
        ddlPlanners.SelectedIndex = -1;
        lbAddOn.SelectedIndex = -1;
        rblMonogram.SelectedIndex = -1;
        cblGiftWrap.SelectedIndex = -1;
        txtQuantity.Text = "";
        lblTotal.Text = "";
        lblGrand.Text = "";
        lblOutput.Text = "";


    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        Page.Validate("VG2");
        if (Page.IsValid)
        {

            lblCMessage.Text = "Dear <b>" + txtCName.Text + "</b>, the total cost is <b style='color:#FF8E8E'>$" + lblGrand.Text + "</b>, the invoice will be sent to your email <b style='color:#FF8E8E'>" + txtCEmail.Text + "</b>.";
        }
        else
        {
            lblCMessage.Text = "<b style='color:#ff0000; font-size:10px; font-style: normal!important; font-family: Montserrat;'>Error in submitting the form. <br /> Please check if you have filled in your details correctly. Thank you. </b>";
        }


    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtCName.Text = "";
        txtCPhone.Text = "";
        ddlCountry.SelectedIndex = -1;
        txtCEmail.Text = "";
        txtCRetype.Text = "";
        txtCAddress.Text = "";
        lblCMessage.Text = "";
    }


}