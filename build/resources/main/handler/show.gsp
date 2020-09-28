<html>
<head>
    <meta name="layout" content="frontend">
    <title></title>
</head>
<body style="text-align: center">
<div class="container">

    <h1>Contact Created Successfully</h1>
    <br>
    <br>
    <table class="table">
        <tbody class="table-hover table-striped">
        <tr>
            <td><h3>First Name</h3></td>
            <td><h3>Last Name</h3></td>
            <td><h3>Email</h3></td>
            <td><h3>Present Address</h3></td>
            <td><h3>Permanent Address</h3></td>
            <td><h3>Phone Number</h3></td>
            <td><h3>Landline Number</h3></td>
        </tr>
        <tr>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.email}</td>
            <td>${address.perAddress}</td>
            <td>${address.preAddress}</td>
            <td>${contact.phoneNumber}</td>
            <td>${contact.landNumber}</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><g:link action="edit" id="${user.id}" class="btn btn-primary btn-sm">Edit</g:link></td>
            <td><g:link action="create" class="btn btn-primary btn-sm">Create New</g:link></td>
            <td><g:link action="list" class="btn btn-primary btn-sm">list</g:link></td>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>