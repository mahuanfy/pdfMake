<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src='build/pdfmake.min.js'></script>
    <script src='build/vfs_fonts.js'></script>
    <script src='js/jquery-3.2.0.min.js'></script>
    <script src='js/pdfMake.js'></script>
    <title>学生页面导出</title>
</head>
<body>

<div id="div2">div2的内容</div>
<button onclick="demo()">导出PDF</button>
</body>

<script type="text/javascript">
    function demo() {
        var content = {
            content: [
                {text: '西安欧亚学院吕俊杰学生档案', fontSize: 22, style: 'subheader', color: '#36B7AB',alignment: 'center'},
                {text: '基本信息', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: [100, 60, 55,'*', '*', '*', 100],
                        body: [
                            [{text: '学号：105010000104', fontSize: 8,margin: [0, 11, 0, 11]},
                                {text: '姓名：吕俊杰',fontSize: 8,margin: [0, 11, 0, 11]},
                                {text: '性别：男', fontSize: 8,margin: [0, 11, 0, 11]},
                                {text: '民族：回族', fontSize: 8,colSpan: 2,margin: [0, 11, 0, 11]},{},
                                {text: '婚否：是', fontSize: 8,margin: [0, 11, 0, 11]},
                                {text: '111',rowSpan: 3}],
                            [{text: '身份证号：520113188112311611', fontSize: 8, colSpan: 2,margin: [0, 11, 0, 11]},{},
                                {text: '出生日期：1881-12-31',fontSize: 8,colSpan: 2,margin: [0, 11, 0, 11]},{},
                                {text: '入学前文化程度：高中', fontSize: 8,colSpan: 2,margin: [0, 11, 0, 11]},{}],
                            [{text: '邮箱：23412341234@qq.com', fontSize: 8 ,colSpan: 2,margin: [0, 11, 0, 11]},{},
                                {text: '联系方式：123-4124-1243',fontSize: 8,colSpan: 2,margin: [0, 11, 0, 11]},{},
                                {text: 'QQ：23412341234', fontSize: 8,colSpan: 2,margin: [0, 11, 0, 11]},{}],
                            [{text: '籍贯：陕西省-西安市-碑林区', fontSize: 8 ,colSpan: 3,margin: [0, 10, 0, 10]},{},{},
                                {text: '入学前学校名称或工作单位：西安欧亚学院', fontSize: 8,colSpan: 4,margin: [0, 10, 0, 10]},{},{},{}],
                            [{text: '入学前党派或团体组织：2342432143', fontSize: 8 ,colSpan: 3,margin: [0, 10, 0, 10]},{},{},
                                {text: '入学前受过何奖励或处分：尔特让他额', fontSize: 8,colSpan: 4,margin: [0, 10, 0, 10]},{},{},{}],
                            [{text: '档案是否转入：否', fontSize: 8 ,colSpan: 2,margin: [0, 10, 0, 10]},{},
                                {text: '入学前档案所在单位：湖北省-随州市-随县-玩儿玩儿无法', fontSize: 8,colSpan: 5,margin: [0, 10, 0, 10]},{},{},{},{}],
                            [{text: '户口是否转入：是', fontSize: 8 ,colSpan: 2,margin: [0, 10, 0, 10]},{},
                                {text: '入学前户口所在派出所：湖北省-随州市-随县-玩儿玩儿无法', fontSize: 8,colSpan: 5,margin: [0, 10, 0, 10]},{},{},{},{}],
                            [{text: '邮编编码：23421', fontSize: 8 ,colSpan: 2,margin: [0, 10, 0, 10]},{},
                                {text: '身份证住址：湖北省-黄冈市-红安县-发发生的发顺丰', fontSize: 8,colSpan: 5,margin: [0, 10, 0, 10]},{},{},{},{}],
                            [{text: '生源类别 ：统招专科', fontSize: 8 ,colSpan: 2,margin: [0, 10, 0, 10]},{},
                                {text: '家庭实际住址：湖北省-黄冈市-红安县-发发生的发顺丰', fontSize: 8,colSpan: 5,margin: [0, 10, 0, 10]},{},{},{},{}],
                            [{text: '城乡生源名称：城镇', fontSize: 8 ,colSpan: 2,margin: [0, 10, 0, 10]},{},
                                {text: '生源所在地名称：河南省-信阳市-罗山县', fontSize: 8,colSpan: 5,margin: [0, 10, 0, 10]},{},{},{},{}],
                            [{text: '紧急联系人：是的发生', fontSize: 8 ,colSpan: 2,margin: [0, 10, 0, 10]},{},
                                {text: '联系方式：412-3423-4124', fontSize: 8,colSpan: 5,margin: [0, 10, 0, 10]},{},{},{},{}]
                        ]
                    }
                },
                {text: '家庭成员', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: ['*', '*', '*'],
                        body: [
                            [{text: '母亲：123', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '职务：工程师',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '联系电话：123-4321-4567', fontSize: 8,margin: [0, 10, 0, 10]}],
                                [{text: '政治面貌：共青团员', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '工作单位：西安欧亚学院',fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{},],
                            [{text: '父亲：123', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '职务：工程师',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '联系电话：123-4321-4567', fontSize: 8,margin: [0, 10, 0, 10]}],
                                [{text: '政治面貌：共青团员', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '工作单位：西安欧亚学院',fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{},],
                            [{text: '父亲：123', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '职务：工程师',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '联系电话：123-4321-4567', fontSize: 8,margin: [0, 10, 0, 10]}],
                                [{text: '政治面貌：共青团员', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '工作单位：西安欧亚学院',fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{},],
                            [{text: '父亲：123', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '职务：工程师',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '联系电话：123-4321-4567', fontSize: 8,margin: [0, 10, 0, 10]}],
                                [{text: '政治面貌：共青团员', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '工作单位：西安欧亚学院',fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{},]
                        ]
                    }
                },
                {text: '教育经历', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: ['*', '*', '*'],
                        body: [
                            [{text: '时间：2017-09-07——2017-09-07', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '学校名称：西安欧亚学院',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '担任职位：战三', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '时间：2017-09-07——2017-09-07', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '学校名称：西安欧亚学院',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '担任职位：战三', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '时间：2017-09-07——2017-09-07', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '学校名称：西安欧亚学院',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '担任职位：战三', fontSize: 8,margin: [0, 10, 0, 10]}]
                        ]
                    }
                },
                {text: '学业状态', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: ['*', '*', '*','*'],
                        body: [
                            [{text: '学籍状态：复学', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '职业导师：兑忠胜',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '学生类别：高考录取', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '高考成绩：123', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '录取专业：建筑工程技术', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '系：金融服务系',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '现专业：金融管理',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '就业方向：财务管理', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '班级：1501', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '组别：A',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '实践类型：自主实习',fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{}],
                            [{text: '实践单位或项目：是固定格式的', fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{},
                                {text: '联系人：1234234234',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '联系人电话：213-4213-4123',fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '缴费状态： 第一年：(欠费：122元)    第二年：(欠费：333元)    第三年：(全额)   第四年：()   第五年：()   第六年：()',
                                fontSize: 8,margin: [0, 10, 0, 10],colSpan: 4},{},{},{}]
                        ]
                    }
                },
                {text: '社区管理', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: ['*', '*', '*','*'],
                        body: [
                            [{text: '住宿类型：校内', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '宿舍位置：南区3 - 4层 - 403房间',fontSize: 8,margin: [0, 10, 0, 10],colSpan: 3},{},{}],
                            [{text: '社区辅导员：王养利', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '华侨、港澳台：是',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '政治面貌：中共党员',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '就业方向：财务管理', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '血型：A型', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '身高：242cm',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '身高：242cm',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '健康状况：良好',fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '第一年医保：2010年（有）', fontSize: 8,margin: [0, 10, 0, 10],},
                                {text: '第二年医保：2011年（有）',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '第三年医保：年（无）',fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{}]
                        ]
                    }
                },
                {text: '奖学金或助学金', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: ['*', '*', '*'],
                        body: [
                            [{text: '年份', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '奖学金',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '助学金', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2011', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '国家奖学金',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '特殊贫困', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2012', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '励志奖学金',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '建档立卡', fontSize: 8,margin: [0, 10, 0, 10]}]
                        ]
                    }
                },
                {text: '获奖或荣誉', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: ['*', '*', '*'],
                        body: [
                            [{text: '2017-09-04   获得西安欧亚学院三好学生', fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{},
                                {text: '证明人：付宏科',fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2017-09-04   获得西安欧亚学院三好学生', fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{},
                                {text: '证明人：付宏科',fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2017-09-04   获得西安欧亚学院三好学生', fontSize: 8,margin: [0, 10, 0, 10],colSpan: 2},{},
                                {text: '证明人：付宏科',fontSize: 8,margin: [0, 10, 0, 10]}]
                        ]
                    }
                },
                {text: '违纪或处分', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: ['*', '*', '*','*','*','*'],
                        body: [
                            [{text: '时间', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '类别',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '行为',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '级别',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '证明人',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '是否撤销', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2017-09-05', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '违纪处分	',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '妨碍公共管理	',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '警告',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '付宏科',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '已撤销', fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2017-09-05', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '违纪处分	',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '妨碍公共管理	',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '警告',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '付宏科',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '已撤销', fontSize: 8,margin: [0, 10, 0, 10]}],


                        ]
                    }
                },
                {text: '团学活动', fontSize: 15, style: 'subheader', color: '#36B7AB'},
                {
                    style: 'tableExample',
                    table: {
                        widths: ['*', '*', '*','*','*'],
                        body: [
                            [{text: '时间', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '类别',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '学时',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '名称	',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '证明人',fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2017-09-05', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '党员培训',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '12',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '课时培训	',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '付宏科',fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2017-09-05', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '党员培训',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '12',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '课时培训	',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '付宏科',fontSize: 8,margin: [0, 10, 0, 10]}],
                            [{text: '2017-09-05', fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '党员培训',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '12',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '课时培训	',fontSize: 8,margin: [0, 10, 0, 10]},
                                {text: '付宏科',fontSize: 8,margin: [0, 10, 0, 10]}],



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
        };
        pdfmake(content);
    }
</script>

</html>
