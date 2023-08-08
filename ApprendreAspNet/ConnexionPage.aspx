<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConnexionPage.aspx.cs" Inherits="ApprendreAspNet.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Connexion</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
    <form id="form" runat="server">
        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-lg-6 col-md-8 col-sm-10">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-center mt-4">Se connecter à un compte</h4>
                            <div class="form-group">
                                <label for="TextEmail"><i class="fa fa-envelope-o"></i> Adresse email</label>
                                <asp:TextBox ID="TextEmail" runat="server" CssClass="form-control" placeholder="Entrez votre adresse email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="TextMotdepasse"><i class="fa fa-key"></i> Mot de passe</label>
                                <asp:TextBox ID="TextMotdepasse" runat="server" CssClass="form-control" TextMode="Password" placeholder="Entrez votre mot de passe"></asp:TextBox>
                            </div>
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary btn-block mt-4" Text="Envoyer" OnClick="Button1_Click" />
                            <hr class="my-4" />
                            <div class="text-center">
                                <p>Vous n'avez pas de compte ? <a href="index" class="register-link">Inscrivez-vous ici</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    


  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
</body>
</html>
