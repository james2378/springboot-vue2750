<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>注册</title>
    <!-- bootstrap样式，地图插件使用 -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <!-- 样式 -->
    <link rel="stylesheet" href="../../css/style.css"/>
    <!-- 主题（主要颜色设置） -->
    <link rel="stylesheet" href="../../css/theme.css"/>
    <!-- 通用的css -->
    <link rel="stylesheet" href="../../css/common.css"/>
</head>
<body style="background: #EEEEEE; ">


<div id="app">

    <!-- 轮播图 -->
    <div class="layui-carousel" id="swiper">
        <div carousel-item id="swiper-item">
            <div v-for="(item,index) in swiperList" v-bind:key="index">
                <img class="swiper-item" :src="item.img">
            </div>
        </div>
    </div>
    <!-- 轮播图 -->

    <div class="data-add-container">

        <form class="layui-form layui-form-pane" lay-filter="myForm">
            <!-- 级联表的 -->
            <div class="layui-form-item" pane>
                <label class="layui-form-label">服装编号：</label>
                <div class="layui-input-block">
                    <input v-model="fuzhuang.fuzhuangUuidNumber" type="text"  readonly="readonly" name="fuzhuangUuidNumber" id="fuzhuangUuidNumber" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item" pane>
                <label class="layui-form-label">服装名称：</label>
                <div class="layui-input-block">
                    <input v-model="fuzhuang.fuzhuangName" type="text"  readonly="readonly" name="fuzhuangName" id="fuzhuangName" autocomplete="off"
                           class="layui-input">
                </div>
            </div>


            <div class="layui-form-item" pane>
                <label class="layui-form-label">服装照片：</label>
                <div v-if="fuzhuang.fuzhuangPhoto" class="layui-input-block">
                    <img id="fuzhuangPhotoImg"
                         style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;"
                         :src="fuzhuang.fuzhuangPhoto">
                    <input type="hidden" :value="detail.fuzhuangPhoto" readonly="readonly" id="fuzhuangPhoto" name="fuzhuangPhoto"/>
                </div>
            </div>
                
            <div class="layui-form-item" pane>
                <label class="layui-form-label">服装库存：</label>
                <div class="layui-input-inline">
                    <input v-model="fuzhuang.fuzhuangKucunNumber" type="text" readonly="readonly" name="fuzhuangKucunNumber" id="fuzhuangKucunNumber"   placeholder="服装库存" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item" pane>
                <label class="layui-form-label">热度：</label>
                <div class="layui-input-inline">
                    <input v-model="fuzhuang.fuzhuangClicknum" type="text" readonly="readonly" name="fuzhuangClicknum" id="fuzhuangClicknum"   placeholder="热度" autocomplete="off" class="layui-input">
                </div>
            </div>


            <!-- 当前表的 -->
<!-- 唯一uuid -->
            <div class="layui-form-item" pane>
                <label class="layui-form-label">订单号：</label>
                <div class="layui-input-inline">
                    <input  type="text" name="fuzhuangOrderUuidNumber" id="fuzhuangOrderUuidNumber"  lay-verify="required"   placeholder="订单号" autocomplete="off" class="layui-input" readonly="readonly">
                </div>
            </div>
            <!-- 级联表的表id -->
            <input type="hidden" :value="fuzhuang.id" id="fuzhuangId" name="fuzhuangId"/>
            <div class="layui-form-item" pane>
                <label class="layui-form-label">购买数量：</label>
                <div class="layui-input-inline">
                    <input <%--v-model="detail.buyNumber"--%> type="text" name="buyNumber" id="buyNumber" lay-verify="integer|required"   placeholder="购买数量" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item" pane>
                <label class="layui-form-label">实付价格：</label>
                <div class="layui-input-inline">
                    <input <%--v-model="detail.fuzhuangOrderTruePrice"--%> type="text" name="fuzhuangOrderTruePrice" id="fuzhuangOrderTruePrice" lay-verify="double|required"   placeholder="实付价格" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item" pane>
                <label class="layui-form-label">快递公司：</label>
                <div class="layui-input-block">
                    <input <%--v-model="detail.fuzhuangOrderCourierName"--%> type="text" name="fuzhuangOrderCourierName" id="fuzhuangOrderCourierName" placeholder="快递公司" lay-verify="required" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item" pane>
                <label class="layui-form-label">订单快递单号：</label>
                <div class="layui-input-block">
                    <input <%--v-model="detail.fuzhuangOrderCourierNumber"--%> type="text" name="fuzhuangOrderCourierNumber" id="fuzhuangOrderCourierNumber" placeholder="订单快递单号" lay-verify="required" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block" style="text-align: right;margin-right: 30px;">
                    <button class="layui-btn btn-submit" lay-submit lay-filter="thisSubmit">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="../../layui/layui.js"></script>
<script src="../../js/vue.js"></script>
<!-- 组件配置信息 -->
<script src="../../js/config.js"></script>
<!-- 扩展插件配置信息 -->
<script src="../../modules/config.js"></script>
<!-- 工具方法 -->
<script src="../../js/utils.js"></script>
<!-- 校验格式工具类 -->
<script src="../../js/validate.js"></script>
<!-- 地图 -->
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

