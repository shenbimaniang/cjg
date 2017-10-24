<%--
  User: 。。。
  Date: 2017/10/21
  Time: 17:57
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>账户编号：</label>
        <input class="easyui-textbox" type="text" id="accountNo">
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">查询</button>
    </div>
</div>


<table id="ah"></table>



<script>
    function searchForm(){
        $('#ah').datagrid('load',{
            accountNo:$('#accountNo').val()
        });
    }


    $('#ah').datagrid({
        multiSort:true,
        toolbar:'#toorbar',
        pageSize:20,
        fit: true,
        pagination: true,
        url: 'accountHistorys',
        columns: [[
            {field: 'id', title: '序号', width: 100},
            {field: 'accountNo', title: '账户编号', width: 100},
            {field: 'userNo', title: '用户编号', width: 100},
            {field: 'username', title: '用户名'},
            {field: 'amount', title: '变动金额'},
            {field: 'fundDirection', title: '变动方向'},
            {field: 'balance', title: '余额'},
            {field: 'requestNo', title: '请求号'},
            {field: 'trxType', title: '业务类型'},
            {field: 'createTime', title: '创建时间',formatter:function (value, row, index) {
                return moment(value).format('lll');
            }}
        ]]
    });
</script>
