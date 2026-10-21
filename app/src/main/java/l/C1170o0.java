package l;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import f.AbstractC0876a;

/* renamed from: l.o0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1170o0 extends Spinner {

    /* renamed from: r, reason: collision with root package name */
    public static final int[] f17953r = {R.attr.spinnerMode};

    /* renamed from: b, reason: collision with root package name */
    public final C1120B f17954b;

    /* renamed from: e, reason: collision with root package name */
    public final Context f17955e;

    /* renamed from: f, reason: collision with root package name */
    public final C1128a0 f17956f;

    /* renamed from: j, reason: collision with root package name */
    public SpinnerAdapter f17957j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f17958m;

    /* renamed from: n, reason: collision with root package name */
    public final InterfaceC1167n0 f17959n;

    /* renamed from: p, reason: collision with root package name */
    public int f17960p;

    /* renamed from: q, reason: collision with root package name */
    public final Rect f17961q;

    public C1170o0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.spinnerStyle);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i7 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i7 = Math.max(i7, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i7;
        }
        Rect rect = this.f17961q;
        drawable.getPadding(rect);
        return rect.left + rect.right + i7;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1120B c1120b = this.f17954b;
        if (c1120b != null) {
            c1120b.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        return interfaceC1167n0 != null ? interfaceC1167n0.getHorizontalOffset() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        return interfaceC1167n0 != null ? interfaceC1167n0.getVerticalOffset() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f17959n != null ? this.f17960p : super.getDropDownWidth();
    }

    public final InterfaceC1167n0 getInternalPopup() {
        return this.f17959n;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        return interfaceC1167n0 != null ? interfaceC1167n0.getBackground() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f17955e;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        return interfaceC1167n0 != null ? interfaceC1167n0.getHintText() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C1120B c1120b = this.f17954b;
        if (c1120b != null) {
            return c1120b.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C1120B c1120b = this.f17954b;
        if (c1120b != null) {
            return c1120b.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        if (interfaceC1167n0 == null || !interfaceC1167n0.isShowing()) {
            return;
        }
        interfaceC1167n0.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        if (this.f17959n == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        C1164m0 c1164m0 = (C1164m0) parcelable;
        super.onRestoreInstanceState(c1164m0.getSuperState());
        if (!c1164m0.f17949b || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC1131b0(this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        C1164m0 c1164m0 = new C1164m0(super.onSaveInstanceState());
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        c1164m0.f17949b = interfaceC1167n0 != null && interfaceC1167n0.isShowing();
        return c1164m0;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C1128a0 c1128a0 = this.f17956f;
        if (c1128a0 == null || !c1128a0.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        if (interfaceC1167n0 == null) {
            return super.performClick();
        }
        if (interfaceC1167n0.isShowing()) {
            return true;
        }
        this.f17959n.show(AbstractC1137d0.b(this), AbstractC1137d0.a(this));
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C1120B c1120b = this.f17954b;
        if (c1120b != null) {
            c1120b.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C1120B c1120b = this.f17954b;
        if (c1120b != null) {
            c1120b.f(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        if (interfaceC1167n0 == null) {
            super.setDropDownHorizontalOffset(i2);
        } else {
            interfaceC1167n0.setHorizontalOriginalOffset(i2);
            interfaceC1167n0.setHorizontalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        if (interfaceC1167n0 != null) {
            interfaceC1167n0.setVerticalOffset(i2);
        } else {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f17959n != null) {
            this.f17960p = i2;
        } else {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        if (interfaceC1167n0 != null) {
            interfaceC1167n0.setBackgroundDrawable(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(AbstractC0876a.getDrawable(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        if (interfaceC1167n0 != null) {
            interfaceC1167n0.setPromptText(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C1120B c1120b = this.f17954b;
        if (c1120b != null) {
            c1120b.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C1120B c1120b = this.f17954b;
        if (c1120b != null) {
            c1120b.i(mode);
        }
    }

    public C1170o0(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, -1);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f17958m) {
            this.f17957j = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        InterfaceC1167n0 interfaceC1167n0 = this.f17959n;
        if (interfaceC1167n0 != null) {
            Context context = this.f17955e;
            if (context == null) {
                context = getContext();
            }
            interfaceC1167n0.setAdapter(new C1146g0(spinnerAdapter, context.getTheme()));
        }
    }

    public C1170o0(Context context, AttributeSet attributeSet, int i2, int i7) {
        this(context, attributeSet, i2, i7, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0064, code lost:
    
        if (r11 == null) goto L31;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.view.View, l.o0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1170o0(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10, android.content.res.Resources.Theme r11) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l.C1170o0.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }
}
