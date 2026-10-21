package T1;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public final class H {

    /* renamed from: a, reason: collision with root package name */
    public final int f3552a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3553b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3554c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3555d;

    /* renamed from: e, reason: collision with root package name */
    public Bitmap f3556e;

    public H(int i2, int i7, String str, String str2, String str3) {
        this.f3552a = i2;
        this.f3553b = i7;
        this.f3554c = str;
        this.f3555d = str2;
    }

    public Bitmap getBitmap() {
        return this.f3556e;
    }

    public String getFileName() {
        return this.f3555d;
    }

    public int getHeight() {
        return this.f3553b;
    }

    public String getId() {
        return this.f3554c;
    }

    public int getWidth() {
        return this.f3552a;
    }

    public void setBitmap(Bitmap bitmap) {
        this.f3556e = bitmap;
    }
}
