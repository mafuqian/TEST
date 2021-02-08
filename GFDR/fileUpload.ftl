<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>上传文件</title>
    <link title="default" rel="stylesheet" type="text/css" href="${contextPath}/templets/ui/themes/blue/easyui.css" />
    <meta name="_csrf" content="${_csrf.token}" />
    <meta name="_csrf_header" content="${_csrf.headerName}" />
    <script type="text/javascript" src="${contextPath}/templets/ui/js/jquery-1.8.2.js"  charset="UTF-8" ></script>
</head>
<body>

<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    html, body{
        width: 100%;
        height: 100%;
        overflow: hidden;
    }
    li{
        list-style: none;
    }
    .header{
        height: 50px;
        min-height: 50px;
        max-height: 50px;
        line-height: 50px;
        text-align: center;
        background-color: #fafafa;
    }
    .header>span{
        font-size: 14px;
        color: rgba(0,0,0,.85);
    }
    .btn{
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
        color: rgba(0,0,0,.85);
        border-radius: 2px;
        cursor: pointer;
        user-select: none;
        transition: all .3s;
    }
    .btn+.btn{
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
    .btn.btn-primary{
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
    a{
        color: #1890ff;
    }
    button, select{
        text-transform: none;
    }
    button, input {
        overflow: visible;
    }
</style>
<!-- 文件上传 -->
<style>
    .upload{
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
    }
    .upload-wrap{
        position: relative;
        width: 100%;
        height: 100%;
        display: -ms-flexbox;
        display: flex;
        flex-direction: column;
    }
    .upload .content{
        -ms-flex: 1 1 auto;
        flex: 1 1 auto;
        overflow: hidden;
    }
    .upload .footer{
        width: 100%;
        height: 50px;
        min-height: 50px;
        max-height: 50px;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
    }
    .upload .content .step-1, .upload .content .step-2, .upload .content .step-3 {
        display: none;
        width: 100%;
        height: 100%;
        overflow-x: hidden;
        overflow-y: auto;
    }
    .upload .content .step-1>div, .upload .content .step-2>div, .upload .content .step-3>div {
        display: -ms-flexbox;
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 100%;
        min-height: 100%;
        height: 100%;
        padding-top: 50px;
    }
    .upload .content .step-1>div{
        padding-top: 40px;
    }
    .upload .step-1 .upload-card{
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
    .upload .step-1 .upload-card.error{
        border-color: #ff4d4f;
    }
    .upload .step-1 .upload-card:hover{
        border-color: #1890ff;
    }
    .upload .step-1 .upload-btn{
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100%;
        text-align: center;
        font-size: 14px;
    }
    .upload .step-1 .upload-btn .plus{
        display: inline-block;
        font-size: 22px;
    }
    .upload .step-1 .file-list{
        position: relative;
        width: 320px;
    }
    .upload .step-1 .upload-list-item{
        position: relative;
        height: 22.001px;
        margin-top: 8px;
        font-size: 14px;
    }
    .upload .step-1 .upload-list-item .upload-list-item-info{
        height: 100%;
        padding: 0 4px;
        -ms-transition: background-color .3s;
        -webkit-transition: background-color .3s;
        transition: background-color .3s;
    }
    .upload .step-1 .upload-list-item:hover .upload-list-item-info {
        background-color: #f5f5f5;
    }
    .upload .step-1 .upload-list-item .upload-span{
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
    .upload .step-1 .upload-list-item .upload-span .upload-text-icon{
        -webkit-box-flex: 0;
        -ms-flex: none;
        flex: none;

    }
    .upload .step-1 .upload-list-item .upload-span .upload-text-icon .paper-clip{
        position: static;
        display: inline-block;
        color: rgba(0,0,0,.45);
        font-size: 14px;
        line-height: 0;
        vertical-align: -0.2em;
    }
    .upload .step-1 .upload-list-item .upload-span .upload-list-item-name{
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
    .upload .step-1 .upload-list-item .upload-span .upload-list-item-del{
        -webkit-box-flex: 0;
        -ms-flex: none;
        flex: none;
    }
    .upload .step-1 .upload-list-item .upload-span .upload-list-item-del .btn-icon-only{
        position: static;
        height: 20px;
        line-height: 1.5715;
        width: 24px;
        padding: 0;
        font-size: 14px;
        border-radius: 2px;
        opacity: 0;
        color:rgba(0,0,0,.45);
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
    .upload .step-1 .upload-list-item:hover .upload-span .upload-list-item-del .btn-icon-only{
        opacity: 1;
    }
    .upload .step-1 .upload-list-item:hover .upload-span .upload-list-item-del:hover{
        background-color: rgba(0,0,0,.018);
    }
    .upload .step-2 .step-content{
        padding-left: 15%;
        padding-right: 15%;
    }
    .upload .step-2 .progress-wrap{
        position: relative;
        width: 100%;
        font-size: 14px;
        color: rgba(0,0,0,.85);
        font-variant: tabular-nums;
        line-height: 1.5715;
        list-style: none;
        font-feature-settings: "tnum";
        display: inline-block;
        overflow: hidden;
    }
    .upload .step-2 .progress-wrap .progress-outer{
        margin-right: calc(-2em - 8px);
        padding-right: calc(2em + 8px);
        display: inline-block;
        width: 100%;
    }
    .upload .step-2 .progress-wrap .progress-inner{
        position: relative;
        display: inline-block;
        width: 100%;
        overflow: hidden;
        vertical-align: middle;
        background-color: #f5f5f5;
        border-radius: 100px;
    }
    .upload .step-2 .progress-wrap .progress-bg{
        position: relative;
        width: 0%;
        height: 8px;
        background-color: #1890ff;
        border-radius: 100px;
        -webkit-transition: all .4s cubic-bezier(.08,.82,.17,1) 0s;
        transition: all .4s cubic-bezier(.08,.82,.17,1) 0s;
    }
    .upload .step-2 .progress-wrap .progress-text{
        display: inline-block;
        width: 2em;
        color: rgba(0,0,0,.45);
        font-size: 1em;
        line-height: 1;
        white-space: nowrap;
        text-align: left;
        vertical-align: middle;
        word-break: normal;
    }
    .upload .step-3{
        font-size: 14px;
        color: rgba(0, 0, 0, 85);
    }
    .upload .step-3 .check-circle{
        font-size: 0;
        margin-bottom: 10px;
    }
    .upload .step-3 .check-circle.success{
        color: #52c41a;
    }
    .upload .step-3 .check-circle.error{
        color: #ff4d4f;
    }
    .upload .step-3 .check-circle svg{
        font-size: 50px;
        display: none;
    }
    .upload .step-3 .check-circle.success .success-svg-icon{
        display: block;
    }
    .upload .step-3 .check-circle.error .error-svg-icon{
        display: block;
    }

</style>

<!-- 文件上传 -->
<div class="upload" id="upload">
    <div class="upload-wrap">
        <div class="header"><span>文件上传</span></div>
        <div class="content">
            <div class="step-1">
                <div>
                    <div class="upload-card">
              <span class="upload-btn">
                <input id="upload-input" type="file" accept style="display: none;">
                <div>
                  <span role="img" class="plus">
                    <svg viewBox="64 64 896 896" focusable="false" data-icon="plus" width="1em" height="1em" fill="currentColor" aria-hidden="true"><defs><style></style></defs><path d="M482 152h60q8 0 8 8v704q0 8-8 8h-60q-8 0-8-8V160q0-8 8-8z"></path><path d="M176 474h672q8 0 8 8v60q0 8-8 8H176q-8 0-8-8v-60q0-8 8-8z"></path></svg>
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
                <div>
            <span role="img" class="check-circle">
              <svg class="success-svg-icon" viewBox="64 64 896 896" focusable="false" data-icon="check-circle" width="1em" height="1em" fill="currentColor" aria-hidden="true"><path d="M512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64zm193.5 301.7l-210.6 292a31.8 31.8 0 01-51.7 0L318.5 484.9c-3.8-5.3 0-12.7 6.5-12.7h46.9c10.2 0 19.9 4.9 25.9 13.3l71.2 98.8 157.2-218c6-8.3 15.6-13.3 25.9-13.3H699c6.5 0 10.3 7.4 6.5 12.7z"></path></svg>
              <svg class="error-svg-icon" viewBox="64 64 896 896" focusable="false" data-icon="close-circle" width="1em" height="1em" fill="currentColor" aria-hidden="true"><path d="M512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64zm165.4 618.2l-66-.3L512 563.4l-99.3 118.4-66.1.3c-4.4 0-8-3.5-8-8 0-1.9.7-3.7 1.9-5.2l130.1-155L340.5 359a8.32 8.32 0 01-1.9-5.2c0-4.4 3.6-8 8-8l66.1.3L512 464.6l99.3-118.4 66-.3c4.4 0 8 3.5 8 8 0 1.9-.7 3.7-1.9 5.2L553.5 514l130 155c1.2 1.5 1.9 3.3 1.9 5.2 0 4.4-3.6 8-8 8z"></path></svg>
            </span>
                    <div class="result-text"></div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div id="submit-btn" class="submit btn btn-primary"><span>提交</span></div>
            <div id="restart-btn" class="submit btn" style="display: none;"><span>重新上传</span></div>
        </div>
    </div>
</div>

<script>
    // 工具
    var utils = {
      // 代理监听变量变化
      proxy: function(){
        var _tempValue = ''
        /**
         * @param {string} key 待监听的属性
         * @param {function} setter 赋值的时候触发该函数 function(value: string)
         * @param {any} defaultVal 设置默认值（tip.也会触发setter）
         */
        return function(key, setter, defaultVal) {
          Object.defineProperty(this, key, {
            configurable: true,
            enumerable: true,
            set: function(val){
              _tempValue = val;
              setter.call(this, val)
            },
            get: function(){
              return _tempValue;
            }
          });
          defaultVal !== _tempValue && ( this[key] = defaultVal );
        }.bind(this)
      },
      // 伪数组转数组
      toArray: function(arr){
        return Array.prototype.slice.call(arr)
      },
      copyObj: function(obj){
        return JSON.parse(JSON.stringify(obj))
      },
      // 获取链接参数
      getUrlParam: function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
      },
      // 关闭当前iframe
      closeWin: function() {
          window.parent.ymPrompt.close()
      },
      ajax: function(url, options){
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
          url: "${contextPath}"+url,
          type: options.type,
          beforeSend: function(request) {
            request.setRequestHeader(_header, _token);
          },
          data: options.data,
          cache: options.cache,
          processData: options.processData,
          contentType: options.contentType,
          dataType: options.dataType,
          success: function(data) {
            typeof options.success === 'function' && options.success(data)
          },
          error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.error('网络异常！')
            typeof options.error === 'function' && options.error()
          }
        }
        if(options.type.toLocaleLowerCase() === 'get'){
          delete ajaxOptions.data;
        }
        $.ajax(ajaxOptions);
      }
    }

    // 封装message组件
    var Message = {
      basis: function(msg){
        alert(msg)
      },
      warn: function(msg){
        alert(msg)
      },
      success: function(msg){
        alert(msg)
      },
      error: function(msg){
        alert(msg)
      }
    }

    var Upload = (function(){
      var o = {
        $wrap :  $('#upload'),
        $step1:  $('#upload .step-1'),
        $step2:  $('#upload .step-2'),
        $step3:  $('#upload .step-3'),
        hiddenRestartBtn: function(flag){
          this.$wrap.find('#restart-btn')[flag?'hide':'show']();
        },
        // flag：boolean 是否上传成功 默认失败， msg：string 提示信息
        openResult: function(flag, msg){
          msg = msg || '';
          flag = flag || false;
          this.$step3.find('.result-text').text(msg)
          this.$step3.find('.check-circle').removeClass('success').removeClass('error');
          this.$step3.find('.check-circle').addClass(flag?'success': 'error')
          this.hiddenRestartBtn(flag)
          this.currentIndex = 3
        },
        // 上传文件
        handleUpload: function(){
          var that = this;
          var progressBg = this.$step2.find('.progress-bg');
          var progressText = this.$step2.find('.progress-text');
          var _header = $("meta[name='_csrf_header']").attr("content");
          var _token = $("meta[name='_csrf']").attr("content");
          var _formData = new FormData();
          this.files.forEach(function(v, i){
            _formData.append('file', v)
          })
          $.ajax({
            url: "${contextPath}/fileupload",
            type: "post",
            beforeSend: function(request) {
              request.setRequestHeader(_header, _token);
            },
            data: _formData,
            cache: false,
            processData: false,
            contentType: false,
            dataType:"json",
            xhr: function() {
              var xhr = new XMLHttpRequest();
              xhr.upload.addEventListener('progress', function (e) {
                var progress = ~~(e.loaded / e.total * 100) + '%';
                progressBg.css('width', progress)
                progressText.text(progress)
              })
              return xhr;
            },
            success: function(data) {
              var success = data.success || false;
              var message = data.message || '';
              that.openResult(success, message)
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
              that.openResult(false, '网络异常，请重新上传')
            }
          });
        },
        renderFileItem: function(){
          var fileList = this.$step1.find('.file-list');
          var html = this.files.map(function(v, i){
            return '<li class="upload-list-item">\
                <div class="upload-list-item-info">\
                  <span class="upload-span">\
                    <div class="upload-text-icon">\
                      <span role="img" class="paper-clip">\
                        <svg viewBox="64 64 896 896" focusable="false" data-icon="paper-clip" width="1em" height="1em" fill="currentColor" aria-hidden="true"><path d="M779.3 196.6c-94.2-94.2-247.6-94.2-341.7 0l-261 260.8c-1.7 1.7-2.6 4-2.6 6.4s.9 4.7 2.6 6.4l36.9 36.9a9 9 0 0012.7 0l261-260.8c32.4-32.4 75.5-50.2 121.3-50.2s88.9 17.8 121.2 50.2c32.4 32.4 50.2 75.5 50.2 121.2 0 45.8-17.8 88.8-50.2 121.2l-266 265.9-43.1 43.1c-40.3 40.3-105.8 40.3-146.1 0-19.5-19.5-30.2-45.4-30.2-73s10.7-53.5 30.2-73l263.9-263.8c6.7-6.6 15.5-10.3 24.9-10.3h.1c9.4 0 18.1 3.7 24.7 10.3 6.7 6.7 10.3 15.5 10.3 24.9 0 9.3-3.7 18.1-10.3 24.7L372.4 653c-1.7 1.7-2.6 4-2.6 6.4s.9 4.7 2.6 6.4l36.9 36.9a9 9 0 0012.7 0l215.6-215.6c19.9-19.9 30.8-46.3 30.8-74.4s-11-54.6-30.8-74.4c-41.1-41.1-107.9-41-149 0L463 364 224.8 602.1A172.22 172.22 0 00174 724.8c0 46.3 18.1 89.8 50.8 122.5 33.9 33.8 78.3 50.7 122.7 50.7 44.4 0 88.8-16.9 122.6-50.7l309.2-309C824.8 492.7 850 432 850 367.5c.1-64.6-25.1-125.3-70.7-170.9z"></path></svg>\
                      </span>\
                    </div>\
                    <span class="upload-list-item-name" href="http://www.baidu.com">'+v.name+'</span>\
                    <span class="upload-list-item-del" data-index="'+i+'">\
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
        bindEvent: function(){
          var that = this;
          var uploadCard = this.$step1.find('.upload-card');// 上传文件卡片
          var uploadBtn = this.$step1.find('.upload-btn');// 上传文件按钮
          var uploadInput = this.$step1.find('#upload-input')// 上传文件input
          var submitBtn = this.$wrap.find('#submit-btn');
          var restartBtn = this.$wrap.find('#restart-btn');

          uploadBtn.click(function(){
            uploadCard.removeClass('error')
            uploadInput.get(0).click()
          });

          uploadInput.change(function(e){
            that.files = utils.toArray(uploadInput[0].files)
          });

          submitBtn.click(function(){
            switch(that.currentIndex){
              case 1:
                if(!that.files.length){
                  uploadCard.addClass('error')
                }else{
                  that.handleUpload()
                  that.currentIndex = 2
                }
                break;
              case 2:
              case 3:
                utils.closeWin();
                break;
            }
          });

          restartBtn.click(function(){
            that.files = [];
            uploadInput.val('')
            that.hiddenRestartBtn(true)
            that.currentIndex = 1
          });

          this.$step1.delegate('.upload-list-item-del', 'click', function(){
            var index = $(this).attr('data-index')
            uploadInput.val('')
            that.files = that.files.filter(function(v, i){ return i != index })
          });
        },
        renderSubmitBtn: function(index){
          var btnText = {2:'后台运行', 3:'关闭'}[index] || '提交'
          this.$wrap.find('#submit-btn span').text(btnText)
        },
        switchShow: function(index){
          this['$step'+index].show().siblings().hide();
          this.renderSubmitBtn(index)
        },
        init: function(){
          utils.proxy.call(this)('currentIndex', this.switchShow, 1)// 当前显示的页面
          utils.proxy.call(this)('files', this.renderFileItem, [])// 待上传的文件
          this.bindEvent()
        }
      }
      return o;
    })();

    $(function(){
      Upload.init();
    })

  </script>

</body>
</html>