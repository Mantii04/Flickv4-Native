package G3;

import android.graphics.Outline;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;

/* loaded from: classes2.dex */
public final class D extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ E f1065a;

    public D(E e3) {
        this.f1065a = e3;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        E e3 = this.f1065a;
        if (e3.f1062c == null || e3.f1063d.isEmpty()) {
            return;
        }
        RectF rectF = e3.f1063d;
        outline.setRoundRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom, e3.f1067g);
    }
}
