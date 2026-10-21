package l;

import android.graphics.Typeface;
import android.widget.TextView;

/* renamed from: l.s0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1181s0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f17999b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Typeface f18000e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f18001f;

    public RunnableC1181s0(TextView textView, Typeface typeface, int i2) {
        this.f17999b = textView;
        this.f18000e = typeface;
        this.f18001f = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f17999b.setTypeface(this.f18000e, this.f18001f);
    }
}
