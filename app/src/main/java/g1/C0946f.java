package g1;

import android.graphics.Color;
import java.util.Arrays;

/* renamed from: g1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0946f {

    /* renamed from: a, reason: collision with root package name */
    public final int f16417a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16418b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16419c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16420d;

    /* renamed from: e, reason: collision with root package name */
    public final int f16421e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16422f;

    /* renamed from: g, reason: collision with root package name */
    public int f16423g;

    /* renamed from: h, reason: collision with root package name */
    public int f16424h;

    /* renamed from: i, reason: collision with root package name */
    public float[] f16425i;

    public C0946f(int i2, int i7) {
        this.f16417a = Color.red(i2);
        this.f16418b = Color.green(i2);
        this.f16419c = Color.blue(i2);
        this.f16420d = i2;
        this.f16421e = i7;
    }

    public final void a() {
        if (this.f16422f) {
            return;
        }
        int i2 = this.f16420d;
        int calculateMinimumAlpha = D.a.calculateMinimumAlpha(-1, i2, 4.5f);
        int calculateMinimumAlpha2 = D.a.calculateMinimumAlpha(-1, i2, 3.0f);
        if (calculateMinimumAlpha != -1 && calculateMinimumAlpha2 != -1) {
            this.f16424h = D.a.setAlphaComponent(-1, calculateMinimumAlpha);
            this.f16423g = D.a.setAlphaComponent(-1, calculateMinimumAlpha2);
            this.f16422f = true;
            return;
        }
        int calculateMinimumAlpha3 = D.a.calculateMinimumAlpha(-16777216, i2, 4.5f);
        int calculateMinimumAlpha4 = D.a.calculateMinimumAlpha(-16777216, i2, 3.0f);
        if (calculateMinimumAlpha3 == -1 || calculateMinimumAlpha4 == -1) {
            this.f16424h = calculateMinimumAlpha != -1 ? D.a.setAlphaComponent(-1, calculateMinimumAlpha) : D.a.setAlphaComponent(-16777216, calculateMinimumAlpha3);
            this.f16423g = calculateMinimumAlpha2 != -1 ? D.a.setAlphaComponent(-1, calculateMinimumAlpha2) : D.a.setAlphaComponent(-16777216, calculateMinimumAlpha4);
            this.f16422f = true;
        } else {
            this.f16424h = D.a.setAlphaComponent(-16777216, calculateMinimumAlpha3);
            this.f16423g = D.a.setAlphaComponent(-16777216, calculateMinimumAlpha4);
            this.f16422f = true;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0946f.class == obj.getClass()) {
            C0946f c0946f = (C0946f) obj;
            if (this.f16421e == c0946f.f16421e && this.f16420d == c0946f.f16420d) {
                return true;
            }
        }
        return false;
    }

    public int getBodyTextColor() {
        a();
        return this.f16424h;
    }

    public float[] getHsl() {
        if (this.f16425i == null) {
            this.f16425i = new float[3];
        }
        D.a.RGBToHSL(this.f16417a, this.f16418b, this.f16419c, this.f16425i);
        return this.f16425i;
    }

    public int getPopulation() {
        return this.f16421e;
    }

    public int getRgb() {
        return this.f16420d;
    }

    public int getTitleTextColor() {
        a();
        return this.f16423g;
    }

    public int hashCode() {
        return (this.f16420d * 31) + this.f16421e;
    }

    public String toString() {
        return C0946f.class.getSimpleName() + " [RGB: #" + Integer.toHexString(getRgb()) + "] [HSL: " + Arrays.toString(getHsl()) + "] [Population: " + this.f16421e + "] [Title Text: #" + Integer.toHexString(getTitleTextColor()) + "] [Body Text: #" + Integer.toHexString(getBodyTextColor()) + ']';
    }
}
