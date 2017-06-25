define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.addBtnClick = function(event) {
		this.comp("windowDialog1").open({
			params : {
				operator : 'new'
			}
		});
	};

	Model.prototype.editacc = function(event){
		var row = event.bindingContext.$object;
		this.comp("windowDialog1").open({
			params : {
				operator : 'edit',
				rowdata: row.toJson()
			}
		});
	};

	Model.prototype.windowDialog1Received = function(event){
		this.comp("accountData").saveData();
	};

	Model.prototype.delBtnClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("accountData").deleteData(row);
	};

	Model.prototype.backBtnClick = function(event){
		justep.Shell.showLeft();
	};

	return Model;
});