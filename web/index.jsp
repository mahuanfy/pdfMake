<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src='build/pdfmake.min.js'></script>
    <script src='build/vfs_fonts.js'></script>
    <script src='js/jquery-3.2.0.min.js'></script>
    <script src='build/pdfMake.js'></script>
    <title>学生页面导出</title>
</head>
<body>

<div id="div2">div2的内容</div>
<button onclick="demo()">导出PDF</button>
</body>

<script type="text/javascript">
    function demo() {
        //图片格式转换
        var x = new ImageDataURL(["img/303733274.jpg"]);
        x.oncomplete = function () {
            var imgs = new Array();
            for (key in this.imgdata) {
                if (this.imgdata[key] == this.emptyobj) {
                    imgs.push({text: '请上传头像', fontSize: 10, rowSpan: 3});
                    continue;
                }//不存在的圖片直接忽略
                imgs.push({image: this.imgdata[key], fit: [100, 150], rowSpan: 3});//在的圖片直接忽略
            }
            var content = {
                content: [
                    {text: '学生档案', fontSize: 22, style: 'subheader', color: '#36B7AB', alignment: 'center'},
                    {text: '基本信息', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                    {
                        style: 'tableExample',
                        table: {
                            widths: [100, 60, 55, '*', '*', '*', 100],
                            body: [
                                [{text: '学号：123456789123', fontSize: 8, margin: [0, 11, 0, 11]},
                                    {text: '姓名：张三', fontSize: 8, margin: [0, 11, 0, 11]},
                                    {text: '性别：男', fontSize: 8, margin: [0, 11, 0, 11]},
                                    {text: '民族：回族', fontSize: 8, colSpan: 2, margin: [0, 11, 0, 11]}, {},
                                    {text: '婚否：是', fontSize: 8, margin: [0, 11, 0, 11]},
                                    imgs[0]],
                                [{text: '身份证号：654125321453625478', fontSize: 8, colSpan: 2, margin: [0, 11, 0, 11]}, {},
                                    {text: '出生日期：1881-12-31', fontSize: 8, colSpan: 2, margin: [0, 11, 0, 11]}, {},
                                    {text: '入学前文化程度：高中', fontSize: 8, colSpan: 2, margin: [0, 11, 0, 11]}, {}],
                                [{text: '邮箱：23412341234@qq.com', fontSize: 8, colSpan: 2, margin: [0, 11, 0, 11]}, {},
                                    {text: '联系方式：123-4124-1243', fontSize: 8, colSpan: 2, margin: [0, 11, 0, 11]}, {},
                                    {text: 'QQ：23412341234', fontSize: 8, colSpan: 2, margin: [0, 11, 0, 11]}, {}],
                                [{text: '籍贯：陕西省-西安市-碑林区', fontSize: 8, colSpan: 3, margin: [0, 10, 0, 10]}, {}, {},
                                    {
                                        text: '入学前学校名称或工作单位：西安欧亚学院',
                                        fontSize: 8,
                                        colSpan: 4,
                                        margin: [0, 10, 0, 10]
                                    }, {}, {}, {}],
                                [{
                                    text: '入学前党派或团体组织：2342432143',
                                    fontSize: 8,
                                    colSpan: 3,
                                    margin: [0, 10, 0, 10]
                                }, {}, {},
                                    {
                                        text: '入学前受过何奖励或处分：尔特让他额',
                                        fontSize: 8,
                                        colSpan: 4,
                                        margin: [0, 10, 0, 10]
                                    }, {}, {}, {}],
                                [{text: '档案是否转入：否', fontSize: 8, colSpan: 2, margin: [0, 10, 0, 10]}, {},
                                    {
                                        text: '入学前档案所在单位：湖北省-随州市-随县-玩儿玩儿无法',
                                        fontSize: 8,
                                        colSpan: 5,
                                        margin: [0, 10, 0, 10]
                                    }, {}, {}, {}, {}],
                                [{text: '户口是否转入：是', fontSize: 8, colSpan: 2, margin: [0, 10, 0, 10]}, {},
                                    {
                                        text: '入学前户口所在派出所：湖北省-随州市-随县-玩儿玩儿无法',
                                        fontSize: 8,
                                        colSpan: 5,
                                        margin: [0, 10, 0, 10]
                                    }, {}, {}, {}, {}],
                                [{text: '邮编编码：23421', fontSize: 8, colSpan: 2, margin: [0, 10, 0, 10]}, {},
                                    {
                                        text: '身份证住址：湖北省-黄冈市-红安县-发发生的发顺丰',
                                        fontSize: 8,
                                        colSpan: 5,
                                        margin: [0, 10, 0, 10]
                                    }, {}, {}, {}, {}],
                                [{text: '生源类别 ：统招专科', fontSize: 8, colSpan: 2, margin: [0, 10, 0, 10]}, {},
                                    {
                                        text: '家庭实际住址：湖北省-黄冈市-红安县-发发生的发顺丰',
                                        fontSize: 8,
                                        colSpan: 5,
                                        margin: [0, 10, 0, 10]
                                    }, {}, {}, {}, {}],
                                [{text: '城乡生源名称：城镇', fontSize: 8, colSpan: 2, margin: [0, 10, 0, 10]}, {},
                                    {
                                        text: '生源所在地名称：河南省-信阳市-罗山县',
                                        fontSize: 8,
                                        colSpan: 5,
                                        margin: [0, 10, 0, 10]
                                    }, {}, {}, {}, {}],
                                [{text: '紧急联系人：是的发生', fontSize: 8, colSpan: 2, margin: [0, 10, 0, 10]}, {},
                                    {
                                        text: '联系方式：412-3423-4124',
                                        fontSize: 8,
                                        colSpan: 5,
                                        margin: [0, 10, 0, 10]
                                    }, {}, {}, {}, {}]
                            ]
                        }
                    },
                ],
                styles: {
                    header: {
                        fontSize: 18,
                        bold: true,
                        margin: [0, 0, 0, 10]
                    },
                    subheader: {
                        fontSize: 16,
                        bold: true,
                        margin: [0, 10, 0, 5]
                    },
                    tableExample: {
                        margin: [0, 5, 0, 15]
                    },
                    tableHeader: {
                        bold: true,
                        fontSize: 13,
                        color: 'black'
                    }
                },
                defaultStyle: {
                    font: '微软雅黑'
                }
            }
            pdfmake(content);
        }
    }
</script>

<script>
    function ImageDataURL(urls) {//urls必須是字符串或字符串數組
        this.completenum = 0;
        this.totalnum = 0;
        this.imgdata = new Array();
        this.emptyobj = new Object();
        this.oncomplete = function(){};
        this.getDataURL = function(url, index) {
            var c = document.createElement("canvas");
            var cxt = c.getContext("2d");
            var img = new Image();
            var dataurl;
            var p;
            p = this;
            img.src = url;
            img.onload = function() {
                var i;
                var maxwidth = 500;
                var scale = 1.0;
                if (img.width > maxwidth) {
                    scale = maxwidth / img.width;
                    c.width = maxwidth;
                    c.height = Math.floor(img.height * scale);
                } else {
                    c.width= img.width;
                    c.height= img.height;
                }
                cxt.drawImage(img, 0, 0, c.width, c.height);

                p.imgdata[index] = c.toDataURL('image/jpeg');
                for (i = 0; i < p.totalnum; ++i) {
                    if (p.imgdata[i] == null)break;
                }
                if (i == p.totalnum) {
                    p.oncomplete();
                }
            };
            img.onerror = function() {
                p.imgdata[index] = p.emptyobj;
                for (i = 0; i < p.totalnum; ++i) {
                    if (p.imgdata[i] == null)break;
                }
                if (i == p.totalnum) {
                    p.oncomplete();
                }
            };
        }
        if (urls instanceof Array) {
            this.totalnum = urls.length;
            this.imgdata = new Array(this.totalnum);
            for (key in urls) {
                this.getDataURL(urls[key], key);
            }
        } else {
            this.imgdata = new Array(1);
            this.totalnum = 1;
            this.getDataURL(urls, 0);
        }
    }
</script>
</html>
