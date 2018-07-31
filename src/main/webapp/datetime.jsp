<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/27 0027
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--侧边日历--%>

<div id='schedule-box'></div>

<script src="schedule.js"></script>

<script>
    var mySchedule = new Schedule({
        el: '#schedule-box',
        //date: '2018-9-20',
        clickCb: function (y,m,d) {
            //document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        nextMonthCb: function (y,m,d) {
            //document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        nextYeayCb: function (y,m,d) {
            //document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        prevMonthCb: function (y,m,d) {
            //document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        },
        prevYearCb: function (y,m,d) {
            //document.querySelector('#h3Ele').innerHTML = '日期：'+y+'-'+m+'-'+d
        }
    });
</script>
