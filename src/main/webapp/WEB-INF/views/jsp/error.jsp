<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<c:if test="${not empty exception.errCode}">
		<h1>${exception.errCode} : System Errors</h1>
	</c:if>

	<c:if test="${empty exception.errCode}">
		<h1>System Errors</h1>
	</c:if>

	<c:if test="${not empty exception.errMsg}">
		<div class="ads-in-post hide_if_width_less_800">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- new 728x90 - After1stH4 -->
<ins class="adsbygoogle hide_if_width_less_800"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-2836379775501347"
     data-ad-slot="7391621200"
     data-ad-region="mkyongregion"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div><h2>${exception.errMsg}</h2>
	</c:if>

</body>
</html>