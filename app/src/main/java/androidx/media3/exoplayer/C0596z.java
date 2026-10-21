package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* renamed from: androidx.media3.exoplayer.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0596z implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7601b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f7602e;

    public /* synthetic */ C0596z(long j7, int i2) {
        this.f7601b = i2;
        this.f7602e = j7;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f7601b) {
            case 0:
                ((Player.Listener) obj).onSeekBackIncrementChanged(this.f7602e);
                break;
            case 1:
                ((Player.Listener) obj).onMaxSeekToPreviousPositionChanged(this.f7602e);
                break;
            default:
                ((Player.Listener) obj).onSeekForwardIncrementChanged(this.f7602e);
                break;
        }
    }
}
