<html>
<head>
    <meta name="layout" content="frontend"/>
    <title>Searched Results</title>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<div class="container">
    <h2>Matched Contacts Are:</h2>
    <table class="table">
        <tbody class="table-hover table-striped">
        <g:each var="u" in="${euser}" status="i">
            <tr>
                <td>${u.firstName}</td>
                <td>${u.lastName}</td>
                <td>${u.email}</td>
                <td>${eaddress[i].perAddress}</td>
                <td>${eaddress[i].preAddress}</td>
                <td>${econtact[i].phoneNumber}</td>
                <td>${econtact[i].landNumber}</td>
            </tr>
        </g:each>
        <g:each var="cP" in="${cPhNum}" status="i" >
            <tr>
                <td>${cPuser[i].firstName}</td>
                <td>${cPuser[i].lastName}</td>
                <td>${cPuser[i].email}</td>
                <td>${cPaddress[i].perAddress}</td>
                <td>${cPaddress[i].preAddress}</td>
                <td>${cPhNum.phoneNumber}</td>
                <td>${cPhNum.landNumber}</td>
            </tr>

        </g:each>

        <g:each var="cL" in="${cLnum}" status="i" >
            <tr>
                <td>${cLuser[i].firstName}</td>
                <td>${cLuser[i].lastName}</td>
                <td>${cLuser[i].email}</td>
                <td>${cLaddress[i].perAddress}</td>
                <td>${cLaddress[i].preAddress}</td>
                <td>${cLnum.phoneNumber}</td>
                <td>${cLnum.landNumber}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <g:link action="list" class="btn btn-primary btn-sm" >Back</g:link>
</div>
</body>
</html>