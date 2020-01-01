var prefix = "/sys/menu"
$(document).ready(function () {
    load();
});
var load = function () {
    $('#exampleTable')
        .bootstrapTable(
            {
                idField: 'menuId',
                code: 'menuId',
                method: "GET", // 请求数据的ajax类型
                url: prefix + '/list', // 请求数据的ajax的url
                queryParams: {sort:'order_num'}, // 请求数据的ajax的data属性
                striped: true, // 是否各行渐变色
                //cache: false,
                toolbar : '#exampleToolbar',
                showColumns: true,                  //是否显示所有的列（选择显示的列）
                showRefresh: true,                  //是否显示刷新按钮
                //clickToSelect: true,                //是否启用点击选中行
                columns: [
                    {
                        field: 'ck',
                        checkbox: true
                    },
                    {
                        title: '编号',
                        field: 'menuId',
                        visible: false,
                        align: 'center',
                        valign: 'center',
                    },
                    {
                        title: '名称',
                        valign: 'center',
                        field: 'name',
                    },

                    {
                        title: '图标',
                        field: 'icon',
                        align: 'center',
                        valign: 'center',
                        width : '5%',
                        formatter: function (value, row, index) {
                            return value == null ? ''
                                : '<i class="' + value
                                + ' fa-lg"></i>';
                        }
                    },
                    {
                        title: '类型',
                        field: 'type',
                        align: 'center',
                        valign: 'center',
                        formatter: function (value, row, index) {
                            if (value === 0) {
                                return '<span class="label label-primary">目录</span>';
                            }
                            if (value === 1) {
                                return '<span class="label label-success">菜单</span>';
                            }
                            if (value === 2) {
                                return '<span class="label label-warning">按钮</span>';
                            }
                        }
                    },
                    {
                        title: '地址',
                        valign: 'center',
                        field: 'url'
                    },
                    {
                        title: '序号',
                        valign: 'center',
                        field: 'orderNum'
                    },
                    {
                        title: '权限标识',
                        valign: 'center',
                        field: 'perms'
                    },
                    {
                        title: '操作',
                        field: 'id',
                        align: 'center',
                        valign: 'center',
                        formatter: function (value, row, index) {
                            var e = '<a class="btn btn-primary btn-sm '
                                + s_edit_h
                                + '" href="#" mce_href="#" title="编辑" onclick="edit(\''
                                + row.menuId
                                + '\')"><i class="fa fa-edit"></i></a> ';
                            var p = '<a class="btn btn-primary btn-sm '
                                + s_add_h
                                + '" href="#" mce_href="#" title="添加下级" onclick="add(\''
                                + row.menuId
                                + '\')"><i class="fa fa-plus"></i></a> ';
                            var d = '<a class="btn btn-warning btn-sm '
                                + s_remove_h
                                + '" href="#" title="删除"  mce_href="#" onclick="remove(\''
                                + row.menuId
                                + '\')"><i class="fa fa-remove"></i></a> ';
                            return e + d + p;
                        }
                    }],
                treeShowField: 'name',
                parentIdField: 'parentId',
                onPostBody: function() {
                    $('#exampleTable').treegrid({
                        initialState: 'collapsed',//收缩
                        treeColumn: 1,//指明第几列数据改为树形
                        expanderExpandedClass: 'glyphicon glyphicon-triangle-bottom',
                        expanderCollapsedClass: 'glyphicon glyphicon-triangle-right',
                        onChange: function() {
                            $('#exampleTable').bootstrapTable('resetWidth');
                        }
                    })
                }
            });
}

function refresh() {
    $("#exampleTable").bootstrapTable("refresh");
}

function add(pId) {
    layer.open({
        type: 2,
        title: '增加菜单',
        maxmin: true,
        shadeClose: false, // 点击遮罩关闭层
        area: ['800px', '520px'],
        content: prefix + '/add/' + pId // iframe的url
    });
}

function remove(id) {
    layer.confirm('确定要删除选中的记录？', {
        btn: ['确定', '取消']
    }, function () {
        $.ajax({
            url: prefix + "/remove",
            type: "post",
            data: {
                'id': id
            },
            success: function (data) {
                if (data.code == 0) {
                    layer.msg("删除成功");
                    refresh();
                } else {
                    layer.msg(data.msg);
                }
            }
        });
    })
}

function edit(id) {
    layer.open({
        type: 2,
        title: '菜单修改',
        maxmin: true,
        shadeClose: false, // 点击遮罩关闭层
        area: ['800px', '520px'],
        content: prefix + '/edit/' + id // iframe的url
    });
}

function batchRemove() {
    // var rows = $('#exampleTable').bootstrapTable('getSelections');

}