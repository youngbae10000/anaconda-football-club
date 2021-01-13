const write = {
	$writerBtn : $("#writerBtn"),
	$userId : $("#userId"),
	$boardTitle : $("#boardTitle"),
	$boardContent : $("#boardContent"),
	init : function() {
		const _ = this;
		_.$writerBtn.click(function() {

			const params = {
				"id" : _.$userId.text(),
				"boardTitle" : _.$boardTitle.val(),
				"boardContent" : _.$boardContent.val()
			};

			$.ajax({
				url : "/write",
				type : "post",
				data : params
			}).done(function(data) {
				if (data.status === 400) {
					alert(data.message);
				} else {
					window.location.href = "/";
				}
			}).fail(function(jqXHR, textStatus, errorThrown) {
				alert(`${jqXHR} ${textStatus} ${errorThrown}`);
			});
		});
	}
}

write.init();
