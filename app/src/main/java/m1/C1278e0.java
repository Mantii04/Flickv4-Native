package m1;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: m1.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1278e0 implements R0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AbstractC1286i0 f18370a;

    public C1278e0(AbstractC1286i0 abstractC1286i0) {
        this.f18370a = abstractC1286i0;
    }

    @Override // m1.R0
    public View getChildAt(int i2) {
        return this.f18370a.getChildAt(i2);
    }

    @Override // m1.R0
    public int getChildEnd(View view) {
        return this.f18370a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((C1288j0) view.getLayoutParams())).rightMargin;
    }

    @Override // m1.R0
    public int getChildStart(View view) {
        return this.f18370a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((C1288j0) view.getLayoutParams())).leftMargin;
    }

    @Override // m1.R0
    public int getParentEnd() {
        AbstractC1286i0 abstractC1286i0 = this.f18370a;
        return abstractC1286i0.getWidth() - abstractC1286i0.getPaddingRight();
    }

    @Override // m1.R0
    public int getParentStart() {
        return this.f18370a.getPaddingLeft();
    }
}
