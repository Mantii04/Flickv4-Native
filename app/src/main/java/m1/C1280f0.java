package m1;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: m1.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1280f0 implements R0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC1286i0 f18373a;

    public C1280f0(AbstractC1286i0 abstractC1286i0) {
        this.f18373a = abstractC1286i0;
    }

    @Override // m1.R0
    public View getChildAt(int i2) {
        return this.f18373a.getChildAt(i2);
    }

    @Override // m1.R0
    public int getChildEnd(View view) {
        return this.f18373a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((C1288j0) view.getLayoutParams())).bottomMargin;
    }

    @Override // m1.R0
    public int getChildStart(View view) {
        return this.f18373a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((C1288j0) view.getLayoutParams())).topMargin;
    }

    @Override // m1.R0
    public int getParentEnd() {
        AbstractC1286i0 abstractC1286i0 = this.f18373a;
        return abstractC1286i0.getHeight() - abstractC1286i0.getPaddingBottom();
    }

    @Override // m1.R0
    public int getParentStart() {
        return this.f18373a.getPaddingTop();
    }
}
