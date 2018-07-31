<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<%--首页-推荐页--%>

<div class="content-body">
    <div class="container">
        <div class="row">
            <main id="content_box" class="col-md-9">
                <article class="post post-1">
                    <header class="entry-header">
                        <h1 class="entry-title">
                            <a href="#">关键推荐词</a>
                        </h1>
                        <div class="entry-meta">
                            <span class="post-category"><a href="#">类型</a></span>

                            <span class="post-date"><a href="#"><time class="entry-date" datetime="2012-11-09T23:15:57+00:00 ">(时间)February 2, 2013</time></a></span>

                            <span class="post-author"><a href="#">Albert Einstein（作者）</a></span>

                            <span class="comments-link"><a href="#">4 Comments（点击）</a></span>
                        </div>
                    </header>
                    <div class="entry-content clearfix">
                        <p>（内容-小标题）内容由你而定</p>
                        <div class="read-more cl-effect-14">
                            <a href="#" class="more-link">继续阅读 <span class="meta-nav">→</span></a>
                        </div>
                    </div>
                    <hr/>
                </article>

                <article class="post post-1">
                    <header class="entry-header">
                        <h1 class="entry-title">
                            <a href="#">关键推荐词</a>
                        </h1>
                        <div class="entry-meta">
                            <span class="post-category"><a href="#">类型</a></span>

                            <span class="post-date"><a href="#"><time class="entry-date" datetime="2012-11-09T23:15:57+00:00 ">(时间)February 2, 2013</time></a></span>

                            <span class="post-author"><a href="#">Albert Einstein（作者）</a></span>

                            <span class="comments-link"><a href="#">4 Comments（点击）</a></span>
                        </div>
                    </header>
                    <div class="entry-content clearfix">
                        <p>（内容-小标题）内容由你而定</p>
                        <div class="read-more cl-effect-14">
                            <a href="#" class="more-link">继续阅读 <span class="meta-nav">→</span></a>
                        </div>
                    </div>
                    <hr/>
                </article>

                <article class="post post-1">
                    <header class="entry-header">
                        <h1 class="entry-title">
                            <a href="#">关键推荐词</a>
                        </h1>
                        <div class="entry-meta">
                            <span class="post-category"><a href="#">类型</a></span>

                            <span class="post-date"><a href="#"><time class="entry-date" datetime="2012-11-09T23:15:57+00:00 ">(时间)February 2, 2013</time></a></span>

                            <span class="post-author"><a href="#">Albert Einstein（作者）</a></span>

                            <span class="comments-link"><a href="#">4 Comments（点击）</a></span>
                        </div>
                    </header>
                    <div class="entry-content clearfix">
                        <p>（内容-小标题）内容由你而定</p>
                        <div class="read-more cl-effect-14">
                            <a href="#" class="more-link">继续阅读 <span class="meta-nav">→</span></a>
                        </div>
                    </div>
                    <hr/>
                </article>

                <article class="post post-1">
                    <header class="entry-header">
                        <h1 class="entry-title">
                            <a href="#">关键推荐词</a>
                        </h1>
                        <div class="entry-meta">
                            <span class="post-category"><a href="#">类型</a></span>

                            <span class="post-date"><a href="#"><time class="entry-date" datetime="2012-11-09T23:15:57+00:00 ">(时间)February 2, 2013</time></a></span>

                            <span class="post-author"><a href="#">Albert Einstein（作者）</a></span>

                            <span class="comments-link"><a href="#">4 Comments（点击）</a></span>
                        </div>
                    </header>
                    <div class="entry-content clearfix">
                        <p>（内容-小标题）内容由你而定</p>
                        <div class="read-more cl-effect-14">
                            <a href="#" class="more-link">继续阅读 <span class="meta-nav">→</span></a>
                        </div>
                    </div>
                    <hr/>
                </article>


            </main>
            <aside class="col-md-3">
                <div class="widget widget-recent-posts">
                    <h3 class="widget-title">关于我</h3>
                    <ul>
                        <li>
                            <a href="#">
                                不是超人</a>
                        </li>
                        <li>
                            <a href="#">不是蜘蛛侠</a>
                        </li>
                        <li>
                            <a href="#">也不是灭霸</a>
                        </li>
                    </ul>
                </div>
                <div class="widget">
                    <h4>日历</h4>
                    <ul>
                        <li><jsp:include page="datetime.jsp"/></li>
                    </ul>

                </div>
                <div class="widget widget-archives">
                    <h4 class="widget-title">wechat</h4>
                    <img src="img/wechat.jpg">
                    <h4 class="widget-title">QQ</h4>
                    <img src="img/qqcode.jpg">
                </div>


                
            </aside>
        </div>
    </div>
</div>

<script>



    // 实现瀑布流动态加载数据
    var size = 0;


    $(window).scroll(function(){

        // scroll at bottom
        if ($(window).scrollTop() + $(window).height() > $(document).height() - 10) {
            // load data
            $('#content_box').append('<article class="post post-1">\n' +
                '                    <header class="entry-header">\n' +
                '                        <h1 class="entry-title">\n' +
                '                            <a href="#">关键推荐词</a>\n' +
                '                        </h1>\n' +
                '                        <div class="entry-meta">\n' +
                '                            <span class="post-category"><a href="#">类型</a></span>\n' +
                '\n' +
                '                            <span class="post-date"><a href="#"><time class="entry-date" datetime="2012-11-09T23:15:57+00:00 ">(时间)February 2, 2013</time></a></span>\n' +
                '\n' +
                '                            <span class="post-author"><a href="#">Albert Einstein（作者）</a></span>\n' +
                '\n' +
                '                            <span class="comments-link"><a href="#">4 Comments（点击）</a></span>\n' +
                '                        </div>\n' +
                '                    </header>\n' +
                '                    <div class="entry-content clearfix">\n' +
                '                        <p>（内容-小标题）内容由你而定</p>\n' +
                '                        <div class="read-more cl-effect-14">\n' +
                '                            <a href="#" class="more-link">继续阅读 <span class="meta-nav">→</span></a>\n' +
                '                        </div>\n' +
                '                    </div>\n' +
                '                    <hr/>\n' +
                '                </article>');
            size ++;
        }
        if (size > 5) {
            $ (window).unbind ('scroll');
        }
    });

</script>
