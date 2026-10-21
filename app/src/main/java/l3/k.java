package l3;

import M.I0;
import M.J0;
import M.S0;
import M.f1;
import M.h1;
import android.view.View;
import g3.AbstractC0951a;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class k extends J0 {

    /* renamed from: c, reason: collision with root package name */
    public final View f18146c;

    /* renamed from: d, reason: collision with root package name */
    public int f18147d;

    /* renamed from: e, reason: collision with root package name */
    public int f18148e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f18149f;

    public k(View view) {
        super(0);
        this.f18149f = new int[2];
        this.f18146c = view;
    }

    @Override // M.J0
    public void onEnd(S0 s02) {
        this.f18146c.setTranslationY(0.0f);
    }

    @Override // M.J0
    public void onPrepare(S0 s02) {
        View view = this.f18146c;
        int[] iArr = this.f18149f;
        view.getLocationOnScreen(iArr);
        this.f18147d = iArr[1];
    }

    @Override // M.J0
    public h1 onProgress(h1 h1Var, List<S0> list) {
        Iterator<S0> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((it.next().getTypeMask() & f1.ime()) != 0) {
                this.f18146c.setTranslationY(AbstractC0951a.lerp(this.f18148e, 0, r0.getInterpolatedFraction()));
                break;
            }
        }
        return h1Var;
    }

    @Override // M.J0
    public I0 onStart(S0 s02, I0 i02) {
        View view = this.f18146c;
        int[] iArr = this.f18149f;
        view.getLocationOnScreen(iArr);
        int i2 = this.f18147d - iArr[1];
        this.f18148e = i2;
        view.setTranslationY(i2);
        return i02;
    }
}
