package N3;

import O3.B;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayerView;
import y4.B1;

/* loaded from: classes2.dex */
public final class h implements B {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ YouTubePlayerView f2335a;

    public h(YouTubePlayerView youTubePlayerView) {
        this.f2335a = youTubePlayerView;
    }

    public final void a(YouTubeInitializationResult youTubeInitializationResult) {
        int i2 = YouTubePlayerView.f13000u;
        YouTubePlayerView youTubePlayerView = this.f2335a;
        youTubePlayerView.f13005m = null;
        youTubePlayerView.f13007p.c();
        d dVar = youTubePlayerView.f13010s;
        if (dVar != null) {
            ((B1) dVar).onInitializationFailure(youTubePlayerView.f13008q, youTubeInitializationResult);
            youTubePlayerView.f13010s = null;
        }
        youTubePlayerView.f13004j = null;
    }
}
