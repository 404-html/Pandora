Menu, StatusMenu, add

ColorArrayMenuHandler:
    SendRaw, % A_ThisMenuItem
return

!s:: 
    ColorArray := ["default", "primary", "success", "info", "warning", "danger"]
    Loop % ColorArray.MaxIndex() {
        this_color := ColorArray[a_index]
        Menu, StatusMenu, Add, %this_color%, ColorArrayMenuHandler
    }
    Menu, StatusMenu, Show
return

::ht.btn::
::ht.button::
Var = 
(
<el-button>Ĭ�ϰ�ť</el-button>
<el-button type="primary">��Ҫ��ť</el-button>
<el-button type="success">�ɹ���ť</el-button>
<el-button type="info">��Ϣ��ť</el-button>
<el-button type="warning">���水ť</el-button>
<el-button type="danger">Σ�հ�ť</el-button>
)
code(Var)
return

::ht.buttongroup::
::ht.btngroup::
Var = 
(
<el-button-group >
    <el-button type="primary" icon="el-icon-edit"></el-button>
    <el-button type="primary" icon="el-icon-share"></el-button>
    <el-button type="primary" icon="el-icon-delete"></el-button>
</el-button-group>
)
code(Var)
return

::ht.tree::
Var = 
(
<el-tree :data="treeData" :default-expanded-keys="[1, 2, 3, 4]" node-key="id"></el-tree>
treeData: [{id: 1, label: 'һ�� 1', children: [{id: 4, label: '���� 1-1', children: [{id: 9, label: '���� 1-1-1'}, {id: 10, label: '���� 1-1-2'}] }] }, {id: 2, label: 'һ�� 2', children: [{id: 5, label: '���� 2-1'}, {id: 6, label: '���� 2-2'}] }, {id: 3, label: 'һ�� 3', children: [{id: 7, label: '���� 3-1'}, {id: 8, label: '���� 3-2'}] }],
)
code(Var)
return

::ht.loading::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/loading -->
const loading = this.$loading({lock: true, text: 'Loading', spinner: 'el-icon-loading', background: 'rgba(0, 0, 0, 0.7)'});
setTimeout(() => {
  loading.close();
}, 2000);
)
code(Var)
return

::ht.post::
Var = 
(
// https://github.com/axios/axios#example   
this.$http.post('/uaa/auth/login', {
    "userName": "admin-salary",
    "password": "123456"
}).then(result => {
    console.log(result);
}).catch(err => {
    this.$message.error('�ӿ��쳣��' + err.message);
})
)
code(Var)
return

::ht.get::
Var = 
(
// https://github.com/axios/axios#example
this.$http.get('/uc/auth/loadMenu').then(result => {
    console.log(result);
}).catch(err => {
    this.$message.error('�ӿ��쳣��' + err.message);
})
)
code(Var)
return

::ht.get2::
Var = 
(
this.loading = true
// https://github.com/axios/axios#example
this.$http.get('/alms/core/car/carList', {
    params: Object.assign({}, {
      'page': page,
      'limit': 10
    }, this.where)
}).then(result => {
    this.loading = false
    if (result.code == 0) {
      this.total = result.count
      this.myData = result.data
    } else {
      this.$message.error(result.msg);
    }
}).catch(err => {
    this.$message.error(err.message);
})
)
code(Var)
return

::ht.card::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/card -->
<el-card class="hongte-query-card">
    <div slot='header' class='hongte-card-header'>
          <span><i class='fa fa-search'></i> �������� </span>
          <el-button-group>
              <el-button type='primary' icon='el-icon-search' @click='getData(1)'>��ѯ</el-button>
              <el-button type='primary' icon='el-icon-refresh' @click='resetWhere'>����</el-button>
              <el-button type='primary' icon='el-icon-download'>����</el-button>
          </el-button-group>
    </div>
    <div v-for="o in 4" :key="o" class="text item">
      {{'�б����� ' + o }}
    </div>
</el-card>
)
code(Var)
return

::ht.input::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/input -->
������ <el-input placeholder="�������������" suffix-icon="el-icon-date" v-model="input"> </el-input>
)
code(Var)
return

