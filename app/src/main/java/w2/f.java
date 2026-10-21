package w2;

import G2.r;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import n2.InterfaceC1387I;
import n2.InterfaceC1391M;
import y2.C1882d;

/* loaded from: classes.dex */
public abstract class f implements InterfaceC1391M, InterfaceC1387I {

    /* renamed from: b, reason: collision with root package name */
    public final Drawable f20677b;

    public f(Drawable drawable) {
        this.f20677b = (Drawable) r.checkNotNull(drawable);
    }

    @Override // n2.InterfaceC1387I
    public void initialize() {
        Drawable drawable = this.f20677b;
        if (drawable instanceof BitmapDrawable) {
            ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
        } else if (drawable instanceof C1882d) {
            ((C1882d) drawable).getFirstFrame().prepareToDraw();
        }
    }

    @Override // n2.InterfaceC1391M
    public final Drawable get() {
        Drawable drawable = this.f20677b;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }
}
