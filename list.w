<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:385px;left:33px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="accountData" queryAction="queryAccount" saveAction="saveAccount" url="/justep/account" tableName="account" idColumn="fID" confirmDelete="false" directDelete="true"><master xid="default1" data="accountData"></master>
  <column label="ID" name="fID" type="String" xid="default2"></column>
  <column label="创建时间" name="fCreateTime" type="DateTime" xid="default3"></column>
  <column label="日期" name="fDate" type="Date" xid="default4"></column>
  <column label="金额" name="fMoney" type="Decimal" xid="default5"></column>
  <column label="备注" name="fDescription" type="String" xid="default6"></column>
  <column label="类型" name="fType" type="String" xid="default7"></column>
  <column label="分类" name="fClass" type="String" xid="default8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="记账本"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="linear linear-sad"
              onClick="backBtnClick" xid="backBtn"> 
              <i class="linear linear-sad"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">记账本</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="addBtn" icon="linear linear-bus" onClick="addBtnClick">
   <i xid="i2" class="linear linear-bus"></i>
   <span xid="span2"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="accountData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col13" bind-click="editacc"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col16"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("fClass")' bind-style="{ color:  val(&quot;fType&quot;) == '收入' ? 'green':'brown' }" style="font-size:large;"></div></div>
   <div class="x-col" xid="col18"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("fMoney")' bind-style="{color:  val(&quot;fType&quot;) == &quot;收入&quot;?'green':'brown'}" style="font-size:large;"></div></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col19"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("fDescription")'></div></div>
   <div class="x-col" xid="col21"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" bind-ref='ref("fDate")'></div></div></div></div>
   <div class="x-col x-col-fixed x-col-center" xid="col15" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-xs btn-only-icon" label="button" xid="delBtn" icon="linear linear-fileadd" style="width:auto;" onClick="delBtnClick">
   <i xid="i1" class="linear linear-fileadd"></i>
   <span xid="span1"></span></a></div></div></li></ul> </div>
  </div>
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:9px;left:63px;" src="$UI/acc/detail.w" onReceived="windowDialog1Received"><result concept="accountData" operation="edit" origin="accountData" xid="default9">
   <mapping from="fID" to="fID" locator="true" xid="default10"></mapping>
   <mapping from="fCreateTime" to="fCreateTime" xid="default11"></mapping>
   <mapping from="fDate" to="fDate" xid="default12"></mapping>
   <mapping from="fMoney" to="fMoney" xid="default13"></mapping>
   <mapping from="fDescription" to="fDescription" xid="default14"></mapping>
   <mapping from="fType" to="fType" xid="default15"></mapping>
   <mapping from="fClass" to="fClass" xid="default16"></mapping></result></span></div>