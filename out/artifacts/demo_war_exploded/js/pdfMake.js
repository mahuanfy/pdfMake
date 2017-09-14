function pdfmake(content) {

    var dd = content;

    pdfMake.fonts = {
        Roboto: {
            normal: 'Roboto-Regular.ttf',
            bold: 'Roboto-Medium.ttf',
            italics: 'Roboto-Italic.ttf',
            bolditalics: 'Roboto-Italic.ttf'
        },
        微软雅黑: {
            normal: '微软雅黑.ttf',
            bold: '微软雅黑.ttf',
            italics: '微软雅黑.ttf',
            bolditalics: '微软雅黑.ttf',
        }
    };
    pdfMake.createPdf(dd).download("导出的PDF", function () {
    });
}