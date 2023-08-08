<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formulaireDinscription.aspx.cs" Inherits="ApprendreAspNet.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formulaire d'inscription</title>
    <link rel="stylesheet" type="text/css" href="formulaire.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">

                    <asp:Label ID="lblHeader" runat="server" CssClass="text-center form-control" Text="Formulaire d'inscription"></asp:Label>


                    <div class="border mt-3 mb-4 p-2" id="borderr">
                        <div class="form-group">
                            <asp:TextBox ID="txtNom" runat="server" CssClass="form-control mt-4" placeholder="Entrez votre nom"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" runat="server" ControlToValidate="txtNom" ErrorMessage="Tout les champs sont obligatoire"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtPrenom" runat="server" CssClass="form-control" placeholder="Entrez votre prénom"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" runat="server" ControlToValidate="txtPrenom" ErrorMessage="Tout les champs sont obligatoire"></asp:RequiredFieldValidator>

                        </div>

                        <asp:Label ID="labelDateNaissance" runat="server" Text="Date de naissance"></asp:Label>
                        <div class="row">
                            <div class="col">
                                <asp:DropDownList ID="dropdownJourNaissance" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="1"></asp:ListItem>
                                    <asp:ListItem Text="2"></asp:ListItem>

                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <asp:DropDownList ID="dropdownMoisNaissance" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="jan"></asp:ListItem>
                                    <asp:ListItem Text="fév"></asp:ListItem>

                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <asp:DropDownList ID="dropdownAnneeNaissance" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="2023"></asp:ListItem>
                                    <asp:ListItem Text="2022"></asp:ListItem>

                                </asp:DropDownList>
                            </div>

                        </div>

                        <div class="form-group">
                            <asp:TextBox ID="TextEmail" TextMode="Email" runat="server" CssClass="form-control mt-4" placeholder="Entrez votre Address email"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" runat="server" ControlToValidate="TextEmail" ErrorMessage="Tout les champs sont obligatoire"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextMotdepasse" runat="server" CssClass="form-control" TextMode="Password" placeholder="Entrez votre Mot de passe" required></asp:TextBox>
                            <%--<asp:RequiredFieldValidator  ForeColor="Red" runat="server" ControlToValidate="TextMotdepasse" ErrorMessage="Tout les champs sont obligatoire"></asp:RequiredFieldValidator>--%>
                        </div>

                        <div class="form-group">
                            <asp:Button ID="Button1" CssClass="btn btn-success mt-4 form-control" runat="server" Text="Envoyer" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center">
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <%--<asp:ListBox ID="repList" runat="server" Width="34em"></asp:ListBox>--%>
        </div>

        <%--        <span class="text-center">
            <asp:Label ID="testlabel" runat="server" Text="Label"></asp:Label>
        </span>--%>





        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>





    </form>





</body>
</html>
