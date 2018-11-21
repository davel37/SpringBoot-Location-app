<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    
<!DOCTYPE html>
<html>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<head>
<style>

 <style>
        * {
            margin: 0;
            padding: 0;
            outline: none;
            border: none;
            box-sizing: border-box;

        }

        body {
            min-height: 100px;
            background: radial-gradient(white, grey);

        }

        .wrapper {
            width: 300px;
            height: 350px;
            margin: 50px auto;
            border: solid 8px black;
            border-radius: 20px;
            background: white;
        }

        .header {
            width: 100%;
            text-align: center;
            height: 50px;
            background: linear-gradient(black, white);
            border-radius: 10px 10px 0 0;
            font-size: 25px;
            padding-top: 10px;
            color: yellow;

        }

        span {
            border-bottom: dashed 2px black;
            display: block;
            height: 90%;
            width: 100%;
        }

        i {
            margin-left: 100px;
            font-size: 30px;
            height: 30px;
            vertical-align: middle;
        }
        #submit{
  appearance: none;
  -moz-appearance: none;
  -webkit-appearance: none;
  height: 30px;
  width: 200px;
  left: 50%;
  top: 50%;
  margin-top: -15px;   /* = -height / 2   */
  margin-left: -100px; /* = -width / 2    */
  position: fixed;     /* Fixed is better */
}
</style>
<meta charset="ISO-8859-1">
<title>Create Location</title>


</head>
<body>
<div class="wrapper">
        <div class="header"><span>Create Location</span></div><br>
<form action = "updateloc" method = "post"/>

  Id: <input type = "text" name = "id" value ="${location.id}" readonly/><br>
Code: <input type = "text" name = "code" value ="${location.code}"/><br>
Name: <input type = "text" name = "name" value ="${location.name}"/><br>
Type: Urban<input type = "radio" name ="type" value="URBAN" ${location.type=='URBAN'?'checked': '' }/> 
      Rural<input type = "radio" name ="type" value = "RURAL"${location.type=='RURAL'?'checked': '' }/> <br>
<input type = "submit" id = "submit" value = "save"/>

</div>
</form>

</body>
</html>