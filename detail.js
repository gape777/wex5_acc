define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		var data = this.comp("accountData");
		data.clear();
		if (this.params.operator == 'new') {
			data.newData({
				"defaultValues" : [ {
					"fID" : justep.UUID.createUUID(),
					"fCreateTime" : new Date()
				} ]
			});
		} else {
			data.loadData([this.params.rowdata]);
			data.first();
		}
	};

	Model.prototype.OKBtnClick = function(event){
		this.owner.send(this.comp("accountData"));
		this.close();
	};

	return Model;
});