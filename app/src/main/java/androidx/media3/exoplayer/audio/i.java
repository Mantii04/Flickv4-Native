package androidx.media3.exoplayer.audio;

import android.view.View;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.offline.DownloadHelper;
import androidx.media3.exoplayer.source.preload.PreCacheHelper;
import x3.T;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7323b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f7324e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7325f;

    public /* synthetic */ i(int i2, Object obj, boolean z6) {
        this.f7323b = i2;
        this.f7325f = obj;
        this.f7324e = z6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7323b) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) this.f7325f).lambda$skipSilenceEnabledChanged$7(this.f7324e);
                break;
            case 1:
                ((DownloadHelper) this.f7325f).lambda$onMediaPrepared$2(this.f7324e);
                break;
            case 2:
                ((PreCacheHelper) this.f7325f).lambda$release$2(this.f7324e);
                break;
            default:
                T.showKeyboard((View) this.f7325f, this.f7324e);
                break;
        }
    }
}
