(function($){
    function crateCommentInfo(obj){

        if(typeof(obj.time) == "undefined" || obj.time == ""){
            obj.time = getNowDateFormat();
        }

        var el = "<div class='comment-info'><header><img src='"+obj.img+"'></header><div class='comment-right'><h2 style='visibility:hidden;display: none;'>" + obj.id + "</h2><h3>"+obj.replyName+"</h3>"
            +"<div class='comment-content-header'><span><i class='glyphicon glyphicon-time'></i>"+obj.time+"</span>";

        if(typeof(obj.address) != "undefined" && obj.browse != ""){
            el =el+"<span><i class='glyphicon glyphicon-map-marker'></i>"+obj.address+"</span>";
        }
        el = el+"</div><p class='content'>"+obj.content+"</p><div class='comment-content-footer'><div class='row'><div class='col-md-10'>";

        if(typeof(obj.osname) != "undefined" && obj.osname != ""){
            el =el+"<span><i class='glyphicon glyphicon-pushpin'></i> 来自:"+obj.osname+"</span>";
        }

        if(typeof(obj.browse) != "undefined" && obj.browse != ""){
            el = el + "<span><i class='glyphicon glyphicon-globe'></i> "+obj.browse+"</span>";
        }

        el = el + "</div><div class='col-md-2'><span class='reply-btn'>回复</span></div></div></div><div class='reply-list'>";
        if(obj.replyBody != "" && obj.replyBody.length > 0){
            var arr = obj.replyBody;
            for(var j=0;j<arr.length;j++){
                var replyObj = arr[j];
                el = el+createReplyComment(replyObj);
            }
        }
        el = el+"</div></div></div>";
        return el;
    }

    function createReplyComment(reply){
        var replyEl = "<div class='reply'><div><a href='javascript:void(0)' class='replyname'>"+reply.replyName+"</a>:<a href='javascript:void(0)'>@"+reply.beReplyName+"</a><span>"+reply.content+"</span></div>"
            + "<p><span>"+reply.time+"</span> <span class='reply-list-btn'>回复</span></p></div>";
        return replyEl;
    }
    function getNowDateFormat(){
        var nowDate = new Date();
        var year = nowDate.getFullYear();
        var month = filterNum(nowDate.getMonth()+1);
        var day = filterNum(nowDate.getDate());
        var hours = filterNum(nowDate.getHours());
        var min = filterNum(nowDate.getMinutes());
        var seconds = filterNum(nowDate.getSeconds());
        return year+"-"+month+"-"+day+" "+hours+":"+min+":"+seconds;
    }
    function filterNum(num){
        if(num < 10){
            return "0"+num;
        }else{
            return num;
        }
    }
    function replyClick(el){
        el.parent().parent().append("<div class='replybox'><textarea cols='80' rows='50' placeholder='来说几句吧......' class='mytextarea' ></textarea><span class='send'>发送</span></div>")
            .find(".send").click(function(){
            var content = $(this).prev().val();
            if(content != ""){
                var parentEl = $(this).parent().parent().parent().parent();
                var obj = new Object();
                var name = checkName();
                if (name != null && name != '') {
                    obj.content=content;
                    obj.time = getNowDateFormat();
                    obj.replyName=name;
                    obj.id=parentEl.find("h2").text();
                    if(el.parent().parent().hasClass("reply")){
                        obj.beReplyName = el.parent().parent().find("a:first").text();
                        console.log("if:" + obj.beReplyName + ";id:" + obj.id);
                        $.ajax({
                            url: "/footPrint/listReplyAdd.do",
                            type: "post",
                            dataType: "json",
                            data:{img:obj.id
                                ,replyName:obj.replyName
                                ,beReplyName:obj.beReplyName
                                ,content:obj.content
                                ,time:obj.time},
                            success:function (result) {
                                console.log("success");
                            }

                        });
                    }else{
                        obj.beReplyName=parentEl.find("h3").text();
                        console.log("else:" + obj.beReplyName + ";id:" + obj.id + obj.content+obj.time);
                        $.ajax({
                            url: "/footPrint/listReplyAdd.do",
                            type: "post",
                            dataType: "json",
                            data:{img:obj.id
                                ,replyName:obj.replyName
                                ,beReplyName:obj.beReplyName
                                ,content:obj.content
                                ,time:obj.time},
                            success:function (result) {
                                console.log("success");
                            }

                        });
                    }

                    var replyString = createReplyComment(obj);
                    $(".replybox").remove();
                    parentEl.find(".reply-list").append(replyString).find(".reply-list-btn:last").click(function(){
                        replyClick($(this));
                    });
                }else {
                    alert("昵称不能为空！")
                }

            }else{
                alert("回复内容不能为空!");
            }
        });
    }


    $.fn.addCommentList=function(options){
        var defaults = {
            data:[],
            add:""
        }
        var option = $.extend(defaults, options);
        if(option.data.length > 0){
            var dataList = option.data;
            var totalString = "";
            for(var i=0;i<dataList.length;i++){
                var obj = dataList[i];
                var objString = crateCommentInfo(obj);
                totalString = totalString+objString;
            }
            $(this).append(totalString).find(".reply-btn").click(function(){
                if($(this).parent().parent().find(".replybox").length > 0){
                    $(".replybox").remove();
                }else{
                    $(".replybox").remove();
                    replyClick($(this));
                }
            });
            $(".reply-list-btn").click(function(){
                if($(this).parent().parent().find(".replybox").length > 0){
                    $(".replybox").remove();
                }else{
                    $(".replybox").remove();
                    replyClick($(this));
                }
            })
        }

        if(option.add != ""){
            obj = option.add;
            var str = crateCommentInfo(obj);
            $(this).prepend(str).find(".reply-btn").click(function(){
                replyClick($(this));
            });
        }
    }

    function checkName() {
        //判断session是否存在
        if (window.sessionStorage["footPrintname"]) {
            return window.sessionStorage.getItem("footPrintname");
        }else {
            var name = prompt("请输入一个昵称：");
            if (name != null && name != '') {
                window.sessionStorage["footPrintname"] = name;
            }
            return name;
        }
    }


})(jQuery);