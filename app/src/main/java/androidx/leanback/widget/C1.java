package androidx.leanback.widget;

import androidx.media3.common.util.Log;

/* loaded from: classes.dex */
public final class C1 {

    /* renamed from: a, reason: collision with root package name */
    public final B1 f6475a;

    /* renamed from: b, reason: collision with root package name */
    public final B1 f6476b;

    /* renamed from: c, reason: collision with root package name */
    public B1 f6477c;

    /* renamed from: d, reason: collision with root package name */
    public B1 f6478d;

    public C1() {
        B1 b12 = new B1();
        this.f6475a = b12;
        B1 b13 = new B1();
        this.f6476b = b13;
        this.f6477c = b13;
        this.f6478d = b12;
    }

    public B1 mainAxis() {
        return this.f6477c;
    }

    public void reset() {
        B1 mainAxis = mainAxis();
        mainAxis.f6462b = Integer.MIN_VALUE;
        mainAxis.f6461a = Log.LOG_LEVEL_OFF;
    }

    public B1 secondAxis() {
        return this.f6478d;
    }

    public void setOrientation(int i2) {
        B1 b12 = this.f6475a;
        B1 b13 = this.f6476b;
        if (i2 == 0) {
            this.f6477c = b13;
            this.f6478d = b12;
        } else {
            this.f6477c = b12;
            this.f6478d = b13;
        }
    }

    public String toString() {
        return "horizontal=" + this.f6476b + "; vertical=" + this.f6475a;
    }
}
