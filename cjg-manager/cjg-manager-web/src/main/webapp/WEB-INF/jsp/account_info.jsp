<%--
  User: 。。。
  Date: 2017/10/21
  Time: 17:57
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="toolbar1">
    <div style="padding: 5px; background-color: #fff;">
        <label>账户编号：</label>
        <input class="easyui-textbox" type="text" id="accountNo1">
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm1()" type="button" class="easyui-linkbutton">查询</button>
    </div>
</div>


<table id="ai"></table>


<script>
    function searchForm1(){
        $('#ai').datagrid('load',{
            accountNo:$('#accountNo1').val()
        });
    }

    $('#ai').datagrid({
        multiSort:true,
        toolbar:'#toorbar1',
        pageSize:20,
        fit: true,
        pagination: true,
        url: 'accounts',
        columns: [[
            {field: 'id', title: '序号', width: 100},
            {field: 'accountNo', title: '账户编号', width: 100},
            {field: 'userNo', title: '用户编号', width: 100},
            {field: 'username', title: '用户名'},
            {field: 'balance', title: '账户余额'},
            {field: 'availableBalance', title: '可用余额'},
            {field: 'settAmount', title: '可结算金额'},
            {field: 'todayIncome', title: '今日收益'},
            {field: 'todayExpend', title: '今日支出'},
            {field: 'editTime', title: '更新时间',formatter:function (value, row, index) {
                return moment(value).format('lll');
            }}
        ]]
    });
</script>