::ht.table::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/table -->
<el-table border :data='myData' :row-key="rowKey" class='hongte-table' ref="myTable" @sort-change="sortChange" v-loading='loading' highlight-current-row @current-change="handleCurrentRowChange">
      <el-table-column fixed sortable prop='businessId' label='ҵ����' width='220'></el-table-column>
      <el-table-column sortable prop='districtName' label='����' width='120'> </el-table-column>
      <el-table-column sortable prop='companyName' label='�ֹ�˾' width='120'> </el-table-column>
      <el-table-column sortable prop='customerName' label='�ͻ�����' width='150'> </el-table-column>
      <el-table-column sortable prop='borrowMoney' label='�����' width='120'  :formatter="borrowMoneyFormatter"> </el-table-column>
      <el-table-column sortable prop='evaluationAmount' label='������' width='120' :formatter="evaluationAmountFormatter"> </el-table-column>
      <el-table-column sortable prop='repaidAmount' label='�ѻ����' width='150' :formatter="repaidAmountFormatter"> </el-table-column>
      <el-table-column sortable prop='model' label='�����ͺ�' width='250'> </el-table-column>
      <el-table-column sortable prop='evaluationDate' label='��������' width='120'> </el-table-column>
      <el-table-column sortable prop='trailerDate' label='�ϳ�����' width='120'> </el-table-column>
      <el-table-column sortable prop='status' label='״̬' width='120'> </el-table-column>
      <el-table-column fixed='right' label='����' width='250' class-name="hongte-table-align">
           <template slot-scope='scope'>
               <el-dropdown trigger='click' @command='handleCommand(arguments[0], scope.$index, scope.row)'>
                    <el-button size='mini'type='success'><i class="fa fa-navicon fa-lg"></i> ����</el-button>
                    <el-dropdown-menu slot='dropdown'>
                       <el-dropdown-item command='��������'> �������� </el-dropdown-item>
                       <el-dropdown-item command='ת��������'> ת�������� </el-dropdown-item>
                       <el-dropdown-item command='������¼�鿴'> ������¼�鿴 </el-dropdown-item>
                       <el-dropdown-item command='�����黹�Ǽ�'> �����黹�Ǽ� </el-dropdown-item>
                       <el-dropdown-item command='��������'> �������� </el-dropdown-item>
                       <el-dropdown-item command='�����ϴ����鿴'> �����ϴ����鿴 </el-dropdown-item>
                       <el-dropdown-item command='�鿴�Ŵ�����'> �鿴�Ŵ����� </el-dropdown-item>
                       <el-dropdown-item command='������ʱ'> ������ʱ </el-dropdown-item>
                    </el-dropdown-menu>
               </el-dropdown> 
              <el-button size='mini' @click='handleEdit(scope.$index, scope.row)'><i class="fa fa-pencil fa-lg"></i>�༭</el-button>
              <el-button size='mini' type='danger' @click='handleDelete(scope.$index, scope.row)'><i class="fa fa-trash-o fa-lg"></i> ɾ��</el-button>
           </template>
      </el-table-column>
 </el-table>

 <div class='hongte-Pagination'>
      <el-pagination
             background
            @current-change='handleCurrentChange'
            @size-change="handleSizeChange"
            :current-page='currentPage'
            :page-sizes="[10, 20, 30, 40]"
            :page-size="pageSize"
            :total='total'
            layout='total, prev, pager, next, jumper, sizes'>
      </el-pagination>
 </div>

 <el-dialog class="hongte-dialog" :visible.sync='dialogFormVisible' title='��������' >
     <auctionApplication></auctionApplication>
 </el-dialog>


 import { moneyFormatter } from '@utils'
 import auctionApplication from '@htComponents/carLoanManagement/auctionApplication.vue'

 // �����б�
 myData: [],
 // loading
 loading: true,
 // ��ǰ��ҳ
 currentPage: 1,
 // ÿҳ��ʾ����
 pageSize: 10,        
 // ��ҳ����
 total: 0,
 // dialog
 dialogFormVisible: false,

 // ��ȡ����
 getData () {
     this.loading = true
     // axios
     this.$http.get('/alms/core/car/carList', {
         params: Object.assign({}, {
           'page': this.currentPage,
           'limit': this.pageSize
         }, this.where)
     }).then(result => {
         this.loading = false
         if (result.code == 0) {
           this.total = result.count
           this.myData = result.data
         } else {
           this.$message.error(result.msg);
         }
     }).catch(err => {
         this.$message.error(err.message);
     })
 },
 rowKey (row) {
    return row.businessId
 },
 // ѡ�� table ��ǰ��ʱ�������¼������Ի�ȡ��ǰ���������ݣ�������~
 handleCurrentRowChange (currentRow, oldCurrentRow) {
   if (currentRow == null) {
     console.log("��ǰû��ѡ���κ���");
   }
 },
 // ÿҳ��ʾ��ҳ�������仯��ʱ��
 handleSizeChange (size) {
     this.pageSize = size;
     this.getData()
 },
 // ��ҳ
 handleCurrentChange (page) {
     this.currentPage = page;
     this.getData()
 },
 // �༭��
 handleEdit () {

 },
 // ɾ����
 handleDelete () {
     this.$confirm('�˲���������ɾ�����ļ�, �Ƿ����?', '��ʾ', {
       confirmButtonText: 'ȷ��',
       cancelButtonText: 'ȡ��',
       type: 'warning'
     }).then(() => {
         this.myData.splice(index, 1)
     }).catch(() => {

     });
 },
 // �����  
 borrowMoneyFormatter (row, column, content, index) {
     return moneyFormatter(content)
 },
 // ������
 evaluationAmountFormatter (row, column, content, index) {
     return moneyFormatter(content)
 },
 // �ѻ����
 repaidAmountFormatter (row, column, content, index) {
     return moneyFormatter(content)
 },
 // dropdown
 handleCommand () {
     this.dialogFormVisible = true
 },


 beforeMount () {
     this.getData()
 }
)
code(Var)
return

