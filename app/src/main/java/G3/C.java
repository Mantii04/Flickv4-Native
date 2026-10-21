package G3;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import n3.InterfaceC1416a;

/* loaded from: classes2.dex */
public abstract class C {

    /* renamed from: c, reason: collision with root package name */
    public p f1062c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f1060a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1061b = false;

    /* renamed from: d, reason: collision with root package name */
    public RectF f1063d = new RectF();

    /* renamed from: e, reason: collision with root package name */
    public final Path f1064e = new Path();

    public static C create(View view) {
        return Build.VERSION.SDK_INT >= 33 ? new G(view) : new E(view);
    }

    public abstract void a(View view);

    public abstract boolean b();

    public final void c() {
        RectF rectF = this.f1063d;
        if (rectF.left > rectF.right || rectF.top > rectF.bottom || this.f1062c == null) {
            return;
        }
        s.getInstance().calculatePath(this.f1062c, 1.0f, this.f1063d, this.f1064e);
    }

    public void maybeClip(Canvas canvas, InterfaceC1416a interfaceC1416a) {
        if (b()) {
            Path path = this.f1064e;
            if (!path.isEmpty()) {
                canvas.save();
                canvas.clipPath(path);
                ((A0.a) interfaceC1416a).b(canvas);
                canvas.restore();
                return;
            }
        }
        ((A0.a) interfaceC1416a).b(canvas);
    }

    public void onMaskChanged(View view, RectF rectF) {
        this.f1063d = rectF;
        c();
        a(view);
    }

    public void onShapeAppearanceChanged(View view, p pVar) {
        this.f1062c = pVar;
        c();
        a(view);
    }

    public void setForceCompatClippingEnabled(View view, boolean z6) {
        if (z6 != this.f1060a) {
            this.f1060a = z6;
            a(view);
        }
    }

    public void setOffsetZeroCornerEdgeBoundsEnabled(View view, boolean z6) {
        this.f1061b = z6;
        a(view);
    }
}