<script>
    var jquery = $;

    var vue = new Vue({
        el: '#app',
        data: {
            // 轮播图
            swiperList: [{
                img: '../../img/banner.jpg'
            }],
            // 当前表数据
            detail: {
                fuzhuangOrderUuidNumber: '',
                addressId: '',
                fuzhuangId: '',
                yonghuId: '',
                buyNumber: '',
                fuzhuangOrderTruePrice: '',
                fuzhuangOrderCourierName: '',
                fuzhuangOrderCourierNumber: '',
        fuzhuangOrderTypes: '',
        fuzhuangOrderValue: '',
        fuzhuangOrderYesnoTypes: '',
        fuzhuangOrderYesnoValue: '',
                fuzhuangOrderYesnoText: '',
        fuzhuangOrderPaymentTypes: '',
        fuzhuangOrderPaymentValue: '',
                insertTime: '',
                createTime: '',
            },

            // 级联表的
            fuzhuang: {},

            // 下拉框
            fuzhuangOrderTypesList: [],
            fuzhuangOrderYesnoTypesList: [],
            fuzhuangOrderPaymentTypesList: [],
            centerMenu: centerMenu
        },
        updated: function () {
            layui.form.render('select', 'myForm');
        },
        computed: {},
        methods: {
            jump(url) {
                jump(url)
            }
        }
    })


    layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate', 'tinymce'], function () {
        var layer = layui.layer;
        var element = layui.element;
        var carousel = layui.carousel;
        var http = layui.http;
        var jquery = layui.jquery;
        var form = layui.form;
        var upload = layui.upload;
        var laydate = layui.laydate;
        var tinymce = layui.tinymce

        // 获取轮播图 数据
        http.request('config/list', 'get', {
            page: 1,
            limit: 5
        }, function(res) {
            if (res.data.list.length > 0) {
                var swiperItemHtml = '';
                for (let item of res.data.list) {
                    if (item.value != "" && item.value != null) {
                        swiperItemHtml +=
                                '<div>' +
                                '<img class="swiper-item" src="' + item.value + '">' +
                                '</div>';
                    }
                }
                jquery('#swiper-item').html(swiperItemHtml);
                // 轮播图
                carousel.render({
                    elem: '#swiper',
                    width: swiper.width,height:swiper.height,
                    arrow: swiper.arrow,
                    anim: swiper.anim,
                    interval: swiper.interval,
                    indicator: "none"
                });
            }
        });


        vue.detail.fuzhuangOrderUuidNumber = new Date().getTime();
        // 级联表数据查询
        initializationfuzhuang(localStorage.getItem('fuzhuangId'));
        vue.detail.buyNumber = localStorage.getItem('buyNumber');


        // 下拉框
        // 订单类型的查询和初始化
       fuzhuangOrderTypesSelect();
        // 审核状态的查询和初始化
       fuzhuangOrderYesnoTypesSelect();
        // 支付类型的查询和初始化
       fuzhuangOrderPaymentTypesSelect();

        // 上传文件
        // 日期效验规则及格式
        dateTimePick();
        // 表单效验规则
        form.verify({
            // 正整数效验规则
            integer: [
                /^[1-9][0-9]*$/
                ,'必须是正整数'
            ]
            // 小数效验规则
            ,double: [
                /^[1-9][0-9]{0,5}(\.[0-9]{1,2})?$/
                ,'最大整数位为6为,小数最大两位'
            ]
        });

        // session独取
        let table = localStorage.getItem("userTable");
        http.request(table+"/session", 'get', {}, function (data) {
            // 表单赋值
            //form.val("myForm", data.data);
            // data = data.data;
            for (var key in data) {
                vue.detail[table+"Id"] = data.id
            }
        });


        // 提交
        form.on('submit(thisSubmit)', function (data) {
            data = data.field;
            data["yonghuId"]= localStorage.getItem("userid");
//            data["fuzhuangOrderTypes"]= 3;
            // 提交数据
            http.requestJson('fuzhuangOrder' + '/add', 'post', data, function (res) {
                layer.msg('提交成功', {
                    time: 2000,
                    icon: 6
                }, function () {
                    back();
                });
            });
            return false
        });


        // 日期框初始化
        function dateTimePick(){
            var myDate = new Date();  //获取当前时间
            /*
                ,change: function(value, date, endDate){
                    value       得到日期生成的值，如：2017-08-18
                    date        得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}
                    endDate     得结束的日期时间对象，开启范围选择（range: true）才会返回。对象成员同上。
            */
        }




       // 订单类型的查询
       function fuzhuangOrderTypesSelect() {
           //填充下拉框选项
           http.request("dictionary/page?page=1&limit=100&sort=&order=&dicCode=fuzhuang_order_types", "GET", {}, (res) => {
               if(res.code == 0){
                   vue.fuzhuangOrderTypesList = res.data.list;
               }
           });
       }


       // 审核状态的查询
       function fuzhuangOrderYesnoTypesSelect() {
           //填充下拉框选项
           http.request("dictionary/page?page=1&limit=100&sort=&order=&dicCode=fuzhuang_order_yesno_types", "GET", {}, (res) => {
               if(res.code == 0){
                   vue.fuzhuangOrderYesnoTypesList = res.data.list;
               }
           });
       }


       // 支付类型的查询
       function fuzhuangOrderPaymentTypesSelect() {
           //填充下拉框选项
           http.request("dictionary/page?page=1&limit=100&sort=&order=&dicCode=fuzhuang_order_payment_types", "GET", {}, (res) => {
               if(res.code == 0){
                   vue.fuzhuangOrderPaymentTypesList = res.data.list;
               }
           });
       }




        function initializationfuzhuang(id){
            // 详情赋值
            http.request("fuzhuang/detail/" + id, 'get', {}, function (res) {
                if(res.code ==0){
                    vue.fuzhuang = res.data;
                }
            });
        }
    });
</script>
</body>
</html>