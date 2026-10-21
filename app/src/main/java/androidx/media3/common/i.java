package androidx.media3.common;

import androidx.media3.common.SimpleBasePlayer;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7077b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleBasePlayer.State f7078e;

    public /* synthetic */ i(SimpleBasePlayer.State state, int i2) {
        this.f7077b = i2;
        this.f7078e = state;
    }

    @Override // P3.C
    public final Object get() {
        SimpleBasePlayer.State lambda$unmute$18;
        SimpleBasePlayer.State lambda$mute$17;
        SimpleBasePlayer.State lambda$setVideoSurface$19;
        SimpleBasePlayer.State lambda$increaseDeviceVolume$27;
        SimpleBasePlayer.State lambda$decreaseDeviceVolume$28;
        SimpleBasePlayer.State lambda$release$13;
        SimpleBasePlayer.State lambda$clearVideoOutput$23;
        SimpleBasePlayer.State lambda$increaseDeviceVolume$26;
        SimpleBasePlayer.State lambda$prepare$7;
        SimpleBasePlayer.State lambda$decreaseDeviceVolume$29;
        switch (this.f7077b) {
            case 0:
                lambda$unmute$18 = SimpleBasePlayer.lambda$unmute$18(this.f7078e);
                return lambda$unmute$18;
            case 1:
                lambda$mute$17 = SimpleBasePlayer.lambda$mute$17(this.f7078e);
                return lambda$mute$17;
            case 2:
                lambda$setVideoSurface$19 = SimpleBasePlayer.lambda$setVideoSurface$19(this.f7078e);
                return lambda$setVideoSurface$19;
            case 3:
                lambda$increaseDeviceVolume$27 = SimpleBasePlayer.lambda$increaseDeviceVolume$27(this.f7078e);
                return lambda$increaseDeviceVolume$27;
            case 4:
                lambda$decreaseDeviceVolume$28 = SimpleBasePlayer.lambda$decreaseDeviceVolume$28(this.f7078e);
                return lambda$decreaseDeviceVolume$28;
            case 5:
                lambda$release$13 = SimpleBasePlayer.lambda$release$13(this.f7078e);
                return lambda$release$13;
            case 6:
                lambda$clearVideoOutput$23 = SimpleBasePlayer.lambda$clearVideoOutput$23(this.f7078e);
                return lambda$clearVideoOutput$23;
            case 7:
                lambda$increaseDeviceVolume$26 = SimpleBasePlayer.lambda$increaseDeviceVolume$26(this.f7078e);
                return lambda$increaseDeviceVolume$26;
            case 8:
                lambda$prepare$7 = SimpleBasePlayer.lambda$prepare$7(this.f7078e);
                return lambda$prepare$7;
            default:
                lambda$decreaseDeviceVolume$29 = SimpleBasePlayer.lambda$decreaseDeviceVolume$29(this.f7078e);
                return lambda$decreaseDeviceVolume$29;
        }
    }
}
