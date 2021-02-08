<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>导入</title>
    <link title="default" rel="stylesheet" type="text/css" href="${contextPath}/templets/ui/themes/blue/easyui.css"/>
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <script type="text/javascript" src="${contextPath}/templets/ui/js/jquery-1.8.2.js" charset="UTF-8"></script>
</head>
<body>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    html, body {
        width: 100%;
        height: 100%;
        overflow: hidden;
    }

    li {
        list-style: none;
    }

    .header {
        height: 50px;
        min-height: 50px;
        max-height: 50px;
        line-height: 50px;
        text-align: center;
        background-color: #fafafa;
    }

    .header > span {
        font-size: 14px;
        color: rgba(0, 0, 0, .85);
    }

    .btn {
        position: relative;
        display: inline-block;
        min-width: 128px;
        height: 32px;
        touch-action: manipulation;
        padding: 4px 15px;
        line-height: 1.5715;
        text-align: center;
        font-size: 14px;
        background-color: #fff;
        border: 1px solid #d9d9d9;
        color: rgba(0, 0, 0, .85);
        border-radius: 2px;
        cursor: pointer;
        user-select: none;
        transition: all .3s;
    }

    .btn + .btn {
        margin-left: 30px;
    }

    .btn:hover {
        color: #40a9ff;
        background: #fff;
        border-color: #40a9ff;
    }

    .btn:active {
        color: #096dd9;
        background: #fff;
        border-color: #096dd9;
    }

    .btn.btn-primary {
        background-color: #1890ff;
        border: #1890ff;
        color: #fff;
    }

    .btn.btn-primary:hover {
        background: #40a9ff;
        border-color: #40a9ff;
    }

    .btn.btn-primary:active {
        background: #096dd9;
    }

    a {
        color: #1890ff;
    }

    button, select {
        text-transform: none;
    }

    button, input {
        overflow: visible;
    }
</style>

