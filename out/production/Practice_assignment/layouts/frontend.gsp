<html>
<head>
    <title>
        <g:layoutTitle/>
    </title>
    <g:external dir="css" file="bootstrap.css"/>
    <g:external dir="css" file="owl.carousel.css"/>
    <g:external dir="css"   file="owl.theme.default.min.css"/>
    <g:external dir="css"   file="tooplate-style.css"/>
    <g:layoutHead/>
</head>
<body>
<section class="navbar navbar-dark bg-dark custom-navbar  navbar-fixed-top" role="navigation" id="navigation"  style="background-color:#84a9ac;">
    <div class="container">

        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>

            <!-- lOGO TEXT HERE -->
            <a href="list" class="navbar-brand">Address Book</a>
        </div>

        <!-- MENU LINKS -->
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="list" class="smoothScroll">Home</a></li>
                <li><a href="create" class="smoothScroll">Create Contact</a></li>
                <li><a href="#" class="smoothScroll">About us</a></li>
                <li><a href="#" class="smoothScroll">Pricing</a></li>
                <li><a href="#" class="smoothScroll">Contact</a></li>
            </ul>
        </div>

    </div>
</section>


<g:layoutBody/>

<div id="footer">
    <footer>
        <div class="bottom-container">
            <a class="footer-link fl" href="#">LinkedIn</a>
            <a class="footer-link fl" href="#">Twitter</a>
            <a class="footer-link fl" href="#">Website</a>
            <p class="copyright">© 2020 Shahmir Minhas.</p>
        </div>
    </footer>

</div>
<asset:javascript src="jquery.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.stellar.min.js"/>
<asset:javascript src="owl.carousel.min.js" />
<asset:javascript src="custom.js"/>
<asset:javascript src="smoothscroll.js"/>



%{--<script src="jquery.js"></script>--}%
%{--<script src="bootstrap.min.js"></script>--}%
%{--<script src="jquery.stellar.min.js"></script>--}%
%{--<script src="owl.carousel.min.js"></script>--}%
%{--<script src="custom.js"></script>--}%
%{--<script src="smoothscroll.js"></script>--}%
</body>
</html>