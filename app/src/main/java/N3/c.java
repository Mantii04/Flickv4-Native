package N3;

import O3.z;
import android.app.Activity;
import android.os.Bundle;
import com.google.android.youtube.player.YouTubePlayerView;

/* loaded from: classes2.dex */
public abstract class c extends Activity {

    /* renamed from: b, reason: collision with root package name */
    public b f2329b;

    /* renamed from: e, reason: collision with root package name */
    public YouTubePlayerView f2330e;

    /* renamed from: f, reason: collision with root package name */
    public int f2331f;

    /* renamed from: j, reason: collision with root package name */
    public Bundle f2332j;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2329b = new b(this);
        this.f2332j = bundle != null ? bundle.getBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE") : null;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        YouTubePlayerView youTubePlayerView = this.f2330e;
        if (youTubePlayerView != null) {
            boolean isFinishing = isFinishing();
            z zVar = youTubePlayerView.f13005m;
            if (zVar != null) {
                zVar.b(isFinishing);
                youTubePlayerView.f13011t = true;
                z zVar2 = youTubePlayerView.f13005m;
                if (zVar2 != null) {
                    zVar2.a(isFinishing);
                }
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        z zVar;
        this.f2331f = 1;
        YouTubePlayerView youTubePlayerView = this.f2330e;
        if (youTubePlayerView != null && (zVar = youTubePlayerView.f13005m) != null) {
            zVar.d();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        z zVar;
        super.onResume();
        this.f2331f = 2;
        YouTubePlayerView youTubePlayerView = this.f2330e;
        if (youTubePlayerView == null || (zVar = youTubePlayerView.f13005m) == null) {
            return;
        }
        zVar.c();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2;
        super.onSaveInstanceState(bundle);
        YouTubePlayerView youTubePlayerView = this.f2330e;
        if (youTubePlayerView != null) {
            z zVar = youTubePlayerView.f13005m;
            bundle2 = zVar == null ? youTubePlayerView.f13009r : zVar.h();
        } else {
            bundle2 = this.f2332j;
        }
        bundle.putBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE", bundle2);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f2331f = 1;
        YouTubePlayerView youTubePlayerView = this.f2330e;
        if (youTubePlayerView != null) {
            youTubePlayerView.b();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        z zVar;
        this.f2331f = 0;
        YouTubePlayerView youTubePlayerView = this.f2330e;
        if (youTubePlayerView != null && (zVar = youTubePlayerView.f13005m) != null) {
            zVar.e();
        }
        super.onStop();
    }
}
