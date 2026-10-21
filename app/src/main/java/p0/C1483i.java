package p0;

import android.media.VolumeProvider;

/* renamed from: p0.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1483i extends VolumeProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC1487m f19417a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1483i(AbstractC1487m abstractC1487m, int i2, int i7, int i8, String str) {
        super(i2, i7, i8, str);
        this.f19417a = abstractC1487m;
    }

    @Override // android.media.VolumeProvider
    public void onAdjustVolume(int i2) {
        this.f19417a.onAdjustVolume(i2);
    }

    @Override // android.media.VolumeProvider
    public void onSetVolumeTo(int i2) {
        this.f19417a.onSetVolumeTo(i2);
    }
}
