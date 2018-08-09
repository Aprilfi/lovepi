<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--评论区--%>
<div class="container">
    <div class="commentbox">
        <textarea id="content" class='form-control mytextarea' placeholder="来说几句吧......" rows='5'></textarea>
        <span class="textareaInput" style="color: red">0</span>/<span class="textareaTotal">200</span>
        <div class="btn btn-info pull-right" id="comment">评论</div>
    </div>
    <div class="comment-list">

    </div>
</div>



<script type="text/javascript">


        var lenInput = $('#content').val().length;

        $("#content").keyup(function(){
            lenInput = $(this).val().length;

            if(lenInput>0 && lenInput<=200){
                $('.textareaInput').html(lenInput);
                $('#comment').attr('disabled',false);
            }else{
                $('#comment').attr('disabled',true);
            }

            if (lenInput > 200) {
                $(this).val($("#content").val().substring(0, 10));
            }
        });

    //初始化数据
    var arr = [
        {"id":1,"img":"bootstrap/img/img.jpg","replyName":"帅大叔","beReplyName":"匿名","content":"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。","time":"2017-10-17 11:42:53","address":"深圳","osname":"","browse":"谷歌","replyBody":null},
        {id:2,img:"bootstrap/img/img.jpg",replyName:"匿名",beReplyName:"",content:"到菜市场买菜，看到一个孩子在看摊，我问：“一只鸡多少钱？” 那孩子回答：“23。” 我又问：“两只鸡多少钱？” 孩子愣了一下，一时间没算过来，急中生智大吼一声：“一次只能买一只！”",time:"2017-10-17 11:42:53",address:"深圳",osname:"",browse:"谷歌",replyBody:[{id:3,img:"bootstrap/img/img.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"来啊，我们一起吃鸡",time:"2017-10-17 11:42:53",address:"",osname:"",browse:"谷歌"}]},
        {id:3,img:"bootstrap/img/img.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",time:"2017-10-17 11:42:53",address:"深圳",osname:"win10",browse:"谷歌",replyBody:[]}
    ];
        arr[0]["replyBody"] = [];

        $.ajax({
            url: "/footPrint/list.do",
            dataType: "json",
            type: "post",
            success: function (result){
                console.log(result.length);
                for (var i = 0; i < result.length; i ++) {
                    result[i]["replyBody"] = [];
                    result[i]["time"] = timeFormat(result[i]["time"]);
                }
                $(".comment-list").addCommentList({data:result,add:""});
                $("#comment").click(function(){
                    var name = prompt("请输入一个昵称","");
                    $.ajax({
                        url: "http://api.ip138.com/query/?ip=119.39.248.122&datatype=jsonp&token=fa84022a79043fb76e75f3901c1a6529",
                        type: "get",
                        dataType:"jsonp",  //数据格式设置为jsonp
                        crossDomain: true,
                        success:function(data){  //成功的回调函数
                            if (data.ret.indexOf("ok") != -1) {
                                var obj = new Object();
                                obj.img="bootstrap/img/img.jpg";
                                obj.replyName=name;
                                obj.content=$("#content").val();
                                obj.browse=data.data[2]+"-"+data.data[3];
                                obj.osname=navigator.userAgent;
                                obj.replyBody="";
                                $.ajax({
                                    url: "/footPrint/listAdd.do",
                                    type: "post",
                                    dataType: "json",
                                    data: {img: obj.img, replyName: obj.replyName
                                        , content: obj.content
                                        , time: getNowDateFormat()
                                        , address: obj.browse
                                        , osname: obj.osname},
                                    success: function () {
                                        
                                    }
                                });
                                $(".comment-list").addCommentList({data:[],add:obj});
                                $("#content").val('');
                            }
                        }
                    });

                });
            }
        });


        $.goup({
            trigger: 100,
            bottomOffset: 50,
            locationOffset: 50,
            title: '回到顶部',
            titleAsText: true
        });

        function timeFormat(timestamp) {
            var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
            Y = date.getFullYear() + '-';
            M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
            D = date.getDate() + ' ';
            h = date.getHours() + ':';
            m = date.getMinutes() + ':';
            s = date.getSeconds();
            return Y+M+D+h+m+s;
        };
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
</script>