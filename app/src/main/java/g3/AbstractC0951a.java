package g3;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import h0.C0958a;
import h0.C0959b;

/* renamed from: g3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0951a {

    /* renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f16460a = new LinearInterpolator();

    /* renamed from: b, reason: collision with root package name */
    public static final C0959b f16461b = new C0959b();

    /* renamed from: c, reason: collision with root package name */
    public static final C0958a f16462c = new C0958a();

    /* renamed from: d, reason: collision with root package name */
    public static final h0.c f16463d = new h0.c();

    /* renamed from: e, reason: collision with root package name */
    public static final DecelerateInterpolator f16464e = new DecelerateInterpolator();

    public static float lerp(float f3, float f7, float f8) {
        return b.c.a(f7, f3, f8, f3);
    }

    public static int lerp(int i2, int i7, float f3) {
        return Math.round(f3 * (i7 - i2)) + i2;
    }

    public static float lerp(float f3, float f7, float f8, float f9, float f10) {
        return f10 <= f8 ? f3 : f10 >= f9 ? f7 : lerp(f3, f7, (f10 - f8) / (f9 - f8));
    }
}
