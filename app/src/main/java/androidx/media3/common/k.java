package androidx.media3.common;

import androidx.media3.common.SimpleBasePlayer;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7081b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SimpleBasePlayer.State f7082e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f7083f;

    public /* synthetic */ k(SimpleBasePlayer.State state, boolean z6, int i2) {
        this.f7081b = i2;
        this.f7082e = state;
        this.f7083f = z6;
    }

    @Override // P3.C
    public final Object get() {
        SimpleBasePlayer.State lambda$setPlayWhenReady$1;
        SimpleBasePlayer.State lambda$setShuffleModeEnabled$9;
        SimpleBasePlayer.State lambda$setDeviceMuted$30;
        SimpleBasePlayer.State lambda$setDeviceMuted$31;
        switch (this.f7081b) {
            case 0:
                lambda$setPlayWhenReady$1 = SimpleBasePlayer.lambda$setPlayWhenReady$1(this.f7082e, this.f7083f);
                return lambda$setPlayWhenReady$1;
            case 1:
                lambda$setShuffleModeEnabled$9 = SimpleBasePlayer.lambda$setShuffleModeEnabled$9(this.f7082e, this.f7083f);
                return lambda$setShuffleModeEnabled$9;
            case 2:
                lambda$setDeviceMuted$30 = SimpleBasePlayer.lambda$setDeviceMuted$30(this.f7082e, this.f7083f);
                return lambda$setDeviceMuted$30;
            default:
                lambda$setDeviceMuted$31 = SimpleBasePlayer.lambda$setDeviceMuted$31(this.f7082e, this.f7083f);
                return lambda$setDeviceMuted$31;
        }
    }
}
