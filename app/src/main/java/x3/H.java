package x3;

import android.graphics.Typeface;

/* loaded from: classes2.dex */
public final class H extends C3.i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ J f20879a;

    public H(J j7) {
        this.f20879a = j7;
    }

    @Override // C3.i
    public void onFontRetrievalFailed(int i2) {
        J j7 = this.f20879a;
        j7.f20884e = true;
        I i7 = (I) j7.f20885f.get();
        if (i7 != null) {
            i7.onTextSizeChange();
        }
    }

    @Override // C3.i
    public void onFontRetrieved(Typeface typeface, boolean z6) {
        if (z6) {
            return;
        }
        J j7 = this.f20879a;
        j7.f20884e = true;
        I i2 = (I) j7.f20885f.get();
        if (i2 != null) {
            i2.onTextSizeChange();
        }
    }
}
