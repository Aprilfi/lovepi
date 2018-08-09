<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style rel="stylesheet">
    #slider {
        background-color: white;
    }
    .box {
        margin-left: 60px;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    #slider dl dd a {
        margin-left: 60px;
        color: #727272;
    }
    #slider dl dd span {
        color: black;
        font-family: 黑体;
    }
    #slider dl {
        margin-bottom: 0px;
    }
    hr {
        margin-top: 8px;
        margin-bottom: 8px;
    }
</style>

<div id="slider" class="filter">
    <div class="container">
        <div class="box">
            <dl>
                <dd>
                    <span>文章类型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    <a href="#" rel="" name="mode" class="all on">全部</a>
                    <a href="#" rel="股权融资" name="mode" class="sx_child">散文</a>
                    <a href="#" rel="债权融资" name="mode" class="sx_child">诗歌</a>
                    <a href="#" rel="债权融资" name="mode" class="sx_child">游记</a>
                    <a href="#" rel="债权融资" name="mode" class="sx_child">随笔</a>
                </dd>
            </dl>
            <hr/>
            <dl>
                <dd>
                    <span>字数（除诗歌，随笔外）</span>
                    <a href="#" rel="" name="stage" class="all on">全部</a>
                    <a href="#" rel="" name="stage" class="sx_child">500-1000</a>
                    <a href="#" rel="A轮" name="stage" class="sx_child">1000-2000</a>
                    <a href="#" rel="B轮" name="stage" class="sx_child">2000-3000</a>
                    <a href="#" rel="C轮" name="stage" class="sx_child">3000以上</a>
                </dd>
            </dl>
            <hr/>
            <dl>
                <dd>
                    <span>作者&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    <a href="#" rel="" name="area" class="all on">全部</a>
                    <a href="#" rel="华东" name="area" class="sx_child">苏缪文</a>
                    <a href="#" rel="华北" name="area" class="sx_child">投稿（佚名）</a>
                </dd>
            </dl>
            <hr/>
            <dl>
                <dd>
                    <span>发布时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    <a href="#" rel="" name="date" class="all on">全部</a>
                    <a href="#" rel="最近一天" name="date" class="sx_child">最近一天</a>
                    <a href="#" rel="最近三天" name="date" class="sx_child">最近三天</a>
                    <a href="#" rel="最近一周" name="date" class="sx_child">最近一周</a>
                    <a href="#" rel="最近两周" name="date" class="sx_child">最近两周</a>
                </dd>
            </dl>
        </div>
    </div>
</div>
</body>
</html>
