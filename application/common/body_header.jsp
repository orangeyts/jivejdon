<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%@ page trimDirectiveWhitespaces="true" %>

<header>
	<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					  <a href="/"><img src="https://cdn.jdon.com/simgs/jdon100.png" width="100" height="40"  alt=""/></a>
				</div>
				<div class="col-md-6">
					<ul class="list-inline top-link link">
						 <logic:present name="principal" ><i class="smallgray"> 欢迎<bean:write name="principal" /></i> </logic:present>
				        <li><a href="/forum"><i class="fa fa-home"></i>道场</a></li>
						<li><a href="/threads"><i class="fa fa-list-ul"></i>最新</a></li>
						<li><a href="/tags"><i class="fa fa-star-half-full"></i>推荐</a></li>
						<li><a href="/followus.html"><i class="fa fa-feed"></i>订阅</a></li>
						 <logic:notPresent name="principal" >
							 <li><html:link page="/account/newAccountForm.shtml"><i class="fa fa-user-secret"></i>注册</html:link></li>
                         </logic:notPresent>
                         <logic:notPresent name="principal" >
							 <li><a href="javascript:void(0);" onclick='loadWLJS(loginW)'><i class="fa fa-sign-in"></i>登陆 </a></li>
						</logic:notPresent>
						<logic:present name="principal" > 
							<li><a href="<%=request.getContextPath()%>/message/post.jsp"><i class=" fa fa-share-square"></i>发布</a></li>
						</logic:present>
                        <logic:present name="principal" > 
							<li><a href="<%=request.getContextPath()%>/blog/<bean:write name="principal"/>"><i class="fa fa-newspaper-o"></i>博客</a></li>
						</logic:present>
                       <logic:present name="principal" >
						   <li><html:link page="/jasslogin?logout"><i class="fa fa-sign-out"></i>退出 </html:link></li>
                        </logic:present>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	
	<!--Navigation-->
    <nav id="menu" class="navbar container">
        <div class="navbar-header">
            <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            <a class="navbar-brand" href="/">
                <div class="logo"><span>解道Jdon</span></div>
            </a>
        </div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-inverse">
					<li><a href="/oo.html">面向对象</a></li>
				    <li><a href="/designpatterns/">设计模式</a></li>
					<li><a href="/ddd.html">领域驱动设计</a></li>
				   	<li><a href="/microservice.html">微服务</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">企业架构 <i class="fa fa-arrow-circle-o-down"></i></a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							<ul class="list-unstyled">
								<li><a href="/design.htm">架构设计</a></li>
								<li><a href="/soa.html">SOA</a></li>
								<li><a href="/scalable.html">可伸缩性</a></li>
								<li><a href="/performance.html">性能设计</a></li>
								<li><a href="/transaction.html">事务</a></li>	
								<li><a href="/rest.html">RESTful</a></li>	
								<li><a href="/eda.html">事件驱动</a></li>
								<li><a href="/cache.html">缓存设计</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">编程 <i class="fa fa-arrow-circle-o-down"></i></a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							<ul class="list-unstyled">
								<li><a href="/dl/best/spring.htm">Spring框架</a></li>
								<li><a href="/jdonframework/">Jdon框架</a></li>
								<li><a href="/concurrency.html">并发编程</a></li>
								<li><a href="/asynchronous.html">异步编程</a></li>
								<li><a href="/reactive.html">响应编程</a></li>
								<li><a href="/functional.html">函数编程</a></li>
								<li><a href="/aop.html">AOP编程</a></li>							
							</ul>
						</div> 
					</div>
				</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">分布式 <i class="fa fa-arrow-circle-o-down"></i></a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							<ul class="list-unstyled">
								<li><a href="/DistributedSystems.html">分布式设计</a></li>
								<li><a href="/springcloud.html">SpringCloud</a></li>
								<li><a href="/event.html">事件溯源</a></li>
								<li><a href="/cqrs.html">CQRS</a></li>
								<li><a href="/nosql.html">NoSQL</a></li>
								<li><a href="/blockchain.html">区块链</a></li>
								<li><a href="/cloudcompute.html">云计算</a></li>
								<li><a href="/bigdata.html">大数据</a></li>
							</ul>
						</div> 
					</div>
				</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">学习教程 <i class="fa fa-arrow-circle-o-down"></i></a>
					<div class="dropdown-menu">
						<div class="dropdown-inner">
							<ul class="list-unstyled">
								<li><a href="/consultant.html">培训咨询</a></li>
								<li><a href="/course.html">教程列表</a></li>
								<li><a href="/idea.html">Java基础</a></li>
								<li><a href="/android.html">安卓</a></li>
								<li><a href="/idea/nodejs/">Node.js</a></li>
								<li><a href="/js.html">Javascript</a></li>
								<li><a href="/artichect/docker.html">Docker</a></li>
								<li><a href="/colorUML.html">四色原型</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
			<ul class="list-inline navbar-right top-social">
				<li><a href="javascript:shareto('sina')"><i class="fa fa-weibo"></i></a></li>
				<li><a href="javascript:shareto('weixin')"><i class="fa fa-weixin"></i></a></li>
				<li><a href="javascript:shareto('qzone')"><i class="fa fa-qq"></i></a></li>
				<li><a href="javascript:shareto('googlebuzz')"><i class="fa fa-google-plus-square"></i></a></li>
			</ul>
		</div>
	</nav>
</header>
	
	<!-- Header -->	