::ht.dialog::
Var = 
(
<el-dialog class="hongte-dialog" :visible.sync='dialogFormVisible' title='��������' >
    <auctionApplication></auctionApplication>
</el-dialog>

import auctionApplication from '@htComponents/carLoanManagement/auctionApplication.vue'

 // dialog
dialogFormVisible: false,
)
code(Var)
return

::ht.form::
Var = 
(
<!-- http://element-cn.eleme.io/#/zh-CN/component/form -->
<el-form :inline='true' label-position="right" label-width="120px" :model='where' class='hongte-query-form'>
    <el-form-item label='ҵ���ţ�'><el-input v-model='where.businessId' placeholder='ҵ����'></el-input></el-form-item>
    <el-form-item label='�ͻ�������'><el-input v-model='where.customerName' placeholder='�ͻ�����'></el-input></el-form-item>
    <el-form-item label='���ƺţ�'><el-input v-model='where.licensePlateNumber' placeholder='���ƺ�'></el-input></el-form-item>
    <el-form-item label='�����ͺţ�'><el-input v-model='where.model' placeholder='�����ͺ�'></el-input></el-form-item>

    <el-form-item label='����'>
        <el-select v-model='where.areaId' placeholder='����'>
            <el-option label='����һ' value='shanghai'></el-option>
            <el-option label='�����' value='beijing'></el-option>
        </el-select>
    </el-form-item>

    <el-form-item label='�ֹ�˾��'>
        <el-select v-model='where.companyId' placeholder='�ֹ�˾'>
            <el-option label='�Ϻ�' value='shanghai'></el-option>
            <el-option label='����' value='beijing'></el-option>
            <el-option label='����' value='shenzhen'></el-option>
        </el-select>
    </el-form-item>

    <el-form-item label='�ϳ����ڣ�'>
        <el-date-picker
            v-model='where.trailerStartDate'
            :picker-options='pickerOptions'
            type='daterange'
            align='right'
            unlink-panels
            range-separator='��'
            start-placeholder='��ʼ����'
            end-placeholder='��������'>
        </el-date-picker>
    </el-form-item>

    <el-form-item label='״̬��'>
        <el-select v-model='where.status' placeholder='״̬'>
            <el-option label='����' value='shanghai'></el-option>
            <el-option label='�ѻ���' value='beijing'></el-option>
        </el-select>
    </el-form-item>
</el-form>
import { shortcuts } from '@utils'  
 // ʱ��ѡ����
pickerOptions: {
    shortcuts
},
// ��ѯ����
where: {
    businessId: '',
    customerName: '',
    licensePlateNumber: '',
    model: '',
    trailerStartDate: '',
    status: '',
},

// ������������
resetWhere () {
    this.where = {
      businessId: '',
      customerName: '',
      licensePlateNumber: '',
      model: '',
      trailerStartDate: '',
      status: '',
    }
},
)
code(Var)
return

::ht.msg::
    SendRaw, this.$message.error('�ӿ��쳣��' + err.message);
return

