<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="MyBlog.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script src="../bootstrap-5.3.3-examples/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <title>Signin Template · Bootstrap v5.3</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="../bootstrap-5.3.3-examples/assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }

      /* Custom styles to center the form */
      .container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        padding: 0 1rem;
      }

      /* Adjust the size of the form */
      .form-signin {
        max-width: 400px; /* Set maximum width */
        padding: 1.5rem; /* Add padding for better spacing */
        margin: auto;
      }

      /* Optional: Adjust the size of the form elements */
      .form-signin .form-floating {
        margin-bottom: 1rem;
      }

      .form-signin .form-check {
        margin-bottom: 1rem;
      }

      .form-signin .btn {
        margin-top: 1rem;
      }
    </style>

    <!-- Custom styles for this template -->
    <link href="../bootstrap-5.3.3-examples/sign-in.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">
  <div class="container">
        <main class="form-signin">
            <form id="form1" runat="server">
                <img class="mb-4" src="../bootstrap-5.3.3-examples/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
                <h1 class="h3 mb-3 fw-normal">Enter Admin Credentials</h1>

                <div class="form-floating">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="name@example.com" />
                    <label for="txtEmail">Email address</label>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Password" />
                    <label for="txtPassword">Password</label>
                </div>

                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary w-100 py-2" Text="Enter" OnClick="btnLogin_Click" />
                <p class="mt-5 mb-3 text-body-secondary">&copy; 2024</p>
            </form>
        </main>
    </div>
    <script src="../bootstrap-5.3.3-examples/assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
