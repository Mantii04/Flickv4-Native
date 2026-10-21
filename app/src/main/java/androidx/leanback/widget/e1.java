package androidx.leanback.widget;

import android.graphics.Color;

/* loaded from: classes.dex */
public final class e1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f6786a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6787b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6788c;

    public e1(int i2, int i7, int i8) {
        this.f6786a = i2;
        this.f6787b = i7 == i2 ? getBrightColor(i2) : i7;
        this.f6788c = i8;
    }

    public static int getBrightColor(int i2) {
        return Color.argb((int) ((Color.alpha(i2) * 0.85f) + 38.25f), (int) ((Color.red(i2) * 0.85f) + 38.25f), (int) ((Color.green(i2) * 0.85f) + 38.25f), (int) ((Color.blue(i2) * 0.85f) + 38.25f));
    }
}
