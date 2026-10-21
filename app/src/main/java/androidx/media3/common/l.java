package androidx.media3.common;

import androidx.media3.common.SimpleBasePlayer;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7084b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleBasePlayer.State f7085e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f7086f;

    public /* synthetic */ l(SimpleBasePlayer.State state, int i2, int i7) {
        this.f7084b = i7;
        this.f7085e = state;
        this.f7086f = i2;
    }

    @Override // P3.C
    public final Object get() {
        SimpleBasePlayer.State lambda$setDeviceVolume$24;
        SimpleBasePlayer.State lambda$setDeviceVolume$25;
        SimpleBasePlayer.State lambda$setRepeatMode$8;
        switch (this.f7084b) {
            case 0:
                lambda$setDeviceVolume$24 = SimpleBasePlayer.lambda$setDeviceVolume$24(this.f7085e, this.f7086f);
                return lambda$setDeviceVolume$24;
            case 1:
                lambda$setDeviceVolume$25 = SimpleBasePlayer.lambda$setDeviceVolume$25(this.f7085e, this.f7086f);
                return lambda$setDeviceVolume$25;
            default:
                lambda$setRepeatMode$8 = SimpleBasePlayer.lambda$setRepeatMode$8(this.f7085e, this.f7086f);
                return lambda$setRepeatMode$8;
        }
    }
}