::ht.page::
Var = 
(
<div class='hongte-Pagination'>
     <el-pagination
            background
           @current-change='handleCurrentChange'
           @size-change="handleSizeChange"
           :current-page='currentPage'
           :page-sizes="[10, 20, 30, 40]"
           :page-size="pageSize"
           :total='total'
           layout='total, prev, pager, next, jumper, sizes'>
     </el-pagination>
</div>

// ��ǰ��ҳ
currentPage: 1,
// ÿҳ��ʾ����
pageSize: 10,
// ��ҳ����
total: 0,

// ÿҳ��ʾ��ҳ�������仯��ʱ��
handleSizeChange (size) {
   this.pageSize = size;
   this.getData()
},
// ��ҳ
handleCurrentChange (page) {
   this.currentPage = page;
   this.getData()
},
)
code(Var)
return

::ht.form2::
Var = 
(
<el-form ref="form" :model="form" label-width="80px">
  <el-form-item label="�����">
    <el-input v-model="form.name"></el-input>
  </el-form-item>
  <el-form-item label="�����">
    <el-select v-model="form.region" placeholder="��ѡ������">
      <el-option label="����һ" value="shanghai"></el-option>
      <el-option label="�����" value="beijing"></el-option>
    </el-select>
  </el-form-item>
  <el-form-item label="�ʱ��">
    <el-col :span="11">
      <el-date-picker type="date" placeholder="ѡ������" v-model="form.date1" style="width: 100`%;"></el-date-picker>
    </el-col>
    <el-col class="line" :span="2">-</el-col>
    <el-col :span="11">
      <el-time-picker type="fixed-time" placeholder="ѡ��ʱ��" v-model="form.date2" style="width: 100`%;"></el-time-picker>
    </el-col>
  </el-form-item>
  <el-form-item label="��ʱ����">
    <el-switch v-model="form.delivery"></el-switch>
  </el-form-item>
  <el-form-item label="�����">
    <el-checkbox-group v-model="form.type">
      <el-checkbox label="��ʳ/�������ϻ" name="type"></el-checkbox>
      <el-checkbox label="���ƻ" name="type"></el-checkbox>
      <el-checkbox label="��������" name="type"></el-checkbox>
      <el-checkbox label="����Ʒ���ع�" name="type"></el-checkbox>
    </el-checkbox-group>
  </el-form-item>
  <el-form-item label="������Դ">
    <el-radio-group v-model="form.resource">
      <el-radio label="����Ʒ��������"></el-radio>
      <el-radio label="���³������"></el-radio>
    </el-radio-group>
  </el-form-item>
  <el-form-item label="���ʽ">
    <el-input type="textarea" v-model="form.desc"></el-input>
  </el-form-item>
  <el-form-item>
    <el-button type="primary" @click="onSubmit">��������</el-button>
    <el-button>ȡ��</el-button>
  </el-form-item>
</el-form>

form: {
    name: '',
    region: '',
    date1: '',
    date2: '',
    delivery: false,
    type: [],
    resource: '',
    desc: ''
}

    onSubmit() {
        console.log('submit!');
    }
)
code(Var)
return

::ht.confirm::
Var = 
(
this.$confirm('�˲���������ɾ�����ļ�, �Ƿ����?', '��ʾ', {
  confirmButtonText: 'ȷ��',
  cancelButtonText: 'ȡ��',
  type: 'warning'
}).then(() => {
    this.myData.splice(index, 1)
}).catch(() => {
           
});
)
code(Var)
return

::ht.dropdown::
Var = 
(
<el-dropdown trigger='click' @command='handleCommand(arguments[0], scope.$index, scope.row)'>
     <el-button size='mini'type='success'><i class="fa fa-navicon fa-lg"></i> ����</el-button>
     <el-dropdown-menu slot='dropdown'>
        <el-dropdown-item command='��������'> �������� </el-dropdown-item>
        <el-dropdown-item command='ת��������'> ת�������� </el-dropdown-item>
        <el-dropdown-item command='������¼�鿴'> ������¼�鿴 </el-dropdown-item>
        <el-dropdown-item command='�����黹�Ǽ�'> �����黹�Ǽ� </el-dropdown-item>
        <el-dropdown-item command='��������'> �������� </el-dropdown-item>
        <el-dropdown-item command='�����ϴ����鿴'> �����ϴ����鿴 </el-dropdown-item>
        <el-dropdown-item command='�鿴�Ŵ�����'> �鿴�Ŵ����� </el-dropdown-item>
        <el-dropdown-item command='������ʱ'> ������ʱ </el-dropdown-item>
     </el-dropdown-menu>
</el-dropdown>

// dropdown
handleCommand () {
  console.log(arguments);
  this.dialogFormVisible = true
},
)
code(Var)
return