<!-- 导入 -->
<style>
    .import {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
    }

    .import-wrap {
        position: relative;
        width: 100%;
        height: 100%;
        display: -ms-flexbox;
        display: flex;
        flex-direction: column;
    }

    .import .content {
        -ms-flex: 1 1 auto;
        flex: 1 1 auto;
        overflow: hidden;
    }

    .import .footer {
        width: 100%;
        height: 50px;
        min-height: 50px;
        max-height: 50px;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
    }

    .import .content > div {
        position: relative;
        width: 100%;
        height: 100%;
        display: -ms-flexbox;
        display: flex;
        flex-direction: column;
    }

    .import .content .import-steps {
        height: 52px;
        min-height: 52px;
        max-height: 52px;
        padding: 20px 24px 0;
        color: rgba(0, 0, 0, .85);
    }

    .import .steps-label-horizontal {
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        color: rgba(0, 0, 0, .85);
        font-size: 14px;
        font-variant: tabular-nums;
        line-height: 1.5715;
        list-style: none;
        -webkit-font-feature-settings: "tnum";
        font-feature-settings: "tnum";
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        width: 100%;
        font-size: 0;
        text-align: initial;
    }

    .import .steps-item {
        position: relative;
        display: inline-block;
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
        overflow: hidden;
        vertical-align: top;
    }

    .import .steps-item:last-child {
        -webkit-box-flex: 0;
        -ms-flex: none;
        flex: none;
    }

    .import .steps-item:not(:first-child) {
        padding-left: 16px;
        white-space: nowrap;
    }

    .import .steps-item .steps-item-container {
        display: -ms-flexbox;
        display: flex;
    }

    .import .steps-item .steps-item-container .steps-item-icon {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 32px;
        height: 32px;
        margin: 0 8px 0 0;
        font-size: 16px;
        font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;
        text-align: center;
        border: 1px solid rgba(0, 0, 0, .25);
        border-radius: 32px;
        -webkit-transition: background-color .3s, border-color .3s;
        transition: background-color .3s, border-color .3s;
    }

    .import .steps-item .steps-item-container .steps-item-icon .steps-icon {
        position: relative;
        font-size: 14px;
        color: rgba(0, 0, 0, .25);
    }

    .import .steps-item .steps-item-container .steps-item-content {
        display: inline-block;
        vertical-align: top;
    }

    .import .steps-item .steps-item-container .steps-item-content .steps-item-title {
        position: relative;
        display: inline-block;
        padding-right: 16px;
        color: rgba(0, 0, 0, .85);
        font-size: 16px;
        line-height: 32px;
    }

    .import .steps-item:not(:last-child) .steps-item-container .steps-item-content .steps-item-title::after {
        position: absolute;
        top: 16px;
        left: 100%;
        display: block;
        width: 9999px;
        height: 1px;
        background: #f0f0f0;
        content: "";
    }

    .import .steps-item.steps-item-finish .steps-item-icon {
        background-color: #fff;
        border-color: #1890ff;
    }

    .import .steps-item.steps-item-finish .steps-item-container .steps-item-icon .steps-icon {
        color: #1890ff;
    }

    .import .steps-item:not(:last-child).steps-item-finish .steps-item-container .steps-item-content .steps-item-title::after {
        background-color: #1890ff;
    }

    .import .steps-item.steps-item-process .steps-item-icon {
        background: #1890ff;
    }

    .import .steps-item.steps-item-process .steps-item-container .steps-item-icon .steps-icon {
        color: #fff;
    }

    .import .steps-item.steps-item-wait .steps-item-container .steps-item-content .steps-item-title {
        color: rgba(0, 0, 0, .45);
    }

    .import .content .step-wrap {
        flex: 1 1 auto;
        overflow: hidden;
    }

    .import .content .step-1, .import .content .step-2, .import .content .step-3, .import .content .step-4 {
        display: none;
        width: 100%;
        height: 100%;
        overflow-x: hidden;
        overflow-y: auto;
    }

    .import .content .step-1 > div, .import .content .step-2 > div, .import .content .step-3 > div, .import .content .step-4 > div {
        display: -ms-flexbox;
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 100%;
        min-height: 100%;
        padding-top: 60px;
    }

    .import .content .step-1 > div {
        padding-top: 50px;
    }

    .import .step-1 .import-alert {
        position: relative;
        width: 400px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        padding: 8px 15px;
        margin-bottom: 20px;
        background-color: #e6f7ff;
        border: 1px solid #91d5ff;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        color: rgba(0, 0, 0, .85);
        font-size: 14px;
        font-variant: tabular-nums;
        line-height: 1.5715;
        list-style: none;
        -webkit-font-feature-settings: "tnum";
        font-feature-settings: "tnum";
        word-wrap: break-word;
        border-radius: 2px;
    }

    .import .step-1 .import-alert .import-alert-icon {
        color: #1890ff;
        margin-right: 8px;
        display: inline-block;
        font-style: normal;
        line-height: 0;
        text-align: center;
        text-transform: none;
        vertical-align: -.125em;
        text-rendering: optimizeLegibility;
        -webkit-font-smoothing: antialiased;
    }

    .import .step-1 .import-alert .import-alert-content {
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
        min-width: 0;
    }

    .import .step-1 .import-alert .import-alert-content .import-alert-message {
        color: rgba(0, 0, 0, .85);
    }

    .import .step-1 .import-card {
        width: 320px;
        height: 120px;
        min-height: 120px;
        max-height: 120px;
        text-align: center;
        vertical-align: top;
        background-color: #fafafa;
        border: 1px dashed #d9d9d9;
        border-radius: 2px;
        cursor: pointer;
        -webkit-transition: all .3s;
        transition: all .3s;
    }

    .import .step-1 .import-card.error {
        border-color: #ff4d4f;
    }

    .import .step-1 .import-card:hover {
        border-color: #1890ff;
    }

    .import .step-1 .import-btn {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100%;
        text-align: center;
        font-size: 14px;
    }

    .import .step-1 .import-btn .plus {
        display: inline-block;
        font-size: 22px;
    }

    .import .step-1 .file-list {
        position: relative;
        width: 320px;
    }

    .import .step-1 .import-list-item {
        position: relative;
        height: 22.001px;
        margin-top: 8px;
        font-size: 14px;
    }

    .import .step-1 .import-list-item .import-list-item-info {
        height: 100%;
        padding: 0 4px;
        -ms-transition: background-color .3s;
        -webkit-transition: background-color .3s;
        transition: background-color .3s;
    }

    .import .step-1 .import-list-item:hover .import-list-item-info {
        background-color: #f5f5f5;
    }

    .import .step-1 .import-list-item .import-span {
        width: 100%;
        height: 100%;
        flex: auto;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        line-height: 1.5715;
        font-size: 14px;
    }

    .import .step-1 .import-list-item .import-span .import-text-icon {
        -webkit-box-flex: 0;
        -ms-flex: none;
        flex: none;

    }

    .import .step-1 .import-list-item .import-span .import-text-icon .paper-clip {
        position: static;
        display: inline-block;
        color: rgba(0, 0, 0, .45);
        font-size: 14px;
        line-height: 0;
        vertical-align: -0.2em;
    }

    .import .step-1 .import-list-item .import-span .import-list-item-name {
        -webkit-box-flex: 1;
        -ms-flex: auto;
        flex: auto;
        padding: 0 8px;
        display: inline-block;
        width: 100%;
        overflow: hidden;
        line-height: 1.5715;
        white-space: nowrap;
        text-overflow: ellipsis;
        text-decoration: none;
        background-color: transparent;
        outline: none;
    }

    .import .step-1 .import-list-item .import-span .import-list-item-del {
        -webkit-box-flex: 0;
        -ms-flex: none;
        flex: none;
    }

    .import .step-1 .import-list-item .import-span .import-list-item-del .btn-icon-only {
        position: static;
        height: 20px;
        line-height: 1.5715;
        width: 24px;
        padding: 0;
        font-size: 14px;
        border-radius: 2px;
        opacity: 0;
        color: rgba(0, 0, 0, .45);
        background: transparent;
        border-color: transparent;
        -webkit-box-shadow: none;
        box-shadow: none;
        outline: 0;
        -ms-transition: background-color .3s;
        -webkit-transition: background-color .3s;
        transition: background-color .3s;
        cursor: pointer;
    }

    .import .step-1 .import-list-item:hover .import-span .import-list-item-del .btn-icon-only {
        opacity: 1;
    }

    .import .step-1 .import-list-item:hover .import-span .import-list-item-del:hover {
        background-color: rgba(0, 0, 0, .018);
    }

    .import .step-2 .step-content, .import .step-3 .step-content {
        padding-left: 15%;
        padding-right: 15%;
    }

    .import .step-2 .progress-wrap, .import .step-3 .progress-wrap {
        position: relative;
        width: 100%;
        font-size: 14px;
        color: rgba(0, 0, 0, .85);
        font-variant: tabular-nums;
        line-height: 1.5715;
        list-style: none;
        font-feature-settings: "tnum";
        display: inline-block;
        overflow: hidden;
    }

    .import .step-2 .progress-wrap .progress-outer, .import .step-3 .progress-wrap .progress-outer {
        margin-right: calc(-2em - 8px);
        padding-right: calc(2em + 8px);
        display: inline-block;
        width: 100%;
    }

    .import .step-2 .progress-wrap .progress-inner, .import .step-3 .progress-wrap .progress-inner {
        position: relative;
        display: inline-block;
        width: 100%;
        overflow: hidden;
        vertical-align: middle;
        background-color: #f5f5f5;
        border-radius: 100px;
    }

    .import .step-2 .progress-wrap .progress-bg, .import .step-3 .progress-wrap .progress-bg {
        position: relative;
        width: 0%;
        height: 8px;
        background-color: #1890ff;
        border-radius: 100px;
        -webkit-transition: all .4s cubic-bezier(.08, .82, .17, 1) 0s;
        transition: all .4s cubic-bezier(.08, .82, .17, 1) 0s;
    }

    .import .step-2 .progress-wrap .progress-text, .import .step-3 .progress-wrap .progress-text {
        display: inline-block;
        width: 2em;
        color: rgba(0, 0, 0, .45);
        font-size: 1em;
        line-height: 1;
        white-space: nowrap;
        text-align: left;
        vertical-align: middle;
        word-break: normal;
    }

    .import .step-4 {
        font-size: 14px;
        color: rgba(0, 0, 0, 85);
    }

    .import .step-4 .check-circle {
        font-size: 0;
        margin-bottom: 10px;
    }

    .import .step-4 .check-circle.success {
        color: #52c41a;
    }

    .import .step-4 .check-circle.error {
        color: #ff4d4f;
    }

    .import .step-4 .check-circle svg {
        font-size: 50px;
        display: none;
    }

    .import .step-4 .check-circle.success .success-svg-icon {
        display: block;
    }

    .import .step-4 .check-circle.error .error-svg-icon {
        display: block;
    }
