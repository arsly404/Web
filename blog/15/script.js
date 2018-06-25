$(function () {
	// 初始設定
	var videoObj = $("#myvideo").get(0);

	// 確認是否可播放
	if (!videoObj || !videoObj.canPlayType) {
		$(".videoplayer-cap, .videoplayer-ui").hide();
		return false;
	}

	$(".videoplayer-bar-played").width("0%");

	// 將秒數變換為時間標記
	var secondsToTime = function (seconds) {
		var min = Math.floor(seconds / 60);  // 分
		var sec = Math.floor(seconds % 60);  // 秒
		if (min < 10) {
			min = "0" + min;
		}
		if (sec < 10) {
			sec = "0" + sec;
		}
		return min + ":" + sec;
	};

	// 傳回現在的播放時間／總播放時間
	var getTimeStr = function () {
		return secondsToTime(videoObj.currentTime) + " / " + secondsToTime(videoObj.duration);
	}

	// 第一次可播放時
	videoObj.addEventListener("loadeddata", function () {
		$(".videoplayer-time").html(getTimeStr());
	});

	// 播放位置被改變時
	videoObj.addEventListener("timeupdate", function () {
		$(".videoplayer-time").html(getTimeStr());
		$(".videoplayer-bar-played").width((videoObj.currentTime / videoObj.duration) * 100 + "%");
	});

	// 播放結束時
	videoObj.addEventListener("ended", function () {
		$(".videoplayer")
			.removeClass("videoplayer-playing")
			.addClass("videoplayer-stopped");
		$(".videoplayer-ui").stop().animate({ opacity: 1 }, 500);
	});

	// 點選播放／停止按鈕時
	$(".videoplayer-playpause a").click(function () {
		if (videoObj.paused == true) {
			videoObj.play();
			$(".videoplayer")
				.removeClass("videoplayer-stopped")
				.addClass("videoplayer-playing");
		}
		else {
			videoObj.pause();
			$(".videoplayer")
				.removeClass("videoplayer-playing")
				.addClass("videoplayer-stopped");
		}
	});

	// 點選倒帶按鈕時
	$(".videoplayer-rewind a").click(function () {
		videoObj.currentTime = 0;
	});

	// 點選音量按鈕時
	$(".videoplayer-volume a").click(function () {
		if (videoObj.volume == 1) {
			videoObj.volume = 0;
			$(".videoplayer").addClass("videoplayer-muted");
		}
		else {
			videoObj.volume = 1;
			$(".videoplayer").removeClass("videoplayer-muted");
		}
	});

	// 滑鼠滑過／滑出播放器時
	$(".videoplayer").hover(function () {
		$(".videoplayer-cap").stop().animate({ opacity: 1 }, 500);
	},function () {
		$(".videoplayer-cap").stop().animate({ opacity: 0 }, 500);
	});
});