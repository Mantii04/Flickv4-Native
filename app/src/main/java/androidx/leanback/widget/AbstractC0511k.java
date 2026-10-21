package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import java.util.ArrayList;

/* renamed from: androidx.leanback.widget.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0511k extends FrameLayout {

    /* renamed from: A, reason: collision with root package name */
    public static final int[] f6818A = {android.R.attr.state_pressed};

    /* renamed from: b, reason: collision with root package name */
    public int f6819b;

    /* renamed from: e, reason: collision with root package name */
    public int f6820e;

    /* renamed from: f, reason: collision with root package name */
    public int f6821f;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f6822j;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f6823m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f6824n;

    /* renamed from: p, reason: collision with root package name */
    public int f6825p;

    /* renamed from: q, reason: collision with root package name */
    public int f6826q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f6827r;

    /* renamed from: s, reason: collision with root package name */
    public final int f6828s;

    /* renamed from: t, reason: collision with root package name */
    public final int f6829t;

    /* renamed from: u, reason: collision with root package name */
    public final int f6830u;

    /* renamed from: v, reason: collision with root package name */
    public float f6831v;

    /* renamed from: w, reason: collision with root package name */
    public float f6832w;

    /* renamed from: x, reason: collision with root package name */
    public float f6833x;

    /* renamed from: y, reason: collision with root package name */
    public AbstractC0501f f6834y;

    /* renamed from: z, reason: collision with root package name */
    public final RunnableC0491b f6835z;

    @SuppressLint({"CustomViewStyleable"})
    public AbstractC0511k(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6835z = new RunnableC0491b(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.leanback.R.styleable.lbBaseCardView, i2, 0);
        try {
            this.f6819b = obtainStyledAttributes.getInteger(androidx.leanback.R.styleable.lbBaseCardView_cardType, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(androidx.leanback.R.styleable.lbBaseCardView_cardForeground);
            if (drawable != null) {
                setForeground(drawable);
            }
            Drawable drawable2 = obtainStyledAttributes.getDrawable(androidx.leanback.R.styleable.lbBaseCardView_cardBackground);
            if (drawable2 != null) {
                setBackground(drawable2);
            }
            this.f6820e = obtainStyledAttributes.getInteger(androidx.leanback.R.styleable.lbBaseCardView_infoVisibility, 1);
            int integer = obtainStyledAttributes.getInteger(androidx.leanback.R.styleable.lbBaseCardView_extraVisibility, 2);
            this.f6821f = integer;
            int i7 = this.f6820e;
            if (integer < i7) {
                this.f6821f = i7;
            }
            this.f6828s = obtainStyledAttributes.getInteger(androidx.leanback.R.styleable.lbBaseCardView_selectedAnimationDelay, getResources().getInteger(androidx.leanback.R.integer.lb_card_selected_animation_delay));
            this.f6830u = obtainStyledAttributes.getInteger(androidx.leanback.R.styleable.lbBaseCardView_selectedAnimationDuration, getResources().getInteger(androidx.leanback.R.integer.lb_card_selected_animation_duration));
            this.f6829t = obtainStyledAttributes.getInteger(androidx.leanback.R.styleable.lbBaseCardView_activatedAnimationDuration, getResources().getInteger(androidx.leanback.R.integer.lb_card_activated_animation_duration));
            obtainStyledAttributes.recycle();
            this.f6827r = true;
            this.f6822j = new ArrayList();
            this.f6823m = new ArrayList();
            this.f6824n = new ArrayList();
            this.f6831v = 0.0f;
            this.f6832w = getFinalInfoVisFraction();
            this.f6833x = getFinalInfoAlpha();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void setInfoViewVisibility(boolean z6) {
        int i2 = this.f6819b;
        ArrayList arrayList = this.f6823m;
        int i7 = 0;
        if (i2 != 3) {
            if (i2 != 2) {
                if (i2 == 1) {
                    b();
                    if (z6) {
                        for (int i8 = 0; i8 < arrayList.size(); i8++) {
                            ((View) arrayList.get(i8)).setVisibility(0);
                        }
                    }
                    if ((z6 ? 1.0f : 0.0f) == this.f6833x) {
                        return;
                    }
                    C0503g c0503g = new C0503g(this, this.f6833x, z6 ? 1.0f : 0.0f);
                    this.f6834y = c0503g;
                    c0503g.setDuration(this.f6829t);
                    this.f6834y.setInterpolator(new DecelerateInterpolator());
                    this.f6834y.setAnimationListener(new AnimationAnimationListenerC0499e(this));
                    startAnimation(this.f6834y);
                    return;
                }
                return;
            }
            if (this.f6820e != 2) {
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    ((View) arrayList.get(i9)).setVisibility(z6 ? 0 : 8);
                }
                return;
            }
            b();
            if (z6) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    ((View) arrayList.get(i10)).setVisibility(0);
                }
            }
            float f3 = z6 ? 1.0f : 0.0f;
            if (this.f6832w == f3) {
                return;
            }
            C0505h c0505h = new C0505h(this, this.f6832w, f3);
            this.f6834y = c0505h;
            c0505h.setDuration(this.f6830u);
            this.f6834y.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f6834y.setAnimationListener(new AnimationAnimationListenerC0497d(this));
            startAnimation(this.f6834y);
            return;
        }
        if (z6) {
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((View) arrayList.get(i11)).setVisibility(0);
            }
            return;
        }
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            ((View) arrayList.get(i12)).setVisibility(8);
        }
        while (true) {
            ArrayList arrayList2 = this.f6824n;
            if (i7 >= arrayList2.size()) {
                this.f6831v = 0.0f;
                return;
            } else {
                ((View) arrayList2.get(i7)).setVisibility(8);
                i7++;
            }
        }
    }

    public final void a(boolean z6) {
        b();
        int i2 = 0;
        if (z6) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f6825p, 1073741824);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int i7 = 0;
            int i8 = 0;
            while (true) {
                ArrayList arrayList = this.f6824n;
                if (i7 >= arrayList.size()) {
                    break;
                }
                View view = (View) arrayList.get(i7);
                view.setVisibility(0);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i8 = Math.max(i8, view.getMeasuredHeight());
                i7++;
            }
            i2 = i8;
        }
        C0507i c0507i = new C0507i(this, this.f6831v, z6 ? i2 : 0.0f);
        this.f6834y = c0507i;
        c0507i.setDuration(this.f6830u);
        this.f6834y.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f6834y.setAnimationListener(new AnimationAnimationListenerC0494c(this));
        startAnimation(this.f6834y);
    }

    public final void b() {
        AbstractC0501f abstractC0501f = this.f6834y;
        if (abstractC0501f != null) {
            abstractC0501f.cancel();
            this.f6834y = null;
            clearAnimation();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0509j;
    }

    public int getCardType() {
        return this.f6819b;
    }

    @Deprecated
    public int getExtraVisibility() {
        return this.f6821f;
    }

    public final float getFinalInfoAlpha() {
        return (this.f6819b == 1 && this.f6820e == 2 && !isSelected()) ? 0.0f : 1.0f;
    }

    public final float getFinalInfoVisFraction() {
        return (this.f6819b == 2 && this.f6820e == 2 && !isSelected()) ? 0.0f : 1.0f;
    }

    public int getInfoVisibility() {
        return this.f6820e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i2) {
        boolean z6 = false;
        boolean z7 = false;
        for (int i7 : super.onCreateDrawableState(i2)) {
            if (i7 == 16842919) {
                z6 = true;
            }
            if (i7 == 16842910) {
                z7 = true;
            }
        }
        return (z6 && z7) ? View.PRESSED_ENABLED_STATE_SET : z6 ? f6818A : z7 ? View.ENABLED_STATE_SET : View.EMPTY_STATE_SET;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f6835z);
        b();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        ArrayList arrayList;
        float paddingTop = getPaddingTop();
        int i10 = 0;
        while (true) {
            ArrayList arrayList2 = this.f6822j;
            if (i10 >= arrayList2.size()) {
                break;
            }
            View view = (View) arrayList2.get(i10);
            if (view.getVisibility() != 8) {
                view.layout(getPaddingLeft(), (int) paddingTop, getPaddingLeft() + this.f6825p, (int) (view.getMeasuredHeight() + paddingTop));
                paddingTop += view.getMeasuredHeight();
            }
            i10++;
        }
        if (this.f6819b != 0) {
            int i11 = 0;
            float f3 = 0.0f;
            while (true) {
                arrayList = this.f6823m;
                if (i11 >= arrayList.size()) {
                    break;
                }
                f3 += ((View) arrayList.get(i11)).getMeasuredHeight();
                i11++;
            }
            int i12 = this.f6819b;
            if (i12 == 1) {
                paddingTop -= f3;
                if (paddingTop < 0.0f) {
                    paddingTop = 0.0f;
                }
            } else if (i12 != 2) {
                paddingTop -= this.f6831v;
            } else if (this.f6820e == 2) {
                f3 *= this.f6832w;
            }
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                View view2 = (View) arrayList.get(i13);
                if (view2.getVisibility() != 8) {
                    int measuredHeight = view2.getMeasuredHeight();
                    if (measuredHeight > f3) {
                        measuredHeight = (int) f3;
                    }
                    float f7 = measuredHeight;
                    paddingTop += f7;
                    view2.layout(getPaddingLeft(), (int) paddingTop, getPaddingLeft() + this.f6825p, (int) paddingTop);
                    f3 -= f7;
                    if (f3 <= 0.0f) {
                        break;
                    }
                }
            }
            if (this.f6819b == 3) {
                int i14 = 0;
                while (true) {
                    ArrayList arrayList3 = this.f6824n;
                    if (i14 >= arrayList3.size()) {
                        break;
                    }
                    View view3 = (View) arrayList3.get(i14);
                    if (view3.getVisibility() != 8) {
                        view3.layout(getPaddingLeft(), (int) paddingTop, getPaddingLeft() + this.f6825p, (int) (view3.getMeasuredHeight() + paddingTop));
                        paddingTop += view3.getMeasuredHeight();
                    }
                    i14++;
                }
            }
        }
        onSizeChanged(0, 0, i8 - i2, i9 - i7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0036, code lost:
    
        if (r16.f6832w > 0.0f) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0095 A[EDGE_INSN: B:42:0x0095->B:43:0x0095 BREAK  A[LOOP:0: B:21:0x005c->B:32:0x0092], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0168  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.AbstractC0511k.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void setActivated(boolean z6) {
        if (z6 != isActivated()) {
            super.setActivated(z6);
            if (this.f6819b != 0) {
                int i2 = this.f6820e;
                if (i2 == 1) {
                    setInfoViewVisibility(i2 != 0 ? i2 != 1 ? i2 != 2 ? false : isSelected() : isActivated() : true);
                }
            }
        }
    }

    public void setCardType(int i2) {
        if (this.f6819b != i2) {
            if (i2 < 0 || i2 >= 4) {
                Log.e("BaseCardView", "Invalid card type specified: " + i2 + ". Defaulting to type CARD_TYPE_MAIN_ONLY.");
                this.f6819b = 0;
            } else {
                this.f6819b = i2;
            }
            requestLayout();
        }
    }

    @Deprecated
    public void setExtraVisibility(int i2) {
        if (this.f6821f != i2) {
            this.f6821f = i2;
        }
    }

    public void setInfoVisibility(int i2) {
        if (this.f6820e == i2) {
            return;
        }
        b();
        this.f6820e = i2;
        this.f6832w = getFinalInfoVisFraction();
        requestLayout();
        float finalInfoAlpha = getFinalInfoAlpha();
        if (finalInfoAlpha == this.f6833x) {
            return;
        }
        this.f6833x = finalInfoAlpha;
        int i7 = 0;
        while (true) {
            ArrayList arrayList = this.f6823m;
            if (i7 >= arrayList.size()) {
                return;
            }
            ((View) arrayList.get(i7)).setAlpha(this.f6833x);
            i7++;
        }
    }

    @Override // android.view.View
    public void setSelected(boolean z6) {
        if (z6 != isSelected()) {
            super.setSelected(z6);
            boolean isSelected = isSelected();
            RunnableC0491b runnableC0491b = this.f6835z;
            removeCallbacks(runnableC0491b);
            if (this.f6819b != 3) {
                if (this.f6820e == 2) {
                    setInfoViewVisibility(isSelected);
                }
            } else if (!isSelected) {
                a(false);
            } else if (this.f6827r) {
                postDelayed(runnableC0491b, this.f6828s);
            } else {
                post(runnableC0491b);
                this.f6827r = true;
            }
        }
    }

    public void setSelectedAnimationDelayed(boolean z6) {
        this.f6827r = z6;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.View
    public String toString() {
        return super.toString();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public C0509j generateDefaultLayoutParams() {
        return new C0509j(-2, -2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public C0509j generateLayoutParams(AttributeSet attributeSet) {
        return new C0509j(getContext(), attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public C0509j generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C0509j) {
            return new C0509j((C0509j) layoutParams);
        }
        return new C0509j(layoutParams);
    }
}
