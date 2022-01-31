<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <script src="vue/vue.min.js"></script>
    <script src="vue/vue-resource.min.js"></script>

</head>
<body>
<div id="app">
    <button @click="getStudent">点击取得学生信息</button>
    <br/>
    <br/>
    编号：<span>{{id}}</span><br/>
    姓名：<span>{{name}}</span><br/>
    年龄：<span>{{age}}</span><br/>


</div>
<script>
    var vm=new Vue({
        el:"#app",
        data:{
            "id":"",
            "name":"",
            "age":""

        },
        methods:{
            getStudent()
            {
                /*this.$http.get("myServlet01.do?name=zs123").then(function (data) {
                    data=data.body;
                    this.id=data.id;
                    this.name=data.name;
                    this.age=data.age;


                })*/
                this.$http.jsonp("http://localhost:8080/ky02/getKyStudentData.do").then(result=>{
                    result=result.body;
                    this.id=result.id;
                    this.name=result.name;
                    this.age=result.age;
                })

            }

        }
    })
</script>




</body>
</html>
