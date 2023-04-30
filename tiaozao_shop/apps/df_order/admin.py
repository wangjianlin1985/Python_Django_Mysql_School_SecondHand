from django.contrib import admin

from .models import OrderDetailInfo, OrderInfo
from apps.df_user.models import tuihuoInfo


@admin.register(OrderInfo)
class OrderInfoAdmin(admin.ModelAdmin):
    # 在列表页显示的字段,默认会显示所有字段,有对应的方法可以重写
    list_display = ["oid", "user", "odate", "ototal", "oaddress"]
    # 列表页每页展示的条数
    list_per_page = 5
    # 右侧的筛选,必须是字段,可以继承自SimpleListFilter来自定义筛选字段和规则
    list_filter = ["user", "odate", "oaddress"]
    # 在列表页可以模糊搜索的字段
    search_fields = ["user__uname"]
    ordering = ["-odate"]
    # 在列表页可以编辑的字段
    # list_editable = [""]


from django.http import HttpResponse
from openpyxl import Workbook
@admin.register(OrderDetailInfo)
class OrderDetailInfoAdmin(admin.ModelAdmin):

    list_display = ["goods", "order",'datatime','username' ,"shopername","price", "count"]
    list_per_page = 5
    list_filter = ["goods"]
    # 增加自定义按钮
    actions = ['upload_file','export_as_excel' ]


    def export_as_excel(self, request, queryset):
        meta = self.model._meta  # 用于定义文件名, 格式为: app名.模型类名
        field_names = [field.name for field in meta.fields]  # 模型所有字段名
        response = HttpResponse(content_type='application/msexcel')  # 定义响应内容类型
        response['Content-Disposition'] = f'attachment; filename={meta}.xlsx'  # 定义响应数据格式
        wb = Workbook()  # 新建Workbook
        ws = wb.active  # 使用当前活动的Sheet表
        ws.append(field_names)  # 将模型字段名作为标题写入第一行
        for obj in queryset:  # 遍历选择的对象列表

            for field in field_names:
                data = [f'{getattr(obj, field)}' for field in field_names]  # 将模型属性值的文本格式组成列表
            ws.append(data)  # 写入模型属性值
        wb.save(response)  # 将数据存入响应内容
        return response

    export_as_excel.icon = 'el-icon-export'
    export_as_excel.short_description = '导出Excel'  # 该动作在admin中的显示文字

    # 上传csv文件
    def upload_file(self, request, queryset):
        # 这里的upload 就是和params中配置的key一样
        upload = request.FILES['upload']
        print(upload)

    upload_file.short_description = '上传数据'
    upload_file.type = 'success'
    upload_file.icon = 'el-icon-upload'
    upload_file.enable = True
    upload_file.layer = {
        'params': [{
            'type': 'file',
            'key': 'upload',
            'label': 'CSV文件'
        }]
    }

@admin.register(tuihuoInfo)
class tuihuoInfoAdmin(admin.ModelAdmin):
    # 在列表页显示的字段,默认会显示所有字段,有对应的方法可以重写
    list_display = ["title", "username", "username1", "person_number", "order_number","kuaidi","kuaidi_number","address","address1","text","passOrdefault","date_publish"]
    # 列表页每页展示的条数
    list_per_page = 5
    # 右侧的筛选,必须是字段,可以继承自SimpleListFilter来自定义筛选字段和规则
    list_filter = ["title", "username", "username1","order_number"]
    # 在列表页可以模糊搜索的字段
    search_fields = ["username"]
    ordering = ["-order_number"]
    # 在列表页可以编辑的字段
    list_editable = ["passOrdefault"]