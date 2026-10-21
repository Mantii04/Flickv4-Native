package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* loaded from: classes.dex */
public final /* synthetic */ class A implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7174b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7175e;

    public /* synthetic */ A(int i2, int i7) {
        this.f7174b = i7;
        this.f7175e = i2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f7174b) {
            case 0:
                ((Player.Listener) obj).onRepeatModeChanged(this.f7175e);
                break;
            default:
                ((Player.Listener) obj).onAudioSessionIdChanged(this.f7175e);
                break;
        }
    }
}
