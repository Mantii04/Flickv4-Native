package G3;

import android.graphics.RectF;

/* renamed from: G3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0105d {
    public abstract void getCornerPath(A a7, float f3, float f7, float f8);

    public void getCornerPath(A a7, float f3, float f7, RectF rectF, InterfaceC0104c interfaceC0104c) {
        getCornerPath(a7, f3, f7, interfaceC0104c.getCornerSize(rectF));
    }
}
