<html>
<head>
    <meta name="layout" content="frontend">
    <title>Create new User</title>
    <link rel="stylesheet" href="http://fenixrepo.fao.org/cdn/js/parsley/2.1.2/parsley.css">
</head>

<body style="text-align: center">

<div class="container">
    <h1>Create new Contact</h1>
    <br>
    <hr>
    <br>
    <g:form action="save" data-parsley-validate data-parsley-trigger="keyup" id="createForm" >
        <table class="table">
            <tbody class="table-hover table-striped">
            <tr>
                <td>First Name:</td>
                <td><g:textField name="firstName" required data-parsley-pattern="^[a-zA-Z]" data-parsley-error-message="Alphabets Only" data-parsley-trigger="keyup"  class="form-control"/></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><g:textField name="lastName" required  data-parsley-pattern="^[a-zA-Z]" data-parsley-error-message="Alphabets Only" data-parsley-trigger="keyup"  class="form-control"/></td>
            </tr>
            <tr>
                <td> Email :</td>
                <td> <g:textField name="email" required data-parsley-type = "email" data-parsley-error-message="Invalid Email" data-parsley-trigger="keyup"  class="form-control"/></td>
            </tr>
            <tr>
                <td>Permanent Address :</td>
                <td> <g:textField name="perAddress" data-parsley-trigger="keyup"  class="form-control"/></td>
            </tr>
            <tr>
                <td>Present Address :</td>
                <td><g:textField name="preAddress" data-parsley-trigger="keyup"  class="form-control"/></td>
            </tr>
            <tr>
                <td>Mobile Number :</td>
                <td> <g:textField name="phoneNumber" class="phone form-control"  data-parsley-trigger="keyup"  /></td>
            </tr>
            <tr>
                <td>Landline Number : </td>
                <td><g:textField name="landNumber" class="phone form-control" data-parsley-trigger="keyup" /><br></td>
            </tr>
            <tr>
                <td><g:link action="list" class="btn btn-sm btn-primary">Back</g:link></td>
                <td> <g:actionSubmit value="Save" class="btn btn-primary"/></td>
            </tr>
            </tbody>
        </table>
    </g:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://fenixrepo.fao.org/cdn/js/parsley/2.1.2/parsley.js" ></script>
<script src="https://nosir.github.io/cleave.js/dist/cleave.min.js"></script>
<script src="https://nosir.github.io/cleave.js/dist/cleave-phone.i18n.js"></script>

<script>
    $(document).ready(function(){
        $("#createForm").on('submit',function(){
            $(this).parsley().validate();
            if ($(this).parsley().isValid()){
                alert('Contact Created');
            }
        });
    });
    document.querySelectorAll('.phone').forEach(function(el) {
        new Cleave(el, {
            phone: true,
            phoneRegionCode: 'PK',
            prefix : '+92'
        });
    });

</script>

</body>
</html>