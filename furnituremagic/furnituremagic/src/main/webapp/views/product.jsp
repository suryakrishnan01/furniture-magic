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
       <br>
       <br>
        <div class="form">
        <form style="text-align: center;float: center"
                action="Products" method="post">
            <fieldset>
           <h2>Create Product</h2>
            Product Id:
            <br>
            <input type="number" name="product_id" />
            <br>
            Product Name:
            <br>
            <input type="text" name="product_name"required/>
            <br>
            Description:
            <br>
            <input type="text" name="description" required/>
            <br>
            Price:
            <br>
            <input type="number" name="price" required/>
            <br>
            Discount price:
            <br>
            <input type="number" name="disc_price" required/>
            <br>
            IsActive:
            <br>
            <input type="text" name="isactive" required/>
            <br>
            <br>
            <input type="submit" value="create" style="background-color: powderblue">
        </fieldset>
        </form>
    </div>
        <hr>

        <h2 style="text-align: center">All Product Details</h2>

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
            <c:forEach items="${allProducts}" var="item">
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
        <hr>
        <br>
      </div>
        <h1 style="text-align: center;font-family: serif;">SEARCH THE PRODUCT</h1>
        <div style="display: flex;align-content: center;justify-content: center;text-align: center">
        
        <fieldset>
        
            <form action="Product" method="get">
                Enter the Product Code
                <br>
                <input type="number" id="product_id" name="product_id"/>
                <input type="submit" value="Search">
            </form>
         </fieldset>
        </div>
        

    </body>

</html>