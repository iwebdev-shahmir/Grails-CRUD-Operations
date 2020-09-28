<html>
<head>
    <meta name="layout" content="frontend"/>
    <title>Edit Page</title>
    <link rel="stylesheet" href="http://fenixrepo.fao.org/cdn/js/parsley/2.1.2/parsley.css">
</head>
<body style="text-align: center">
<div class="container">
    <h1>Edit Your Contact</h1>
    <br>
    <hr>
    <br>
<table class="table">
    <g:form action="update" data-parsley-validate id="editForm">
            <tbody class="table-hover table-striped">
            <g:field type="hidden" name="idNumber" value="${user.id}"/>
            <tr>
                <td> First Name :</td>
                <td><g:textField name="firstName" value="${user.firstName}" data-parsley-required  data-parsley-pattern="^[a-zA-Z]" data-parsley-trigger="keyup" class="form-control"/></td></tr>
            <tr>
                <td>Last Name :</td>
                <td><g:textField name="lastName" value="${user.lastName}" data-parsley-required data-parsley-pattern="^[a-zA-Z]" data-parsley-trigger="keyup" class="form-control"/></td></tr>
            <tr>
                <td>Email : </td>
                <td><g:textField name="email" value="${user.email}" data-parsley-required data-parsley-type="email"  data-parsley-trigger="keyup" class="form-control"/></td></tr>
            <tr>
                <td>Permanent Address :</td>
                <td> <g:textField name="perAddress" value="${address.perAddress}" data-parsley-trigger="keyup" class="form-control"/></td></tr>
            <tr>
                <td> Present Address :</td>
                <td> <g:textField name="preAddress" value="${address.preAddress}" data-parsley-trigger="keyup" class="form-control"/></td></tr>
            <tr>
                <td> Mobile Number :</td>
                <td><g:textField name="phoneNumber" value="${contact.phoneNumber}"  class="phone form-control" data-parsley-trigger="keyup"/></td></tr>
            <tr>
                <td>Land Line Number :</td>
                <td> <g:textField name="landNumber" value="${contact.landNumber}" class="phone form-control" data-parsley-trigger="keyup"/></td></tr>
            <tr>
                <td><g:link action="list" class="btn btn-primary btn-sm">Back</g:link></td>
                <td><g:actionSubmit value="Update" class="btn btn-sm btn-primary" /></td></tr>
            </tbody>
    </g:form>
</table>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://fenixrepo.fao.org/cdn/js/parsley/2.1.2/parsley.js"></script>
<script src="https://nosir.github.io/cleave.js/dist/cleave.min.js"></script>
<script src="https://nosir.github.io/cleave.js/dist/cleave-phone.i18n.js"></script>
<script>
    $(document).ready(function(){
        $("#editForm").on('submit', function(){
            $(this).parsley().validate();
        if($(this).parsley().isValid()){
            alert ('Contact Updated Successfully');
        }
        })
    });

    document.querySelectorAll('.phone').forEach(function(el){
       new Cleave (el,{
           phone: true,
           phoneRegionCode: 'PK',
           prefix: '+92'

       })
    });
</script>
</body>
</html>