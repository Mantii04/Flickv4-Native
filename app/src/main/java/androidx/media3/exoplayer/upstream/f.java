package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.exoplayer.upstream.experimental.ExperimentalBandwidthMeter;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements NetworkTypeObserver.Listener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7567a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7568b;

    public /* synthetic */ f(Object obj, int i2) {
        this.f7567a = i2;
        this.f7568b = obj;
    }

    @Override // androidx.media3.common.util.NetworkTypeObserver.Listener
    public final void onNetworkTypeChanged(int i2) {
        switch (this.f7567a) {
            case 0:
                ((DefaultBandwidthMeter) this.f7568b).onNetworkTypeChanged(i2);
                break;
            default:
                ((ExperimentalBandwidthMeter) this.f7568b).onNetworkTypeChanged(i2);
                break;
        }
    }
}
