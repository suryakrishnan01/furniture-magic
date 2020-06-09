<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Products page</title>
    </head>
    <style>
        table{
            border-collapse: collapse;

        }
        td, th {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }

       
        .head{
        	background: rgba(0, 0, 0);
        	height:75px;
            width: 100vw;
            position: relative;
            margin-left: -50vw;
            margin-top: -0.9vw;
            left: 50%;
            
         }
        .h{

         
            font-family: serif;
            
            color: white;
            padding-top: 5px;
            padding-left:200px;
            
        }

        ul{
            list-style-type: none;
        }
        li {
             float: left;
             border-right:1px;
             
        }
        .btn{
            float:right;
            font-family: serif;
            padding-right: 20px;
            padding-top: 10px;
        }
        .btn1{
            float: right;
            font-family: serif;
            padding-right: 20px;
            padding-top: 12px;
        }
        fieldset {
              
              padding:10px;
              width:400px;
              
          }
        div.form
        {
            display: block;
            text-align: center;
        }
     form
	{
	    display: inline-block;
	    margin-left: auto;
	    margin-right: auto;
	    text-align: left;
	}


    </style>
    <body style="background: rgba(0, 128, 0, 0.3); ">
    <div class="head">
        <ul>
            <li><h2 class="h">FURNITURE MAGIC</h2></li>
          
        </ul>
    </div>
        

        <h2 style="text-align: center">Product Details</h2>

        <table style="width: 100%;
                     display: flex;
                     justify-content: center;
                     align-content: center;
                     text-align: center;
                     font-family: 'Times New Roman';">
            <tr>
                <th>Product Id</th>
                <th>Product Name</th>
                <th>Description</th>
                <th>Product Price</th>
                <th>discount price</th>
                <th>IsActive</th>
            </tr>
            <c:forEach items="${result}" var="item">
                <tr>
                    <td><c:out value="${item.product_id}" /></td>
                    <td><c:out value="${item.product_name}" /></td>
                    <td><c:out value="${item.description}" /></td>
                    <td><c:out value="${item.price}" /></td>
                    <td><c:out value="${item.disc_price}" /></td>
                    <td><c:out value="${item.isactive}" /></td>
                </tr>
            </c:forEach>
        </table>
        <br>
  
    </body>

</html>