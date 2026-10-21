package N3;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.youtube.player.YouTubePlayerView;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class i implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ YouTubePlayerView f2336a;

    public i(YouTubePlayerView youTubePlayerView) {
        this.f2336a = youTubePlayerView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        YouTubePlayerView youTubePlayerView = this.f2336a;
        if (youTubePlayerView.f13005m != null) {
            HashSet hashSet = youTubePlayerView.f13002e;
            if (!hashSet.contains(view2) || hashSet.contains(view)) {
                return;
            }
            youTubePlayerView.f13005m.g();
        }
    }
}
