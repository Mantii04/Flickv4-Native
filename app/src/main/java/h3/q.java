package h3;

import M.AbstractC0181p0;
import android.view.View;

/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final View f16554a;

    /* renamed from: b, reason: collision with root package name */
    public int f16555b;

    /* renamed from: c, reason: collision with root package name */
    public int f16556c;

    /* renamed from: d, reason: collision with root package name */
    public int f16557d;

    public q(View view) {
        this.f16554a = view;
    }

    public final void a() {
        int i2 = this.f16557d;
        View view = this.f16554a;
        AbstractC0181p0.offsetTopAndBottom(view, i2 - (view.getTop() - this.f16555b));
        AbstractC0181p0.offsetLeftAndRight(view, 0 - (view.getLeft() - this.f16556c));
    }

    public int getLayoutTop() {
        return this.f16555b;
    }

    public int getTopAndBottomOffset() {
        return this.f16557d;
    }

    public boolean setTopAndBottomOffset(int i2) {
        if (this.f16557d == i2) {
            return false;
        }
        this.f16557d = i2;
        a();
        return true;
    }
}
