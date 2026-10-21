package G3;

import android.view.View;

/* loaded from: classes2.dex */
public final class G extends C {
    public G(View view) {
        d(view);
    }

    private void d(View view) {
        view.setOutlineProvider(new F(this));
    }

    @Override // G3.C
    public final void a(View view) {
        view.setClipToOutline(!this.f1060a);
        if (this.f1060a) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // G3.C
    public final boolean b() {
        return this.f1060a;
    }
}
