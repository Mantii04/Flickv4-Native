package I2;

import android.view.View;

/* loaded from: classes.dex */
public final class g implements View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f1293b;

    public g(k kVar) {
        this.f1293b = kVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        k kVar = this.f1293b;
        kVar.a(kVar.f1306i);
        kVar.f1298a.invalidate();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