</style>

<!-- 导入 -->
<div class="import" id="import">
    <div class="import-wrap">
        <div class="content">
            <div>
                <div class="import-steps">
                    <div class="steps-label-horizontal">
                        <div class="steps-item">
                            <div class="steps-item-container">
                                <div class="steps-item-icon">
                                    <span class="steps-icon">1</span>
                                </div>
                                <div class="steps-item-content">
                                    <div class="steps-item-title">上传文件</div>
                                </div>
                            </div>
                        </div>
                        <div class="steps-item">
                            <div class="steps-item-container">
                                <div class="steps-item-icon">
                                    <span class="steps-icon">2</span>
                                </div>
                                <div class="steps-item-content">
                                    <div class="steps-item-title">导入数据</div>
                                </div>
                            </div>
                        </div>
                        <div class="steps-item">
                            <div class="steps-item-container">
                                <div class="steps-item-icon">
                                    <span class="steps-icon">3</span>
                                </div>
                                <div class="steps-item-content">
                                    <div class="steps-item-title">完成</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="step-wrap">
                    <div class="step-1">
                        <div>
                            <div class="import-card">
                  <span class="import-btn">
                    <input id="import-input" type="file" accept style="display: none;">
                    <div>
                      <span role="img" class="plus">
                        <svg viewBox="64 64 896 896" focusable="false" data-icon="plus" width="1em" height="1em"
                             fill="currentColor" aria-hidden="true"><defs><style></style></defs><path
                                    d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z"></path><path
                                    d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z"></path></svg>
                      </span>
                      <div style="margin-top: 8px; color: rgba(0, 0, 0, 85)">点击选择文件</div>
                    </div>
                  </span>
                            </div>
                            <ul class="file-list"></ul>
                        </div>
                    </div>
                    <div class="step-2">
                        <div class="step-content">
                            <div class="progress-wrap">
                                <div class="progress-tips"><span>正在上传文件，请等待...</span></div>
                                <div class="progress-outer">
                                    <div class="progress-inner">
                                        <div class="progress-bg"></div>
                                    </div>
                                </div>
                                <span class="progress-text">0%</span>
                            </div>
                        </div>
                    </div>
                    <div class="step-3">
                        <div class="step-content">
                            <div class="progress-wrap">
                                <div class="progress-tips"><span>正在导入数据，请等待...</span></div>
                                <div class="progress-outer">
                                    <div class="progress-inner">
                                        <div class="progress-bg"></div>
                                    </div>
                                </div>
                                <span class="progress-text">0%</span>
                            </div>
                            <div style="margin-top: 16px; font-size: 14px;">当前导入记录数：<label id="curNum">xxx</label></div>
                        </div>
                    </div>
                    <div class="step-4">
                        <div>
                          <span role="img" class="check-circle">
                            <svg class="success-svg-icon" viewBox="64 64 896 896" focusable="false"
                                 data-icon="check-circle" width="1em" height="1em" fill="currentColor"
                                 aria-hidden="true"><path
                                        d="M512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64zm193.5 301.7l-210.6 292a31.8 31.8 0 01-51.7 0L318.5 484.9c-3.8-5.3 0-12.7 6.5-12.7h46.9c10.2 0 19.9 4.9 25.9 13.3l71.2 98.8 157.2-218c6-8.3 15.6-13.3 25.9-13.3H699c6.5 0 10.3 7.4 6.5 12.7z"></path></svg>
                            <svg class="error-svg-icon" viewBox="64 64 896 896" focusable="false"
                                 data-icon="close-circle" width="1em" height="1em" fill="currentColor"
                                 aria-hidden="true"><path
                                        d="M512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64zm165.4 618.2l-66-.3L512 563.4l-99.3 118.4-66.1.3c-4.4 0-8-3.5-8-8 0-1.9.7-3.7 1.9-5.2l130.1-155L340.5 359a8.32 8.32 0 01-1.9-5.2c0-4.4 3.6-8 8-8l66.1.3L512 464.6l99.3-118.4 66-.3c4.4 0 8 3.5 8 8 0 1.9-.7 3.7-1.9 5.2L553.5 514l130 155c1.2 1.5 1.9 3.3 1.9 5.2 0 4.4-3.6 8-8 8z"></path></svg>
                          </span>
                            <div class="result-text"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div id="submitBtn" class="submit btn btn-primary"><span>提交</span></div>
            <div id="restartImport" class="submit btn" style="display: none;"><span>重新导入</span></div>
        </div>
    </div>
