package K3;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* renamed from: K3.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0142h extends G3.j {

    /* renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ int f1675I = 0;

    /* renamed from: H, reason: collision with root package name */
    public C0140f f1676H;

    public final void h(float f3, float f7, float f8, float f9) {
        RectF rectF = this.f1676H.f1674q;
        if (f3 == rectF.left && f7 == rectF.top && f8 == rectF.right && f9 == rectF.bottom) {
            return;
        }
        rectF.set(f3, f7, f8, f9);
        invalidateSelf();
    }

    @Override // G3.j, android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f1676H = new C0140f(this.f1676H);
        return this;
    }
}
