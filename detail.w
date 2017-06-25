<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:464px;left:115px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="accountData" queryAction="queryAccount" saveAction="saveAccount" url="/justep/account" tableName="account" idColumn="fID" autoNew="false">
   <master xid="default1" data="accountData"></master>
   <column label="ID" name="fID" type="String" xid="default2"></column>
   <column label="创建时间" name="fCreateTime" type="DateTime" xid="default3"></column>
   <column label="日期" name="fDate" type="Date" xid="default4"></column>
   <column label="金额" name="fMoney" type="Decimal" xid="default5"></column>
   <column label="备注" name="fDescription" type="String" xid="default6"></column>
   <column label="类型" name="fType" type="String" xid="default7"></column>
   <column label="分类" name="fClass" type="String" xid="default8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="type" idColumn="type"><column label="type" name="type" type="String" xid="xid1"></column>
  <data xid="default9">[{&quot;type&quot;:&quot;收入&quot;},{&quot;type&quot;:&quot;支出&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="classData" queryAction="queryAccount_class" saveAction="saveAccount_class" url="/justep/account" tableName="account_class" idColumn="fID"><column label="fID" name="fID" type="String" xid="default10"></column>
  <column label="fType" name="fType" type="String" xid="default11"></column>
  <column label="fClass" name="fClass" type="String" xid="default12"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="记一笔"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">记一笔</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="OKBtn" icon="linear linear-bubble" onClick="OKBtnClick">
   <i xid="i1" class="linear linear-bubble"></i>
   <span xid="span2"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1">
 <!--   <div class="x-control-group-title" xid="controlGroupTitle1">
    <span xid="span1">title</span></div>  -->
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" bind-text='$model.accountData.label("fType")'></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-options="type" bind-optionsValue="type" bind-ref='$model.accountData.ref("fType")'></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2" bind-text='$model.accountData.label("fClass")'></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2" bind-options="classData" bind-optionsValue="fClass" bind-ref='$model.accountData.ref("fClass")'></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3" bind-text='$model.accountData.label("fDate")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" dataType="Date" bind-ref='$model.accountData.ref("fDate")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4" bind-text='$model.accountData.label("fMoney")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.accountData.ref("fMoney")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5" bind-text='$model.accountData.label("fDescription")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.accountData.ref("fDescription")'></input></div></div></div>
  </div> 
</div>