</div>

<script>
    // 工具
    var utils = {
        // 代理监听变量变化
        proxy: function () {
            var _tempValue = ''
            /**
             * @param {string} key 待监听的属性
             * @param {function} setter 赋值的时候触发该函数 function(value: string)
             * @param {any} defaultVal 设置默认值（tip.也会触发setter）
             */
            return function (key, setter, defaultVal) {
                Object.defineProperty(this, key, {
                    configurable: true,
                    enumerable: true,
                    set: function (val) {
                        _tempValue = val;
                        setter.call(this, val)
                    },
                    get: function () {
                        return _tempValue;
                    }
                });
                defaultVal !== _tempValue && (this[key] = defaultVal);
            }.bind(this)
        },
        // 伪数组转数组
        toArray: function (arr) {
            return Array.prototype.slice.call(arr)
        },
        copyObj: function (obj) {
            return JSON.parse(JSON.stringify(obj))
        },
        // 获取链接参数
        getUrlParam: function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        },
        // 关闭当前iframe
        closeWin: function () {
            window.parent.ymPrompt.close()
        },
        ajax: function (url, options) {
            var defaultOptions = {
                type: "post",
                data: {},
                dataType: 'json',
                contentType: false,
                processData: false,
                cache: false,
                success: null,// function(data: object)
                error: null,// function void
            }

            options = $.extend({}, defaultOptions, options)
            var _header = $("meta[name='_csrf_header']").attr("content");
            var _token = $("meta[name='_csrf']").attr("content");

            var ajaxOptions = {
                url: "${contextPath}" + url,
                type: options.type,
                beforeSend: function (request) {
                    request.setRequestHeader(_header, _token);
                },
                data: options.data,
                cache: options.cache,
                processData: options.processData,
                contentType: options.contentType,
                dataType: options.dataType,
                success: function (data) {
                    typeof options.success === 'function' && options.success(data)
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.error('网络异常！')
                    typeof options.error === 'function' && options.error()
                }
            }
            if (options.type.toLocaleLowerCase() === 'get') {
                delete ajaxOptions.data;
            }
            $.ajax(ajaxOptions);
        }
    }
    // 封装message组件
    var Message = {
        basis: function (msg) {
            alert(msg)
        },
        warn: function (msg) {
            alert(msg)
        },
        success: function (msg) {
            alert(msg)
        },
        error: function (msg) {
            alert(msg)
        }
    }

    var Import = (function () {
        var o = {
            $wrap: $('#import'),
            $step1: $('#import .step-1'),
            $step2: $('#import .step-2'),
            $step3: $('#import .step-3'),
            $step4: $('#import .step-4'),
            $importSteps: $('#import .import-steps'),
            hiddenRestartBtn: function (flag) {
                this.$wrap.find('#restartImport')[flag ? 'hide' : 'show']();
            },
            // flag：boolean 是否上传成功 默认失败， msg：string 提示信息
            openResult: function (flag, msg) {
                msg = msg || '';
                flag = flag || false;
                this.$step4.find('.result-text').text(msg)
                this.$step4.find('.check-circle').removeClass('success').removeClass('error');
                this.$step4.find('.check-circle').addClass(flag ? 'success' : 'error')
                this.hiddenRestartBtn(flag)
                this.currentIndex = 4
                flag && (this.currentStep = 3)
            },
            noticeGlobalTask: function (taskId) {
                if (window.top && window.top.IMPORT_TASK) {
                    window.top.IMPORT_TASK.push(taskId);
                }
            },
            // 上传文件
            handleImport: function () {
                var that = this;
                var progressBg = this.$step2.find('.progress-bg');
                var progressText = this.$step2.find('.progress-text');
                var _header = $("meta[name='_csrf_header']").attr("content");
                var _token = $("meta[name='_csrf']").attr("content");
                var _formData = new FormData();
                this.files.forEach(function (v, i) {
                    _formData.append('file', v)
                })
                var url = "${contextPath}/api/importer/fileImport";
                this.currentIndex = 2
                $.ajax({
                    url: url,
                    type: "post",
                    beforeSend: function (request) {
                        request.setRequestHeader(_header, _token);
                    },
                    data: _formData,
                    cache: false,
                    processData: false,
                    contentType: false,
                    dataType: "json",
                    xhr: function () {
                        var xhr = new XMLHttpRequest();
                        xhr.upload.addEventListener('progress', function (e) {
                            var progress = ~~(e.loaded / e.total * 100) + '%';
                            progressBg.css('width', progress)
                            progressText.text(progress)
                        })
                        return xhr;
                    },
                    success: function (data) {
                        var isSuccess = data.code === 0 || false;
                        var taskId = data.data;
                        if (isSuccess) {// 成功
                            //that.noticeGlobalTask(taskId)
                            that.currentIndex = 3
                            that.handleImportData(taskId || '')
                        } else {
                            var message = data.message || '';
                            that.openResult(isSuccess, message)
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        that.openResult(false, '网络异常，请重新上传')
                    }
                });
            },
            renderProgress: function (curNum, sumNum, loopEvent) {
                this.$step3.find('#curNum').text(curNum)

                var progress = '0%'
                if (sumNum !== 0) {
                    progress = ~~(curNum / sumNum * 100) + '%'
                }
                this.$step3.find('.progress-bg').css('width', progress)
                this.$step3.find('.progress-text').text(progress)
                return void setTimeout(loopEvent, 500)
            },
            // 数据导入
            handleImportData: function (taskId) {
                this.currentStep = 2;
                var that = this;
                var _arguments = arguments;
                utils.ajax('/api/importer/process?taskId=' + taskId, {
                    type: "get",
                    success: function (data) {
                        data = data || {};
                        var code = data.code;
                        var message = data.message || '';
                        var res = data.data || {};
                        if (code === 0) {// 成功
                            var status = res.status;// 状态信息，0:进行 8:取消 9:完成 -1:异常中断
                            var msg = res.message || '';// 消息
                            var name = res.name || '';//
                            var startTime = res.startTime || '';//
                            var endTime = res.endTime || '';//
                            var sumRow = res.sumRow || 0;// 总条数
                            var processRow = res.processRow || 0;// 已完成条数
                            var correctRow = res.correctRow || 0;// 正确条数
                            var filterRow = res.filterRow || 0;// 过滤条数
                            var errorRow = res.errorRow || 0;// 失败条数
                            if (status === 0) {
                                that.renderProgress(processRow, sumRow, _arguments.callee.bind(that, _arguments[0]))
                            } else if (status === 9) {
                                that.openResult(true, '导入完成，入库成功数：' + correctRow + ',失败数：' + errorRow)
                            } else {
                                that.openResult(false, msg)
                            }
                        } else {
                            that.openResult(false, message)
                        }
                    },
                    error: function (e) {
                        console.error(e)
                    }
                })
            },
            renderFileItem: function () {
                var fileList = this.$step1.find('.file-list');
                var html = this.files.map(function (v, i) {
                    return '<li class="import-list-item">\
                <div class="import-list-item-info">\
                  <span class="import-span">\
                    <div class="import-text-icon">\
                      <span role="img" class="paper-clip">\
                        <svg viewBox="64 64 896 896" focusable="false" data-icon="paper-clip" width="1em" height="1em" fill="currentColor" aria-hidden="true"><path d="M779.3 196.6c-94.2-94.2-247.6-94.2-341.7 0l-261 260.8c-1.7 1.7-2.6 4-2.6 6.4s.9 4.7 2.6 6.4l36.9 36.9a9 9 0 0012.7 0l261-260.8c32.4-32.4 75.5-50.2 121.3-50.2s88.9 17.8 121.2 50.2c32.4 32.4 50.2 75.5 50.2 121.2 0 45.8-17.8 88.8-50.2 121.2l-266 265.9-43.1 43.1c-40.3 40.3-105.8 40.3-146.1 0-19.5-19.5-30.2-45.4-30.2-73s10.7-53.5 30.2-73l263.9-263.8c6.7-6.6 15.5-10.3 24.9-10.3h.1c9.4 0 18.1 3.7 24.7 10.3 6.7 6.7 10.3 15.5 10.3 24.9 0 9.3-3.7 18.1-10.3 24.7L372.4 653c-1.7 1.7-2.6 4-2.6 6.4s.9 4.7 2.6 6.4l36.9 36.9a9 9 0 0012.7 0l215.6-215.6c19.9-19.9 30.8-46.3 30.8-74.4s-11-54.6-30.8-74.4c-41.1-41.1-107.9-41-149 0L463 364 224.8 602.1A172.22 172.22 0 00174 724.8c0 46.3 18.1 89.8 50.8 122.5 33.9 33.8 78.3 50.7 122.7 50.7 44.4 0 88.8-16.9 122.6-50.7l309.2-309C824.8 492.7 850 432 850 367.5c.1-64.6-25.1-125.3-70.7-170.9z"></path></svg>\
                      </span>\
                    </div>\
                    <span class="import-list-item-name" href="http://www.baidu.com">' + v.name + '</span>\
                    <span class="import-list-item-del" data-index="' + i + '">\
                      <button title="删除文件" type="button" class="btn-icon-only">\
                        <span role="img" class="delete">\
                          <svg viewBox="64 64 896 896" focusable="false" data-icon="delete" width="1em" height="1em" fill="currentColor" aria-hidden="true"><path d="M360 184h-8c4.4 0 8-3.6 8-8v8h304v-8c0 4.4 3.6 8 8 8h-8v72h72v-80c0-35.3-28.7-64-64-64H352c-35.3 0-64 28.7-64 64v80h72v-72zm504 72H160c-17.7 0-32 14.3-32 32v32c0 4.4 3.6 8 8 8h60.4l24.7 523c1.6 34.1 29.8 61 63.9 61h454c34.2 0 62.3-26.8 63.9-61l24.7-523H888c4.4 0 8-3.6 8-8v-32c0-17.7-14.3-32-32-32zM731.3 840H292.7l-24.2-512h487l-24.2 512z"></path></svg>\
                        </span>\
                      </button>\
                    </span>\
                  </span>\
                </div>\
              </li>'
                })
                fileList.html(html.join(''))
            },
            bindEvent: function () {
                var that = this;
                var importCard = this.$step1.find('.import-card');// 上传文件卡片
                var importBtn = this.$step1.find('.import-btn');// 上传文件按钮
                var importInput = this.$step1.find('#import-input')// 上传文件input
                var submitBtn = this.$wrap.find('#submitBtn');
                var restartImport = this.$wrap.find('#restartImport');

                importBtn.click(function () {
                    importCard.removeClass('error')
                    importInput.get(0).click()
                })


                importInput.change(function (e) {
                    that.files = utils.toArray(importInput[0].files)
                })

                submitBtn.click(function () {
                    switch (that.currentIndex) {
                        case 1:
                            if (!that.files.length) {
                                importCard.addClass('error')
                            } else {
                                that.handleImport()
                            }
                            break;
                        case 2:
                        case 3:
                            console.log('后台运行')
                        case 4:
                            utils.closeWin();
                            break;
                    }
                })

                restartImport.click(function () {
                    that.files = [];
                    importInput.val('')
                    that.hiddenRestartBtn(true)
                    that.currentIndex = 1
                    that.currentStep = 1
                })

                this.$step1.delegate('.import-list-item-del', 'click', function () {
                    var index = $(this).attr('data-index')
                    importInput.val('')
                    that.files = that.files.filter(function (v, i) {
                        return i != index
                    })
                })
            },
            renderSubmitBtn: function (index) {
                var btnText = {1: '提交', 4: '关闭'}[index] || '后台运行'
                this.$wrap.find('#submitBtn span').text(btnText)
            },
            switchShow: function (index) {
                this['$step' + index].show().siblings().hide();
                this.renderSubmitBtn(index)
            },
            switchStep: function (index) {
                this.$importSteps.find('.steps-item').map(function (i) {
                    var _index = i + 1
                    $(this).find('.steps-icon').html(_index)
                    $(this).removeClass('steps-item-finish').removeClass('steps-item-process').removeClass('steps-item-wait')
                    if (_index < index) {
                        $(this).addClass('steps-item-finish')
                        $(this).find('.steps-icon').html('<svg viewBox="64 64 896 896" focusable="false" data-icon="check" width="1em" height="1em" fill="currentColor" aria-hidden="true"><path d="M912 190h-69.9c-9.8 0-19.1 4.5-25.1 12.2L404.7 724.5 207 474a32 32 0 00-25.1-12.2H112c-6.7 0-10.4 7.7-6.3 12.9l273.9 347c12.8 16.2 37.4 16.2 50.3 0l488.4-618.9c4.1-5.1.4-12.8-6.3-12.8z"></path></svg>')
                    } else if (_index == index) {
                        $(this).addClass('steps-item-process')
                    } else {
                        $(this).addClass('steps-item-wait')
                    }
                })
            },
            init: function () {
                utils.proxy.call(this)('currentIndex', this.switchShow, 1)// 当前显示的页面
                utils.proxy.call(this)('currentStep', this.switchStep, 1)// step status
                utils.proxy.call(this)('files', this.renderFileItem, [])// 待上传的文件
                this.bindEvent()
            }
        }
        return o;
    })();

    $(function () {
        Import.init();
    })

</script>

</body>
</html>