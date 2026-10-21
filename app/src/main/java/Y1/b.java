package Y1;

import com.airbnb.lottie.model.DocumentData$Justification;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4339a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4340b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4341c;

    /* renamed from: d, reason: collision with root package name */
    public final DocumentData$Justification f4342d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4343e;

    /* renamed from: f, reason: collision with root package name */
    public final float f4344f;

    /* renamed from: g, reason: collision with root package name */
    public final float f4345g;

    /* renamed from: h, reason: collision with root package name */
    public final int f4346h;

    /* renamed from: i, reason: collision with root package name */
    public final int f4347i;

    /* renamed from: j, reason: collision with root package name */
    public final float f4348j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f4349k;

    public b(String str, String str2, float f3, DocumentData$Justification documentData$Justification, int i2, float f7, float f8, int i7, int i8, float f9, boolean z6) {
        this.f4339a = str;
        this.f4340b = str2;
        this.f4341c = f3;
        this.f4342d = documentData$Justification;
        this.f4343e = i2;
        this.f4344f = f7;
        this.f4345g = f8;
        this.f4346h = i7;
        this.f4347i = i8;
        this.f4348j = f9;
        this.f4349k = z6;
    }

    public int hashCode() {
        int ordinal = ((this.f4342d.ordinal() + (((int) (A.i.b(this.f4339a.hashCode() * 31, 31, this.f4340b) + this.f4341c)) * 31)) * 31) + this.f4343e;
        long floatToRawIntBits = Float.floatToRawIntBits(this.f4344f);
        return (((ordinal * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.f4346h;
    }
}
