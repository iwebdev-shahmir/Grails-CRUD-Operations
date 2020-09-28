<html>
<head>
    <meta name="layout" content="frontend"/>
    <title>Contact List</title>
</head>

<body style="text-align: center" >
<div class="container">
    <h1>Contact List</h1>
    <br>
    <br>

    <form action="search" data-parsley-validate data-parsley-trigger="keyup">
        <table class="table table-sm">
            <tbody class="table-hover table-striped">
            <tr>
                <td>Search by Email:</td>
                <td><g:textField data-parsley-type="email" data-parsley-error-message="Invalid Email" name="searchEmail" class="form-control"/></td>
                <td><g:actionSubmit value="Search"  class="btn btn-primary">Search</g:actionSubmit></td>
            </tr>
            <tr>
                <td>Search by Number</td>
                <td><g:textField class="phone form-control" name="searchNumber"/></td>
                <td><g:actionSubmit value="Search"  class="btn btn-primary">Search</g:actionSubmit></td>
            </tr>
            </tbody>
        </table>
    </form>
    <br>
    <br>
    <table class="table table-sm " >
        <tbody class="table-hover table-striped">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Present Address</th>
            <th>Permanent Address</th>
            <th>Phone Number</th>
            <th>Landline Number</th>
            <th>Actions</th>

        </tr>

        <g:each var="user" in="${users}" status="i">
            <tr>

                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td> ${user.email}</td>
                <td> ${addresses[i].preAddress}</td>
                <td> ${addresses[i].perAddress}</td>
                <td> ${contacts[i].phoneNumber}</td>
                <td>${contacts[i].landNumber}</td>
                <td><g:link action="edit" id="${user.id}" class="btn btn-sm btn-outline-primary">Edit</g:link>
                <g:link action="delete" id="${user.id}" class="btn btn-sm btn-outline-primary">Delete</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <br>
    <br>
    <div class="row justify-content-center">
        <div class="col-1" ></div>
        <g:link action="create" class="btn btn-primary">Create New</g:link>
    </div>



</div>



<script src="https://nosir.github.io/cleave.js/dist/cleave.min.js"></script>
<script src="https://nosir.github.io/cleave.js/dist/cleave-phone.i18n.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://fenixrepo.fao.org/cdn/js/parsley/2.1.2/parsley.js" ></script>

<script>
    new Cleave('.phone', {
        phone: true,
        phoneRegionCode: 'PK',
        prefix : '+92'
    });


</script>
</body>
</html>