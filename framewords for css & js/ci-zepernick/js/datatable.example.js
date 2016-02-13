$(function() {
	//wait till the page is fully loaded before loading table
	//dataTableSearch() is optional.  It is a jQuery plugin that looks for input fields in the thead to bind to the table searching
	$("#sampleOrderTable").dataTable({
		 processing: true,
        serverSide: true,
        ajax: {
            "url": JS_BASE_URL + "/DatatableControl/dataTable",
            "type": "POST"
        },
        columns: [
        	{ data: "o.orderNumber" },
        	{ data: "o.orderDate" },
        	{ data: "o.status" },
        	{ data: "c.customerName" },
        	{ data: "$.contactNameFull" },
        	{ data: "c.creditLimit" }
        ]
	}).dataTableSearch(500);
});
