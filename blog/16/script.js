$(function () {
	// 初始設定
	var audioObj = $("#myaudio").get(0);

	// 確認是否可播放
	if (!audioObj || !audioObj.canPlayType) {
		$(".audioplayer").hide();
		return false;
	}

	$(".audioplayer-bar-played").width("0%");

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

	// 第一次可播放時
	audioObj.addEventListener("loadeddata", function () {
		$(".audioplayer-duration").html(secondsToTime(audioObj.duration));
	});

	// 播放位置被改變時
	audioObj.addEventListener("timeupdate", function () {
		$(".audioplayer-current").html(secondsToTime(audioObj.currentTime));
		$(".audioplayer-bar-played").width((audioObj.currentTime / audioObj.duration) * 100 + "%");
	});

	// 播放結束時
	audioObj.addEventListener("ended", function () {
		$(".audioplayer")
			.removeClass("audioplayer-playing")
			.addClass("audioplayer-stopped");
	});

	// 點選播放／停止按鈕時
	$(".audioplayer-playpause a").click(function () {
		if (audioObj.paused == true) {
			audioObj.play();
			$(".audioplayer")
				.removeClass("audioplayer-stopped")
				.addClass("audioplayer-playing");
		}
		else {
			audioObj.pause();
			$(".audioplayer")
				.removeClass("audioplayer-playing")
				.addClass("audioplayer-stopped");
		}
	});

	// 點選音量按鈕時
	$(".audioplayer-volume a").click(function () {
		if (audioObj.volume == 1) {
			audioObj.volume = 0;
			$(".audioplayer").addClass("audioplayer-muted");
		}
		else {
			audioObj.volume = 1;
			$(".audioplayer").removeClass("audioplayer-muted");
		}
	});
});