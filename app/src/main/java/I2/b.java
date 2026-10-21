package I2;

import android.util.Log;
import android.view.View;

/* loaded from: classes.dex */
public final class b implements View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f1263b;

    public b(f fVar) {
        this.f1263b = fVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        Log.i("ShadowGenerator", "Attached");
        f fVar = this.f1263b;
        f.a(fVar, fVar.f1275h);
        fVar.f1268a.invalidate();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
