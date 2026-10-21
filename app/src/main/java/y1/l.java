package y1;

import android.animation.TypeEvaluator;

/* loaded from: classes.dex */
public final class l implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public static final l f20989a = new l();

    public static l getInstance() {
        return f20989a;
    }

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f3, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f7 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float f8 = ((intValue2 >> 24) & 255) / 255.0f;
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float pow5 = (float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d);
        float pow6 = (float) Math.pow((intValue2 & 255) / 255.0f, 2.2d);
        float a7 = b.c.a(f8, f7, f3, f7);
        float a8 = b.c.a(pow4, pow, f3, pow);
        float a9 = b.c.a(pow5, pow2, f3, pow2);
        float a10 = b.c.a(pow6, pow3, f3, pow3);
        float pow7 = ((float) Math.pow(a8, 0.45454545454545453d)) * 255.0f;
        float pow8 = ((float) Math.pow(a9, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(a10, 0.45454545454545453d)) * 255.0f) | (Math.round(pow7) << 16) | (Math.round(a7 * 255.0f) << 24) | (Math.round(pow8) << 8));
    }
}
