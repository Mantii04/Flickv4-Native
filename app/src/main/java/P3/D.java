package P3;

import androidx.media3.exoplayer.analytics.DefaultPlaybackSessionManager;

/* loaded from: classes2.dex */
public final /* synthetic */ class D implements C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2687b;

    public /* synthetic */ D(int i2) {
        this.f2687b = i2;
    }

    @Override // P3.C
    public final Object get() {
        String generateDefaultSessionId;
        switch (this.f2687b) {
            case 0:
                throw new IllegalStateException();
            default:
                generateDefaultSessionId = DefaultPlaybackSessionManager.generateDefaultSessionId();
                return generateDefaultSessionId;
        }
    }
}
