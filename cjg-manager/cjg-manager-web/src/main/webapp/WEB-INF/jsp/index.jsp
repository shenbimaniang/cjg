<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <!-- 导入easyui的样式表 -->
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" href="css/common.css">
</head>
<body class="easyui-layout">
<div data-options="region:'north'" style="height:70px;padding-left:10px;">
    <h2>藏金阁后台管理系统</h2>
</div>
<div data-options="region:'south'" style="padding:5px;background:#eee;">
    系统版本：V1.0
</div>
<div data-options="region:'west'" style="width:200px;">
    <div id="menu" class="easyui-accordion">
        <div title="权限管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'access_management'}">权限管理</li>
                <li data-options="attributes:{'href':'role_management'}">角色管理</li>
                <li data-options="attributes:{'href':'operator_management'}">操作员管理</li>
            </ul>
        </div>
        <div title="账户管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'account_info'}">账户信息</li>
                <li data-options="attributes:{'href':'account_history'}">账户历史信息</li>
            </ul>
        </div>
        <div title="用户管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'user_info'}">用户信息</li>
            </ul>
        </div>
        <div title="支付管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'payment_info'}">支付产品信息</li>
                <li data-options="attributes:{'href':'user_payment'}">用户支付配置</li>
            </ul>
        </div>
        <div title="交易管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'payment_order'}">支付订单管理</li>
                <li data-options="attributes:{'href':'payment_record'}">支付记录管理</li>
            </ul>
        </div>
        <div title="结算管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'settlement_record'}">结算记录管理</li>
            </ul>
        </div>
    </div>
</div>
<div data-options="region:'center'" style="background:#eee;">
    <div id="tab" class="easyui-tabs" data-options="fit:true">
        <div title="欢迎页面" style="padding:20px;">欢迎来到藏金阁</div>
    </div>
</div>
<!-- jquery -->
<script src="js/jquery-easyui-1.5/jquery.min.js"></script>
<!-- jquery easyui -->
<script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<!-- 自定义脚本 -->
<script src="js/common.js"></script>
<!-- 自定义js -->
<!-- 导入moment.js-->
<script src="js/moment/moment-with-locales.js"></script>
<!--使用中文格式-->
<script>
    moment.locale('zh-cn');
</script>
<script>
    cjg.registerMenuEvent();
</script>

</body>
</html>