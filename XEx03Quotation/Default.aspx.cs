//  Yun Kim
//  WLAC COS 963
//  WEB APPLICATION USING ASP.NET
//  Project 2: Use CSS and Bootstrap to format the Quotation application
//  Sep. 27, 2016

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Globalization;
using System.Threading;

namespace Ex02Quotation
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void calculate_button_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                decimal salesPrice = Convert.ToDecimal(salesPrice_txtbox.Text);
                decimal discountPercent = Convert.ToDecimal(discountPercent_txtbox.Text);

                decimal discountAmount = this.calculateDiscount(salesPrice, discountPercent);
                decimal totalPrice = this.calculateTotal(salesPrice, discountAmount);

                discountAmount_label.Text = discountAmount.ToString("C", new CultureInfo("en-US"));
                totalPrice_label.Text = totalPrice.ToString("C", new CultureInfo("en-US"));

                
            }

            else
            {
                discountAmount_label.Text = "";
                totalPrice_label.Text = "";
            }
        }

        protected decimal calculateDiscount(decimal salesPrice, decimal discountPercent)
        {
            decimal discount = salesPrice * (discountPercent / 100);
            return discount;
        }

        protected decimal calculateTotal(decimal salesPrice, decimal discountAmount)
        {
            decimal total = salesPrice - discountAmount;
            return total;
        } 
    }
}