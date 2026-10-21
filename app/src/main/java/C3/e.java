package C3;

import C.r;
import android.graphics.Typeface;

/* loaded from: classes2.dex */
public final class e extends r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f508a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f509b;

    public e(g gVar, i iVar) {
        this.f509b = gVar;
        this.f508a = iVar;
    }

    @Override // C.r
    public void onFontRetrievalFailed(int i2) {
        this.f509b.f526m = true;
        this.f508a.onFontRetrievalFailed(i2);
    }

    @Override // C.r
    public void onFontRetrieved(Typeface typeface) {
        g gVar = this.f509b;
        gVar.f527n = Typeface.create(typeface, gVar.f516c);
        gVar.f526m = true;
        this.f508a.onFontRetrieved(gVar.f527n, false);
    }
}
