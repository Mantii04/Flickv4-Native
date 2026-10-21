package C3;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: classes2.dex */
public final class f extends i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f510a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextPaint f511b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f512c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f513d;

    public f(g gVar, Context context, TextPaint textPaint, i iVar) {
        this.f513d = gVar;
        this.f510a = context;
        this.f511b = textPaint;
        this.f512c = iVar;
    }

    @Override // C3.i
    public void onFontRetrievalFailed(int i2) {
        this.f512c.onFontRetrievalFailed(i2);
    }

    @Override // C3.i
    public void onFontRetrieved(Typeface typeface, boolean z6) {
        this.f513d.updateTextPaintMeasureState(this.f510a, this.f511b, typeface);
        this.f512c.onFontRetrieved(typeface, z6);
    }
}
