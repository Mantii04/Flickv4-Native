package p0;

import android.media.VolumeProvider;
import android.os.Build;

/* renamed from: p0.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1487m {

    /* renamed from: a, reason: collision with root package name */
    public final int f19419a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19420b;

    /* renamed from: c, reason: collision with root package name */
    public final String f19421c;

    /* renamed from: d, reason: collision with root package name */
    public int f19422d;

    /* renamed from: e, reason: collision with root package name */
    public AbstractC1486l f19423e;

    /* renamed from: f, reason: collision with root package name */
    public VolumeProvider f19424f;

    public AbstractC1487m(int i2, int i7, int i8, String str) {
        this.f19419a = i2;
        this.f19420b = i7;
        this.f19422d = i8;
        this.f19421c = str;
    }

    public final int getCurrentVolume() {
        return this.f19422d;
    }

    public final int getMaxVolume() {
        return this.f19420b;
    }

    public final int getVolumeControl() {
        return this.f19419a;
    }

    public Object getVolumeProvider() {
        AbstractC1487m abstractC1487m;
        if (this.f19424f != null) {
            abstractC1487m = this;
        } else if (Build.VERSION.SDK_INT >= 30) {
            abstractC1487m = this;
            abstractC1487m.f19424f = new C1483i(abstractC1487m, this.f19419a, this.f19420b, this.f19422d, this.f19421c);
        } else {
            abstractC1487m = this;
            abstractC1487m.f19424f = new C1484j(this, abstractC1487m.f19419a, abstractC1487m.f19420b, abstractC1487m.f19422d);
        }
        return abstractC1487m.f19424f;
    }

    public abstract void onAdjustVolume(int i2);

    public abstract void onSetVolumeTo(int i2);

    public void setCallback(AbstractC1486l abstractC1486l) {
        this.f19423e = abstractC1486l;
    }

    public final void setCurrentVolume(int i2) {
        this.f19422d = i2;
        AbstractC1485k.a((VolumeProvider) getVolumeProvider(), i2);
        AbstractC1486l abstractC1486l = this.f19423e;
        if (abstractC1486l != null) {
            abstractC1486l.onVolumeChanged(this);
        }
    }
}
