<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add New Employee</h1>  
       <form:form method="post" action="./addResource">    
        <table >    
         <tr>    
          <td>Emp Id : </td>   
          <td><form:input path="empId"  /></td>  
         </tr>    
         <tr>    
          <td>First Name :</td>    
          <td><form:input path="firstName" /></td>  
         </tr>   
         <tr>    
          <td>Middle Name :</td>    
          <td><form:input path="middleName" /></td>  
         </tr> 
         <tr>    
          <td>Last Name :</td>    
          <td><form:input path="lastName" /></td>  
         </tr>
         <tr>    
          <td>Technologies :</td>    
          <td><form:input path="listTechnology" /></td>  
         </tr>
         <tr>    
          <td>certification :</td>    
          <td><form:input path="certification" /></td>  
         </tr>
          <tr>    
          <td>Projects :</td>    
          <td><form:input path="projects" /></td>  
         </tr>
          <tr>    
          <td>ApplicationWorked; :</td>    
          <td><form:input path="applicationWorked" /></td>  
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    