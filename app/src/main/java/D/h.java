package D;

import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class h extends J.r {

    /* renamed from: a, reason: collision with root package name */
    public final C.r f814a;

    public h(C.r rVar) {
        this.f814a = rVar;
    }

    @Override // J.r
    public void onTypefaceRequestFailed(int i2) {
        C.r rVar = this.f814a;
        if (rVar != null) {
            rVar.onFontRetrievalFailed(i2);
        }
    }

    @Override // J.r
    public void onTypefaceRetrieved(Typeface typeface) {
        C.r rVar = this.f814a;
        if (rVar != null) {
            rVar.onFontRetrieved(typeface);
        }
    }
}
