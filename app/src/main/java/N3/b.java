package N3;

import O3.AbstractC0202a;
import O3.AbstractC0203b;
import O3.InterfaceC0205d;
import O3.y;
import O3.z;
import android.os.Bundle;
import com.google.android.youtube.player.YouTubePlayerView;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f2328a;

    public b(c cVar) {
        this.f2328a = cVar;
    }

    public final void a(YouTubePlayerView youTubePlayerView) {
        z zVar;
        c cVar = this.f2328a;
        YouTubePlayerView youTubePlayerView2 = cVar.f2330e;
        if (youTubePlayerView2 != null && youTubePlayerView2 != youTubePlayerView) {
            youTubePlayerView2.f13011t = true;
            z zVar2 = youTubePlayerView2.f13005m;
            if (zVar2 != null) {
                zVar2.a(true);
            }
        }
        cVar.f2330e = youTubePlayerView;
        if (cVar.f2331f > 0) {
            youTubePlayerView.b();
        }
        if (cVar.f2331f < 2 || (zVar = youTubePlayerView.f13005m) == null) {
            return;
        }
        zVar.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(YouTubePlayerView youTubePlayerView, String str, d dVar) {
        c cVar = this.f2328a;
        Bundle bundle = cVar.f2332j;
        if (youTubePlayerView.f13005m == null && youTubePlayerView.f13010s == null) {
            AbstractC0203b.a(cVar, "activity cannot be null");
            youTubePlayerView.f13008q = (e) AbstractC0203b.a(youTubePlayerView, "provider cannot be null");
            youTubePlayerView.f13010s = (d) AbstractC0203b.a(dVar, "listener cannot be null");
            youTubePlayerView.f13009r = bundle;
            youTubePlayerView.f13007p.b();
            InterfaceC0205d a7 = AbstractC0202a.a().a(youTubePlayerView.getContext(), str, new g(youTubePlayerView, cVar), new h(youTubePlayerView));
            youTubePlayerView.f13004j = a7;
            ((y) a7).e();
        }
        cVar.f2332j = null;
    }
}
