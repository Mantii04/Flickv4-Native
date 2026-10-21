package N3;

import O3.A;
import O3.AbstractC0202a;
import O3.I;
import O3.z;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayerView;
import com.google.android.youtube.player.internal.w$a;
import y4.B1;

/* loaded from: classes2.dex */
public final class g implements A {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f2333a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ YouTubePlayerView f2334b;

    public g(YouTubePlayerView youTubePlayerView, Activity activity) {
        this.f2334b = youTubePlayerView;
        this.f2333a = activity;
    }

    public final void a() {
        YouTubePlayerView youTubePlayerView = this.f2334b;
        if (youTubePlayerView.f13004j != null) {
            try {
                boolean z6 = false;
                z zVar = new z(youTubePlayerView.f13004j, AbstractC0202a.a().a(this.f2333a, youTubePlayerView.f13004j, false));
                youTubePlayerView.f13005m = zVar;
                View a7 = zVar.a();
                youTubePlayerView.f13006n = a7;
                youTubePlayerView.addView(a7);
                youTubePlayerView.removeView(youTubePlayerView.f13007p);
                youTubePlayerView.f13003f.a(youTubePlayerView);
                if (youTubePlayerView.f13010s != null) {
                    Bundle bundle = youTubePlayerView.f13009r;
                    if (bundle != null) {
                        z6 = youTubePlayerView.f13005m.a(bundle);
                        youTubePlayerView.f13009r = null;
                    }
                    ((B1) youTubePlayerView.f13010s).onInitializationSuccess(youTubePlayerView.f13008q, youTubePlayerView.f13005m, z6);
                    youTubePlayerView.f13010s = null;
                }
            } catch (w$a e3) {
                I.a("Error creating YouTubePlayerView", e3);
                YouTubeInitializationResult youTubeInitializationResult = YouTubeInitializationResult.f12992e;
                youTubePlayerView.f13005m = null;
                youTubePlayerView.f13007p.c();
                d dVar = youTubePlayerView.f13010s;
                if (dVar != null) {
                    ((B1) dVar).onInitializationFailure(youTubePlayerView.f13008q, youTubeInitializationResult);
                    youTubePlayerView.f13010s = null;
                }
            }
        }
        youTubePlayerView.f13004j = null;
    }

    public final void b() {
        z zVar;
        YouTubePlayerView youTubePlayerView = this.f2334b;
        if (!youTubePlayerView.f13011t && (zVar = youTubePlayerView.f13005m) != null) {
            zVar.f();
        }
        youTubePlayerView.f13007p.a();
        if (youTubePlayerView.indexOfChild(youTubePlayerView.f13007p) < 0) {
            youTubePlayerView.addView(youTubePlayerView.f13007p);
            youTubePlayerView.removeView(youTubePlayerView.f13006n);
        }
        youTubePlayerView.f13006n = null;
        youTubePlayerView.f13005m = null;
        youTubePlayerView.f13004j = null;
    }
}
