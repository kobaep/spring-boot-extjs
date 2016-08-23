<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<spring:url value="/" var="home" />
<div id="header"></div>
<script>
    var tb = new Ext.Toolbar({
        renderTo: 'header',
        height: 30,
        items: [
            {
                html: '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="/resources/images/foamtec.png" width="100"/> ',
                handler: function(){
                    window.location.href = "${home}";
                }
            }
        ]
    });
</script>