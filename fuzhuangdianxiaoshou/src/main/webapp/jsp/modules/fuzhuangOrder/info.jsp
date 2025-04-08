<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto" id="navUl">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑服装订单</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">服装订单管理</li>
                        <li class="breadcrumb-item active">服装订单登记</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">服装订单信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表所有字段 -->

                                        <div class="form-group col-md-6">
                                            <label>收货人</label>
                                            <input style="width: 450px" id="addressName" name="addressName" class="form-control"
                                                   v-model="ruleForm.addressName" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>电话</label>
                                            <input style="width: 450px" id="addressPhone" name="addressPhone" class="form-control"
                                                   v-model="ruleForm.addressPhone" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>地址</label>
                                            <input style="width: 450px" id="addressDizhi" name="addressDizhi" class="form-control"
                                                   v-model="ruleForm.addressDizhi" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>服装名称</label>
                                            <input style="width: 450px" id="fuzhuangName" name="fuzhuangName" class="form-control"
                                                   v-model="ruleForm.fuzhuangName" readonly>
                                        </div>


                                    <div class="form-group col-md-6">
                                        <label>服装照片</label>
                                        <img id="fuzhuangPhotoImg" width="100" height="100">
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>服装类型</label>
                                        <input style="width: 450px" id="fuzhuangValue" name="fuzhuangValue" class="form-control"
                                               v-model="ruleForm.fuzhuangValue" readonly>
                                    </div>



                                        <div class="form-group col-md-6">
                                            <label>用户姓名</label>
                                            <input style="width: 450px" id="yonghuName" name="yonghuName" class="form-control"
                                                   v-model="ruleForm.yonghuName" readonly>
                                        </div>

                            <!-- 本表所有字段 -->



                                    <input id="updateId" name="id" type="hidden">

                                    <div class="form-group col-md-6">
                                        <label>订单号</label>
                                        <input style="width: 450px" id="fuzhuangOrderUuidNumber" name="fuzhuangOrderUuidNumber" class="form-control"
                                               v-model="ruleForm.fuzhuangOrderUuidNumber" readonly>
                                    </div>

                                <input id="addressId" name="addressId" v-model="ruleForm.addressId" readonly type="hidden">
                                <input id="fuzhuangId" name="fuzhuangId" v-model="ruleForm.fuzhuangId" readonly type="hidden">
                                <input id="yonghuId" name="yonghuId" v-model="ruleForm.yonghuId" readonly type="hidden">

                                    <div class="form-group col-md-6">
                                        <label>购买数量</label>
                                        <input style="width: 450px" id="buyNumber" name="buyNumber" class="form-control"
                                               v-model="ruleForm.buyNumber" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>实付价格</label>
                                        <input style="width: 450px" id="fuzhuangOrderTruePrice" name="fuzhuangOrderTruePrice" class="form-control"
                                               v-model="ruleForm.fuzhuangOrderTruePrice" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>快递公司</label>
                                        <input style="width: 450px" id="fuzhuangOrderCourierName" name="fuzhuangOrderCourierName" class="form-control"
                                               v-model="ruleForm.fuzhuangOrderCourierName" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>订单快递单号</label>
                                        <input style="width: 450px" id="fuzhuangOrderCourierNumber" name="fuzhuangOrderCourierNumber" class="form-control"
                                               v-model="ruleForm.fuzhuangOrderCourierNumber" readonly>
                                    </div>


                                <div class="form-group col-md-6">
                                    <label>订单类型</label>
                                    <input style="width: 450px" id="fuzhuangOrderValue" name="fuzhuangOrderValue" class="form-control"
                                           v-model="ruleForm.fuzhuangOrderValue" readonly>
                                </div>

                                <div class="form-group col-md-6">
                                    <label>审核状态</label>
                                    <input style="width: 450px" id="fuzhuangOrderYesnoValue" name="fuzhuangOrderYesnoValue" class="form-control"
                                           v-model="ruleForm.fuzhuangOrderYesnoValue" readonly>
                                </div>

                                    <div class="form-group col-md-6">
                                        <label>审核意见</label>
                                        <input style="width: 450px" id="fuzhuangOrderYesnoText" name="fuzhuangOrderYesnoText" class="form-control"
                                               v-model="ruleForm.fuzhuangOrderYesnoText" readonly>
                                    </div>


                                <div class="form-group col-md-6">
                                    <label>支付类型</label>
                                    <input style="width: 450px" id="fuzhuangOrderPaymentValue" name="fuzhuangOrderPaymentValue" class="form-control"
                                           v-model="ruleForm.fuzhuangOrderPaymentValue" readonly>
                                </div>
                                <div class="form-group col-md-12 mb-3">
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "fuzhuangOrder";
    var pageType = "add-or-update";
    var updateId = "";

    var fuzhuangOrderTypesOptions = [];
    var fuzhuangOrderYesnoTypesOptions = [];
    var fuzhuangOrderPaymentTypesOptions = [];

    var ruleForm = {};
    var vm = new Vue({
        el: '#addOrUpdateForm',
        data: {
            ruleForm: {},
        },
        beforeCreate: function () {
            var id = window.sessionStorage.getItem("updateId");
            if (id != null && id != "" && id != "null") {
                $.ajax({
                    type: "GET",
                    url: baseUrl + "fuzhuangOrder/info/" + id,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function (res) {
                        if (res.code == 0) {
                            vm.ruleForm = res.data;
                            ruleForm = res.data;
                            showImg();
                            setContent();
                        } else if (res.code == 401) {
                        <%@ include file="../../static/toLogin.jsp"%>
                        } else {
                            alert(res.msg)
                        }
                    },
                });
            }
        },
        methods: {}
    });


    // 填充富文本框
    function setContent() {

        if (ruleForm.fuzhuangContent != null && ruleForm.fuzhuangContent != 'null' && ruleForm.fuzhuangContent != '') {
            var fuzhuangContentUeditor = UE.getEditor('fuzhuangContentEditor');
                fuzhuangContentUeditor.ready(function () {
                    var mes = '';
                    if(ruleForm.fuzhuangContent != null){
                        mes = ''+ ruleForm.fuzhuangContent;
                        // mes = mes.replace(/\n/g, "<br>");
                    }
                    fuzhuangContentUeditor.setContent(mes);
                    fuzhuangContentUeditor.setDisabled('fullscreen');
            });
        }
    }

    //图片显示
    function showImg() {
        $("#fuzhuangPhotoImg").attr("src", ruleForm.fuzhuangPhoto);
        $("#yonghuPhotoImg").attr("src", ruleForm.yonghuPhoto);
    }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addfuzhuangOrder');
        window.location.href = "list.jsp";
    }

    // 下载
    function download(fileName) {
        var url = baseUrl+'file/download?fileName='+fileName;
        window.open(url);
    }

    //设置下载
    function setDownloadBtn() {

    }

    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });


    <%@ include file="../../static/myInfo.js"%>
    });
    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
