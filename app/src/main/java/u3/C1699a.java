package u3;

import C3.c;
import android.content.Context;
import android.graphics.Color;
import com.google.android.material.R;
import r3.AbstractC1595a;

/* renamed from: u3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1699a {

    /* renamed from: f, reason: collision with root package name */
    public static final int f20317f = (int) Math.round(5.1000000000000005d);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20318a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20319b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20320c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20321d;

    /* renamed from: e, reason: collision with root package name */
    public final float f20322e;

    public C1699a(Context context) {
        this(c.resolveBoolean(context, R.attr.elevationOverlayEnabled, false), AbstractC1595a.getColor(context, R.attr.elevationOverlayColor, 0), AbstractC1595a.getColor(context, R.attr.elevationOverlayAccentColor, 0), AbstractC1595a.getColor(context, R.attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    public float calculateOverlayAlphaFraction(float f3) {
        if (this.f20322e <= 0.0f || f3 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f3 / r0)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    public int compositeOverlay(int i2, float f3) {
        int i7;
        float calculateOverlayAlphaFraction = calculateOverlayAlphaFraction(f3);
        int alpha = Color.alpha(i2);
        int layer = AbstractC1595a.layer(D.a.setAlphaComponent(i2, 255), this.f20319b, calculateOverlayAlphaFraction);
        if (calculateOverlayAlphaFraction > 0.0f && (i7 = this.f20320c) != 0) {
            layer = AbstractC1595a.layer(layer, D.a.setAlphaComponent(i7, f20317f));
        }
        return D.a.setAlphaComponent(layer, alpha);
    }

    public int compositeOverlayIfNeeded(int i2, float f3) {
        return (this.f20318a && D.a.setAlphaComponent(i2, 255) == this.f20321d) ? compositeOverlay(i2, f3) : i2;
    }

    public int compositeOverlayWithThemeSurfaceColorIfNeeded(float f3) {
        return compositeOverlayIfNeeded(this.f20321d, f3);
    }

    public boolean isThemeElevationOverlayEnabled() {
        return this.f20318a;
    }

    public C1699a(boolean z6, int i2, int i7, int i8, float f3) {
        this.f20318a = z6;
        this.f20319b = i2;
        this.f20320c = i7;
        this.f20321d = i8;
        this.f20322e = f3;
    }
}
