package p2;

import android.util.DisplayMetrics;

/* loaded from: classes.dex */
public final class o implements p {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayMetrics f19468a;

    public o(DisplayMetrics displayMetrics) {
        this.f19468a = displayMetrics;
    }

    @Override // p2.p
    public int getHeightPixels() {
        return this.f19468a.heightPixels;
    }

    @Override // p2.p
    public int getWidthPixels() {
        return this.f19468a.widthPixels;
    }
}
