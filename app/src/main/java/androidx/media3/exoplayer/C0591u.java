package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* renamed from: androidx.media3.exoplayer.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0591u implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7561b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f7562e;

    public /* synthetic */ C0591u(boolean z6, int i2) {
        this.f7561b = i2;
        this.f7562e = z6;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f7561b) {
            case 0:
                ((Player.Listener) obj).onSkipSilenceEnabledChanged(this.f7562e);
                break;
            case 1:
                ((Player.Listener) obj).onShuffleModeEnabledChanged(this.f7562e);
                break;
            default:
                ((Player.Listener) obj).onSkipSilenceEnabledChanged(this.f7562e);
                break;
        }
    }
}
