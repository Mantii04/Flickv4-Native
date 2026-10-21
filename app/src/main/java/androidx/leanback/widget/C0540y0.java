package androidx.leanback.widget;

import android.graphics.Color;

/* renamed from: androidx.leanback.widget.y0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0540y0 {

    /* renamed from: a, reason: collision with root package name */
    public float f6923a;

    /* renamed from: b, reason: collision with root package name */
    public int f6924b;

    /* renamed from: c, reason: collision with root package name */
    public float f6925c;

    /* renamed from: d, reason: collision with root package name */
    public float f6926d;

    /* renamed from: e, reason: collision with root package name */
    public float f6927e;

    /* renamed from: f, reason: collision with root package name */
    public float f6928f;

    /* renamed from: g, reason: collision with root package name */
    public float f6929g;

    /* renamed from: h, reason: collision with root package name */
    public float f6930h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public float f6931i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ PagingIndicator f6932j;

    public C0540y0(PagingIndicator pagingIndicator) {
        this.f6932j = pagingIndicator;
        this.f6931i = pagingIndicator.f6637b ? 1.0f : -1.0f;
    }

    public final void a() {
        this.f6925c = 0.0f;
        this.f6926d = 0.0f;
        PagingIndicator pagingIndicator = this.f6932j;
        this.f6927e = pagingIndicator.f6638e;
        float f3 = pagingIndicator.f6639f;
        this.f6928f = f3;
        this.f6929g = f3 * pagingIndicator.f6636E;
        this.f6923a = 0.0f;
        adjustAlpha();
    }

    public void adjustAlpha() {
        int round = Math.round(this.f6923a * 255.0f);
        PagingIndicator pagingIndicator = this.f6932j;
        this.f6924b = Color.argb(round, Color.red(pagingIndicator.f6652y), Color.green(pagingIndicator.f6652y), Color.blue(pagingIndicator.f6652y));
    }

    public float getAlpha() {
        return this.f6923a;
    }

    public float getDiameter() {
        return this.f6927e;
    }

    public float getTranslationX() {
        return this.f6925c;
    }

    public void setAlpha(float f3) {
        this.f6923a = f3;
        adjustAlpha();
        this.f6932j.invalidate();
    }

    public void setDiameter(float f3) {
        this.f6927e = f3;
        float f7 = f3 / 2.0f;
        this.f6928f = f7;
        PagingIndicator pagingIndicator = this.f6932j;
        this.f6929g = f7 * pagingIndicator.f6636E;
        pagingIndicator.invalidate();
    }

    public void setTranslationX(float f3) {
        this.f6925c = f3 * this.f6930h * this.f6931i;
        this.f6932j.invalidate();
    }
}
