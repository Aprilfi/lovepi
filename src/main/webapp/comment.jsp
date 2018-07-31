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
        {id:1,img:"bootstrap/img/img.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",time:"2017-10-17 11:42:53",address:"深圳",osname:"",browse:"谷歌",replyBody:[]},
        {id:2,img:"bootstrap/img/img.jpg",replyName:"匿名",beReplyName:"",content:"到菜市场买菜，看到一个孩子在看摊，我问：“一只鸡多少钱？” 那孩子回答：“23。” 我又问：“两只鸡多少钱？” 孩子愣了一下，一时间没算过来，急中生智大吼一声：“一次只能买一只！”",time:"2017-10-17 11:42:53",address:"深圳",osname:"",browse:"谷歌",replyBody:[{id:3,img:"bootstrap/img/img.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"来啊，我们一起吃鸡",time:"2017-10-17 11:42:53",address:"",osname:"",browse:"谷歌"}]},
        {id:3,img:"bootstrap/img/img.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",time:"2017-10-17 11:42:53",address:"深圳",osname:"win10",browse:"谷歌",replyBody:[]}
    ];
    $(function(){
        $(".comment-list").addCommentList({data:arr,add:""});
        $("#comment").click(function(){
            var obj = new Object();
            obj.img="bootstrap/img/img.jpg";
            obj.replyName="me";
            obj.content=$("#content").val();
            obj.browse="深圳";
            obj.osname="win7";
            obj.replyBody="";
            $(".comment-list").addCommentList({data:[],add:obj});
            $("#content").val('');
        });
    })
</script>