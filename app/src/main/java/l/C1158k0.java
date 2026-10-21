package l;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SpinnerAdapter;

/* renamed from: l.k0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1158k0 extends C1162l1 implements InterfaceC1167n0 {

    /* renamed from: M, reason: collision with root package name */
    public CharSequence f17908M;

    /* renamed from: N, reason: collision with root package name */
    public ListAdapter f17909N;

    /* renamed from: O, reason: collision with root package name */
    public final Rect f17910O;

    /* renamed from: P, reason: collision with root package name */
    public int f17911P;

    /* renamed from: Q, reason: collision with root package name */
    public final /* synthetic */ C1170o0 f17912Q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1158k0(C1170o0 c1170o0, Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17912Q = c1170o0;
        this.f17910O = new Rect();
        setAnchorView(c1170o0);
        setModal(true);
        setPromptPosition(0);
        setOnItemClickListener(new C1149h0(this));
    }

    public final void c() {
        int i2;
        Drawable background = getBackground();
        C1170o0 c1170o0 = this.f17912Q;
        if (background != null) {
            background.getPadding(c1170o0.f17961q);
            i2 = z2.isLayoutRtl(c1170o0) ? c1170o0.f17961q.right : -c1170o0.f17961q.left;
        } else {
            Rect rect = c1170o0.f17961q;
            rect.right = 0;
            rect.left = 0;
            i2 = 0;
        }
        int paddingLeft = c1170o0.getPaddingLeft();
        int paddingRight = c1170o0.getPaddingRight();
        int width = c1170o0.getWidth();
        int i7 = c1170o0.f17960p;
        if (i7 == -2) {
            int a7 = c1170o0.a((SpinnerAdapter) this.f17909N, getBackground());
            int i8 = c1170o0.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = c1170o0.f17961q;
            int i9 = (i8 - rect2.left) - rect2.right;
            if (a7 > i9) {
                a7 = i9;
            }
            setContentWidth(Math.max(a7, (width - paddingLeft) - paddingRight));
        } else if (i7 == -1) {
            setContentWidth((width - paddingLeft) - paddingRight);
        } else {
            setContentWidth(i7);
        }
        setHorizontalOffset(z2.isLayoutRtl(c1170o0) ? (((width - paddingRight) - getWidth()) - getHorizontalOriginalOffset()) + i2 : getHorizontalOriginalOffset() + paddingLeft + i2);
    }

    @Override // l.InterfaceC1167n0
    public CharSequence getHintText() {
        return this.f17908M;
    }

    public int getHorizontalOriginalOffset() {
        return this.f17911P;
    }

    @Override // l.C1162l1, l.InterfaceC1167n0
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        this.f17909N = listAdapter;
    }

    @Override // l.InterfaceC1167n0
    public void setHorizontalOriginalOffset(int i2) {
        this.f17911P = i2;
    }

    @Override // l.InterfaceC1167n0
    public void setPromptText(CharSequence charSequence) {
        this.f17908M = charSequence;
    }

    @Override // l.InterfaceC1167n0
    public void show(int i2, int i7) {
        ViewTreeObserver viewTreeObserver;
        boolean isShowing = isShowing();
        c();
        setInputMethodMode(2);
        super.show();
        ListView listView = getListView();
        listView.setChoiceMode(1);
        AbstractC1137d0.d(listView, i2);
        AbstractC1137d0.c(listView, i7);
        C1170o0 c1170o0 = this.f17912Q;
        setSelection(c1170o0.getSelectedItemPosition());
        if (isShowing || (viewTreeObserver = c1170o0.getViewTreeObserver()) == null) {
            return;
        }
        ViewTreeObserverOnGlobalLayoutListenerC1152i0 viewTreeObserverOnGlobalLayoutListenerC1152i0 = new ViewTreeObserverOnGlobalLayoutListenerC1152i0(this);
        viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC1152i0);
        setOnDismissListener(new C1155j0(this, viewTreeObserverOnGlobalLayoutListenerC1152i0));
    }
}
