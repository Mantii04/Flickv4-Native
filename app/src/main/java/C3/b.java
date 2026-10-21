package C3;

import android.graphics.Typeface;

/* loaded from: classes2.dex */
public final class b extends i {

    /* renamed from: a, reason: collision with root package name */
    public final Typeface f505a;

    /* renamed from: b, reason: collision with root package name */
    public final a f506b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f507c;

    public b(a aVar, Typeface typeface) {
        this.f505a = typeface;
        this.f506b = aVar;
    }

    public void cancel() {
        this.f507c = true;
    }

    @Override // C3.i
    public void onFontRetrievalFailed(int i2) {
        if (this.f507c) {
            return;
        }
        this.f506b.apply(this.f505a);
    }

    @Override // C3.i
    public void onFontRetrieved(Typeface typeface, boolean z6) {
        if (this.f507c) {
            return;
        }
        this.f506b.apply(typeface);
    }
}
