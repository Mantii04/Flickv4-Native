package h3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import y.AbstractC1859c;

/* loaded from: classes2.dex */
public abstract class p extends AbstractC1859c {

    /* renamed from: b, reason: collision with root package name */
    public q f16552b;

    /* renamed from: e, reason: collision with root package name */
    public int f16553e;

    public p() {
        this.f16553e = 0;
    }

    public int getTopAndBottomOffset() {
        q qVar = this.f16552b;
        if (qVar != null) {
            return qVar.getTopAndBottomOffset();
        }
        return 0;
    }

    public void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        coordinatorLayout.onLayoutChild(view, i2);
    }

    @Override // y.AbstractC1859c
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        layoutChild(coordinatorLayout, view, i2);
        if (this.f16552b == null) {
            this.f16552b = new q(view);
        }
        q qVar = this.f16552b;
        View view2 = qVar.f16554a;
        qVar.f16555b = view2.getTop();
        qVar.f16556c = view2.getLeft();
        this.f16552b.a();
        int i7 = this.f16553e;
        if (i7 == 0) {
            return true;
        }
        this.f16552b.setTopAndBottomOffset(i7);
        this.f16553e = 0;
        return true;
    }

    public boolean setTopAndBottomOffset(int i2) {
        q qVar = this.f16552b;
        if (qVar != null) {
            return qVar.setTopAndBottomOffset(i2);
        }
        this.f16553e = i2;
        return false;
    }

    public p(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16553e = 0;
    }
}
