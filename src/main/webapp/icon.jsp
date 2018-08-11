<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="wrap">
    <a class="t"></a>
    <div class="my_box">
        <form id="uploadForm">
            <input class="jide" name="imgsrc" type="hidden" value="" />
            <img src="bootstrap/icon/1.jpg" class="my_pic"/>
        </form>
    </div>
    <div class="pic_box" id="pic_box">
        <div class="header">
            <p>设置头像</p>
            <span class="close">x</span>
        </div>
        <ul>
            <li><img src="bootstrap/icon/0.jpg"/></li>
            <li><img src="bootstrap/icon/1.jpg"/></li>
            <li><img src="bootstrap/icon/3.jpg"/></li>
            <li><img src="bootstrap/icon/4.jpg"/></li>
            <li><img src="bootstrap/icon/5.jpg"/></li>
            <li><img src="bootstrap/icon/6.jpg"/></li>
            <li><img src="bootstrap/icon/7.jpg"/></li>
            <li><img src="bootstrap/icon/8.jpg"/></li>
        </ul>
        <div class="bt_box">
            <a class="gb" href="javascript:">关闭</a>
            <a class="queren" href="javascript:">保存头像</a>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(".close,.gb").click(function(){
        $(".pic_box").animate({
            'top':'-1000px'
        },500);
    }),
        $(".my_box").click(function(){
            $(".pic_box").animate({
                'top':'15px',
            },300);
        }),
        $(".queren").click(function(){
            var src = $(".jide").val();
            //效果展示,在服务器中把这一段删除,用上面那一段
            if(src != ""){
                $(".my_pic").attr('src',src);
                $(".pic_box").animate({
                    'top':'-1000px'
                },500);
            }else{
                return false;
            }

        });
    var $box = document.getElementById('pic_box');
    var $li = $box.getElementsByTagName('li');
    var index = 0;
    for(var i=0;i<$li.length;i++){
        $li[i].index=i;
        $li[i].onclick=function(){
            $li[index].style.borderRadius="15%";
            this.style.borderRadius="50%";
            index = this.index;
        }
    }
    $(".pic_box li img").click(function(){
        var src=$(this).attr("src");
        $(".jide").val(src);
    })
</script>