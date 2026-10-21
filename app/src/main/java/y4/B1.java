package y4;

import android.content.Intent;
import com.google.android.youtube.player.YouTubeInitializationResult;
import flix.com.vision.activities.YouTubePlayerActivity;
import flix.com.vision.activities.player.YouTubeWebviewActivity;

/* loaded from: classes2.dex */
public final class B1 implements N3.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ YouTubePlayerActivity f21111a;

    public B1(YouTubePlayerActivity youTubePlayerActivity) {
        this.f21111a = youTubePlayerActivity;
    }

    public void onInitializationFailure(N3.e eVar, YouTubeInitializationResult youTubeInitializationResult) {
        YouTubePlayerActivity youTubePlayerActivity = this.f21111a;
        Intent intent = new Intent(youTubePlayerActivity, (Class<?>) YouTubeWebviewActivity.class);
        intent.putExtra("url", "https://www.youtube.com/watch?v=" + youTubePlayerActivity.f15303n);
        youTubePlayerActivity.startActivity(intent);
        youTubePlayerActivity.finish();
    }

    public void onInitializationSuccess(N3.e eVar, N3.f fVar, boolean z6) {
        O3.z zVar = (O3.z) fVar;
        zVar.loadVideo(this.f21111a.f15303n);
        zVar.setFullscreen(true);
    }
}
