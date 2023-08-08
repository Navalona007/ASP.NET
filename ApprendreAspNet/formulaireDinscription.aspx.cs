using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApprendreAspNet
{
    public partial class index : System.Web.UI.Page
    {
        ConnexionBD dbConnection = new ConnexionBD("Host=localhost;Port=5432;Database=personnebase;Username=postgres;Password=postgres;");
        protected void Page_Load(object sender, EventArgs e)
        {
            //repList.Items.Insert(0, String.Format("{0}, Page Load", DateTime.Now.ToString("hh/mm/ss")));

        }
        protected void Page_Init(object sendeer, EventArgs e)
        {
            //repList.Items.Insert(0, String.Format("{0}, Page Init", DateTime.Now.ToString("hh/mm/ss")));
        }
        //public void Button1_Click(object sender, EventArgs e)
        //{
        //    //repList.Items.Insert(0, String.Format("nom: {0}, prenom: {1}, date de naissance: {2}-{3}-{4}", txtNom.Text, txtPrenom.Text, dropdownJourNaissance.SelectedValue, dropdownMoisNaissance.SelectedValue, dropdownAnneeNaissance.SelectedValue));
        //    //// Récupérer la valeur du champ "nom" de la session et l'assigner au champ de texte "txtNom"
        //    //if (Session["nom"] == null)
        //    //{
        //    //    Session["nom"] = txtNom.Text;
        //    //    testlabel.Text = Session["nom"].ToString();
        //    //}
        //    //Response.Redirect("WebForm1");
        

        public void Button1_Click(object sender, EventArgs e)
        {
            string datedenaissance = String.Format("{0}-{1}-{2}", dropdownJourNaissance.SelectedValue, dropdownMoisNaissance.SelectedValue, dropdownAnneeNaissance.SelectedValue);

            try
            {
                string query = "INSERT INTO personne (nom, prenom, datedenaissance, email, motdepasse) VALUES (@nom, @prenom, @datedenaissance, @email, @motdepasse)";

                NpgsqlParameter[] parameters = new NpgsqlParameter[]
                {
            new NpgsqlParameter("@nom", txtNom.Text),
            new NpgsqlParameter("@prenom", txtPrenom.Text),
            new NpgsqlParameter("@datedenaissance", datedenaissance),
            new NpgsqlParameter("@email", TextEmail.Text),
            new NpgsqlParameter("@motdepasse", TextMotdepasse.Text)
                };


                dbConnection.ExecuteNonQuery(query, parameters);

                // Afficher un message de succès
                Label1.Text = "Inscription réussie";
                Label1.CssClass = "text-success";
                Response.Redirect("ConnexionPage");
            }
            catch (Exception ex)
            {
                // Afficher un message d'erreur
                Label2.Text = "Une erreur s'est produite : " + ex.Message;
                Label2.CssClass = "text-danger";
            }
        }

    }
}