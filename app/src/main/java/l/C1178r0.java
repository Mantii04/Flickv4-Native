package l;

import M.AbstractC0181p0;
import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* renamed from: l.r0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1178r0 extends C.r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17978a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17979b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WeakReference f17980c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C1199y0 f17981d;

    public C1178r0(C1199y0 c1199y0, int i2, int i7, WeakReference weakReference) {
        this.f17981d = c1199y0;
        this.f17978a = i2;
        this.f17979b = i7;
        this.f17980c = weakReference;
    }

    @Override // C.r
    public void onFontRetrieved(Typeface typeface) {
        int i2;
        if (Build.VERSION.SDK_INT >= 28 && (i2 = this.f17978a) != -1) {
            typeface = AbstractC1196x0.a(typeface, i2, (this.f17979b & 2) != 0);
        }
        C1199y0 c1199y0 = this.f17981d;
        if (c1199y0.f18068m) {
            c1199y0.f18067l = typeface;
            TextView textView = (TextView) this.f17980c.get();
            if (textView != null) {
                if (AbstractC0181p0.isAttachedToWindow(textView)) {
                    textView.post(new RunnableC1181s0(textView, typeface, c1199y0.f18065j));
                } else {
                    textView.setTypeface(typeface, c1199y0.f18065j);
                }
            }
        }
    }

    @Override // C.r
    public void onFontRetrievalFailed(int i2) {
    }
}
