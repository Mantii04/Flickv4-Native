package com.google.android.material.textfield;

import A.h;
import A.i;
import C3.d;
import G3.InterfaceC0104c;
import G3.j;
import G3.p;
import J0.g;
import K3.A;
import K3.AbstractC0142h;
import K3.B;
import K3.C;
import K3.C0140f;
import K3.C0141g;
import K3.D;
import K3.E;
import K3.F;
import K3.H;
import K3.l;
import K3.n;
import K3.q;
import K3.t;
import K3.u;
import K3.x;
import K3.z;
import M.AbstractC0181p0;
import M.AbstractC0193w;
import a.AbstractC0373c;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.leanback.widget.W;
import androidx.transition.c;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.a;
import f.AbstractC0876a;
import g3.AbstractC0951a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import l.I;
import l.P0;
import r3.AbstractC1595a;
import x1.AbstractC1798B;
import x3.AbstractC1833g;
import x3.T;
import z3.k;

/* loaded from: classes2.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: L0, reason: collision with root package name */
    public static final int f12859L0 = R.style.Widget_Design_TextInputLayout;

    /* renamed from: M0, reason: collision with root package name */
    public static final int[][] f12860M0 = {new int[]{android.R.attr.state_pressed}, new int[0]};

    /* renamed from: A, reason: collision with root package name */
    public CharSequence f12861A;

    /* renamed from: A0, reason: collision with root package name */
    public int f12862A0;

    /* renamed from: B, reason: collision with root package name */
    public boolean f12863B;

    /* renamed from: B0, reason: collision with root package name */
    public int f12864B0;

    /* renamed from: C, reason: collision with root package name */
    public AppCompatTextView f12865C;

    /* renamed from: C0, reason: collision with root package name */
    public int f12866C0;

    /* renamed from: D, reason: collision with root package name */
    public ColorStateList f12867D;

    /* renamed from: D0, reason: collision with root package name */
    public boolean f12868D0;

    /* renamed from: E, reason: collision with root package name */
    public int f12869E;

    /* renamed from: E0, reason: collision with root package name */
    public final a f12870E0;

    /* renamed from: F, reason: collision with root package name */
    public c f12871F;

    /* renamed from: F0, reason: collision with root package name */
    public boolean f12872F0;

    /* renamed from: G, reason: collision with root package name */
    public c f12873G;

    /* renamed from: G0, reason: collision with root package name */
    public boolean f12874G0;

    /* renamed from: H, reason: collision with root package name */
    public ColorStateList f12875H;

    /* renamed from: H0, reason: collision with root package name */
    public ValueAnimator f12876H0;

    /* renamed from: I, reason: collision with root package name */
    public ColorStateList f12877I;

    /* renamed from: I0, reason: collision with root package name */
    public boolean f12878I0;

    /* renamed from: J, reason: collision with root package name */
    public ColorStateList f12879J;

    /* renamed from: J0, reason: collision with root package name */
    public boolean f12880J0;

    /* renamed from: K, reason: collision with root package name */
    public ColorStateList f12881K;

    /* renamed from: K0, reason: collision with root package name */
    public boolean f12882K0;

    /* renamed from: L, reason: collision with root package name */
    public boolean f12883L;

    /* renamed from: M, reason: collision with root package name */
    public CharSequence f12884M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f12885N;

    /* renamed from: O, reason: collision with root package name */
    public j f12886O;

    /* renamed from: P, reason: collision with root package name */
    public j f12887P;

    /* renamed from: Q, reason: collision with root package name */
    public StateListDrawable f12888Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f12889R;

    /* renamed from: S, reason: collision with root package name */
    public j f12890S;

    /* renamed from: T, reason: collision with root package name */
    public j f12891T;

    /* renamed from: U, reason: collision with root package name */
    public p f12892U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f12893V;

    /* renamed from: W, reason: collision with root package name */
    public final int f12894W;

    /* renamed from: a0, reason: collision with root package name */
    public int f12895a0;

    /* renamed from: b, reason: collision with root package name */
    public final FrameLayout f12896b;

    /* renamed from: b0, reason: collision with root package name */
    public int f12897b0;

    /* renamed from: c0, reason: collision with root package name */
    public int f12898c0;

    /* renamed from: d0, reason: collision with root package name */
    public int f12899d0;

    /* renamed from: e, reason: collision with root package name */
    public final z f12900e;

    /* renamed from: e0, reason: collision with root package name */
    public int f12901e0;

    /* renamed from: f, reason: collision with root package name */
    public final q f12902f;

    /* renamed from: f0, reason: collision with root package name */
    public int f12903f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f12904g0;

    /* renamed from: h0, reason: collision with root package name */
    public final Rect f12905h0;

    /* renamed from: i0, reason: collision with root package name */
    public final Rect f12906i0;

    /* renamed from: j, reason: collision with root package name */
    public EditText f12907j;

    /* renamed from: j0, reason: collision with root package name */
    public final RectF f12908j0;

    /* renamed from: k0, reason: collision with root package name */
    public Typeface f12909k0;

    /* renamed from: l0, reason: collision with root package name */
    public ColorDrawable f12910l0;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f12911m;

    /* renamed from: m0, reason: collision with root package name */
    public int f12912m0;

    /* renamed from: n, reason: collision with root package name */
    public int f12913n;

    /* renamed from: n0, reason: collision with root package name */
    public final LinkedHashSet f12914n0;

    /* renamed from: o0, reason: collision with root package name */
    public ColorDrawable f12915o0;

    /* renamed from: p, reason: collision with root package name */
    public int f12916p;

    /* renamed from: p0, reason: collision with root package name */
    public int f12917p0;

    /* renamed from: q, reason: collision with root package name */
    public int f12918q;

    /* renamed from: q0, reason: collision with root package name */
    public Drawable f12919q0;

    /* renamed from: r, reason: collision with root package name */
    public int f12920r;

    /* renamed from: r0, reason: collision with root package name */
    public ColorStateList f12921r0;

    /* renamed from: s, reason: collision with root package name */
    public final u f12922s;

    /* renamed from: s0, reason: collision with root package name */
    public ColorStateList f12923s0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f12924t;

    /* renamed from: t0, reason: collision with root package name */
    public int f12925t0;

    /* renamed from: u, reason: collision with root package name */
    public int f12926u;

    /* renamed from: u0, reason: collision with root package name */
    public int f12927u0;

    /* renamed from: v, reason: collision with root package name */
    public boolean f12928v;

    /* renamed from: v0, reason: collision with root package name */
    public int f12929v0;

    /* renamed from: w, reason: collision with root package name */
    public E f12930w;

    /* renamed from: w0, reason: collision with root package name */
    public ColorStateList f12931w0;

    /* renamed from: x, reason: collision with root package name */
    public AppCompatTextView f12932x;

    /* renamed from: x0, reason: collision with root package name */
    public int f12933x0;

    /* renamed from: y, reason: collision with root package name */
    public int f12934y;

    /* renamed from: y0, reason: collision with root package name */
    public int f12935y0;

    /* renamed from: z, reason: collision with root package name */
    public int f12936z;

    /* renamed from: z0, reason: collision with root package name */
    public int f12937z0;

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f12907j;
        if (!(editText instanceof AutoCompleteTextView) || AbstractC0373c.c(editText)) {
            return this.f12886O;
        }
        int color = AbstractC1595a.getColor(this.f12907j, R.attr.colorControlHighlight);
        int i2 = this.f12895a0;
        int[][] iArr = f12860M0;
        if (i2 != 2) {
            if (i2 != 1) {
                return null;
            }
            j jVar = this.f12886O;
            int i7 = this.f12904g0;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{AbstractC1595a.layer(color, i7, 0.1f), i7}), jVar, jVar);
        }
        Context context = getContext();
        j jVar2 = this.f12886O;
        int color2 = AbstractC1595a.getColor(context, R.attr.colorSurface, "TextInputLayout");
        j jVar3 = new j(jVar2.getShapeAppearanceModel());
        int layer = AbstractC1595a.layer(color, color2, 0.1f);
        jVar3.setFillColor(new ColorStateList(iArr, new int[]{layer, 0}));
        jVar3.setTint(color2);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{layer, color2});
        j jVar4 = new j(jVar2.getShapeAppearanceModel());
        jVar4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, jVar3, jVar4), jVar2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.f12888Q == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.f12888Q = stateListDrawable;
            stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.f12888Q.addState(new int[0], f(false));
        }
        return this.f12888Q;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.f12887P == null) {
            this.f12887P = f(true);
        }
        return this.f12887P;
    }

    public static void k(ViewGroup viewGroup, boolean z6) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z6);
            if (childAt instanceof ViewGroup) {
                k((ViewGroup) childAt, z6);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.f12907j != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f12907j = editText;
        int i2 = this.f12913n;
        if (i2 != -1) {
            setMinEms(i2);
        } else {
            setMinWidth(this.f12918q);
        }
        int i7 = this.f12916p;
        if (i7 != -1) {
            setMaxEms(i7);
        } else {
            setMaxWidth(this.f12920r);
        }
        this.f12889R = false;
        i();
        setTextInputAccessibilityDelegate(new D(this));
        Typeface typeface = this.f12907j.getTypeface();
        a aVar = this.f12870E0;
        aVar.setTypefaces(typeface);
        aVar.setExpandedTextSize(this.f12907j.getTextSize());
        int i8 = Build.VERSION.SDK_INT;
        aVar.setExpandedLetterSpacing(this.f12907j.getLetterSpacing());
        int gravity = this.f12907j.getGravity();
        aVar.setCollapsedTextGravity((gravity & (-113)) | 48);
        aVar.setExpandedTextGravity(gravity);
        this.f12866C0 = AbstractC0181p0.getMinimumHeight(editText);
        this.f12907j.addTextChangedListener(new A(this, editText));
        if (this.f12921r0 == null) {
            this.f12921r0 = this.f12907j.getHintTextColors();
        }
        if (this.f12883L) {
            if (TextUtils.isEmpty(this.f12884M)) {
                CharSequence hint = this.f12907j.getHint();
                this.f12911m = hint;
                setHint(hint);
                this.f12907j.setHint((CharSequence) null);
            }
            this.f12885N = true;
        }
        if (i8 >= 29) {
            p();
        }
        if (this.f12932x != null) {
            n(this.f12907j.getText());
        }
        r();
        this.f12922s.b();
        this.f12900e.bringToFront();
        q qVar = this.f12902f;
        qVar.bringToFront();
        Iterator it = this.f12914n0.iterator();
        while (it.hasNext()) {
            ((n) ((F) it.next())).onEditTextAttached(this);
        }
        qVar.m();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        u(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f12884M)) {
            return;
        }
        this.f12884M = charSequence;
        this.f12870E0.setText(charSequence);
        if (this.f12868D0) {
            return;
        }
        j();
    }

    private void setPlaceholderTextEnabled(boolean z6) {
        if (this.f12863B == z6) {
            return;
        }
        if (z6) {
            AppCompatTextView appCompatTextView = this.f12865C;
            if (appCompatTextView != null) {
                this.f12896b.addView(appCompatTextView);
                this.f12865C.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.f12865C;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.f12865C = null;
        }
        this.f12863B = z6;
    }

    public final void a(float f3) {
        a aVar = this.f12870E0;
        if (aVar.getExpansionFraction() == f3) {
            return;
        }
        if (this.f12876H0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f12876H0 = valueAnimator;
            valueAnimator.setInterpolator(k.resolveThemeInterpolator(getContext(), R.attr.motionEasingEmphasizedInterpolator, AbstractC0951a.f16461b));
            this.f12876H0.setDuration(k.resolveThemeDuration(getContext(), R.attr.motionDurationMedium4, 167));
            this.f12876H0.addUpdateListener(new C(this));
        }
        this.f12876H0.setFloatValues(aVar.getExpansionFraction(), f3);
        this.f12876H0.start();
    }

    public void addOnEditTextAttachedListener(F f3) {
        this.f12914n0.add(f3);
        if (this.f12907j != null) {
            ((n) f3).onEditTextAttached(this);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i2, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f12896b;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        t();
        setEditText((EditText) view);
    }

    public final void b() {
        int i2;
        int i7;
        j jVar = this.f12886O;
        if (jVar == null) {
            return;
        }
        p shapeAppearanceModel = jVar.getShapeAppearanceModel();
        p pVar = this.f12892U;
        if (shapeAppearanceModel != pVar) {
            this.f12886O.setShapeAppearanceModel(pVar);
        }
        if (this.f12895a0 == 2 && (i2 = this.f12898c0) > -1 && (i7 = this.f12903f0) != 0) {
            this.f12886O.setStroke(i2, i7);
        }
        int i8 = this.f12904g0;
        if (this.f12895a0 == 1) {
            i8 = AbstractC1595a.layer(AbstractC1595a.getColor(this, R.attr.colorSurface, 0), this.f12904g0);
        }
        this.f12904g0 = i8;
        this.f12886O.setFillColor(ColorStateList.valueOf(i8));
        j jVar2 = this.f12890S;
        if (jVar2 != null && this.f12891T != null) {
            if (this.f12898c0 > -1 && this.f12903f0 != 0) {
                jVar2.setFillColor(this.f12907j.isFocused() ? ColorStateList.valueOf(this.f12925t0) : ColorStateList.valueOf(this.f12903f0));
                this.f12891T.setFillColor(ColorStateList.valueOf(this.f12903f0));
            }
            invalidate();
        }
        s();
    }

    public final int c() {
        float collapsedTextHeight;
        if (!this.f12883L) {
            return 0;
        }
        int i2 = this.f12895a0;
        a aVar = this.f12870E0;
        if (i2 == 0) {
            collapsedTextHeight = aVar.getCollapsedTextHeight();
        } else {
            if (i2 != 2) {
                return 0;
            }
            collapsedTextHeight = aVar.getCollapsedTextHeight() / 2.0f;
        }
        return (int) collapsedTextHeight;
    }

    public final c d() {
        c cVar = new c();
        cVar.setDuration(k.resolveThemeDuration(getContext(), R.attr.motionDurationShort2, 87));
        cVar.setInterpolator(k.resolveThemeInterpolator(getContext(), R.attr.motionEasingLinearInterpolator, AbstractC0951a.f16460a));
        return cVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        EditText editText = this.f12907j;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
            return;
        }
        if (this.f12911m != null) {
            boolean z6 = this.f12885N;
            this.f12885N = false;
            CharSequence hint = editText.getHint();
            this.f12907j.setHint(this.f12911m);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i2);
                return;
            } finally {
                this.f12907j.setHint(hint);
                this.f12885N = z6;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i2);
        onProvideAutofillVirtualStructure(viewStructure, i2);
        FrameLayout frameLayout = this.f12896b;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i7 = 0; i7 < frameLayout.getChildCount(); i7++) {
            View childAt = frameLayout.getChildAt(i7);
            ViewStructure newChild = viewStructure.newChild(i7);
            childAt.dispatchProvideAutofillStructure(newChild, i2);
            if (childAt == this.f12907j) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f12880J0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f12880J0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        j jVar;
        super.draw(canvas);
        boolean z6 = this.f12883L;
        a aVar = this.f12870E0;
        if (z6) {
            aVar.draw(canvas);
        }
        if (this.f12891T == null || (jVar = this.f12890S) == null) {
            return;
        }
        jVar.draw(canvas);
        if (this.f12907j.isFocused()) {
            Rect bounds = this.f12891T.getBounds();
            Rect bounds2 = this.f12890S.getBounds();
            float expansionFraction = aVar.getExpansionFraction();
            int centerX = bounds2.centerX();
            bounds.left = AbstractC0951a.lerp(centerX, bounds2.left, expansionFraction);
            bounds.right = AbstractC0951a.lerp(centerX, bounds2.right, expansionFraction);
            this.f12891T.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f12878I0) {
            return;
        }
        this.f12878I0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        a aVar = this.f12870E0;
        boolean state = aVar != null ? aVar.setState(drawableState) : false;
        if (this.f12907j != null) {
            u(AbstractC0181p0.isLaidOut(this) && isEnabled(), false);
        }
        r();
        x();
        if (state) {
            invalidate();
        }
        this.f12878I0 = false;
    }

    public final boolean e() {
        return this.f12883L && !TextUtils.isEmpty(this.f12884M) && (this.f12886O instanceof AbstractC0142h);
    }

    public final j f(boolean z6) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float f3 = z6 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f12907j;
        float popupElevation = editText instanceof x ? ((x) editText).getPopupElevation() : getResources().getDimensionPixelOffset(R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        p build = p.builder().setTopLeftCornerSize(f3).setTopRightCornerSize(f3).setBottomLeftCornerSize(dimensionPixelOffset).setBottomRightCornerSize(dimensionPixelOffset).build();
        EditText editText2 = this.f12907j;
        j createWithElevationOverlay = j.createWithElevationOverlay(getContext(), popupElevation, editText2 instanceof x ? ((x) editText2).getDropDownBackgroundTintList() : null);
        createWithElevationOverlay.setShapeAppearanceModel(build);
        createWithElevationOverlay.setPadding(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        return createWithElevationOverlay;
    }

    public final int g(int i2, boolean z6) {
        return ((z6 || getPrefixText() == null) ? (!z6 || getSuffixText() == null) ? this.f12907j.getCompoundPaddingLeft() : this.f12902f.c() : this.f12900e.a()) + i2;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f12907j;
        if (editText == null) {
            return super.getBaseline();
        }
        return c() + getPaddingTop() + editText.getBaseline();
    }

    public j getBoxBackground() {
        int i2 = this.f12895a0;
        if (i2 == 1 || i2 == 2) {
            return this.f12886O;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f12904g0;
    }

    public int getBoxBackgroundMode() {
        return this.f12895a0;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f12897b0;
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean isLayoutRtl = T.isLayoutRtl(this);
        RectF rectF = this.f12908j0;
        return isLayoutRtl ? this.f12892U.getBottomLeftCornerSize().getCornerSize(rectF) : this.f12892U.getBottomRightCornerSize().getCornerSize(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean isLayoutRtl = T.isLayoutRtl(this);
        RectF rectF = this.f12908j0;
        return isLayoutRtl ? this.f12892U.getBottomRightCornerSize().getCornerSize(rectF) : this.f12892U.getBottomLeftCornerSize().getCornerSize(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean isLayoutRtl = T.isLayoutRtl(this);
        RectF rectF = this.f12908j0;
        return isLayoutRtl ? this.f12892U.getTopLeftCornerSize().getCornerSize(rectF) : this.f12892U.getTopRightCornerSize().getCornerSize(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        boolean isLayoutRtl = T.isLayoutRtl(this);
        RectF rectF = this.f12908j0;
        return isLayoutRtl ? this.f12892U.getTopRightCornerSize().getCornerSize(rectF) : this.f12892U.getTopLeftCornerSize().getCornerSize(rectF);
    }

    public int getBoxStrokeColor() {
        return this.f12929v0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f12931w0;
    }

    public int getBoxStrokeWidth() {
        return this.f12899d0;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f12901e0;
    }

    public int getCounterMaxLength() {
        return this.f12926u;
    }

    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.f12924t && this.f12928v && (appCompatTextView = this.f12932x) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f12877I;
    }

    public ColorStateList getCounterTextColor() {
        return this.f12875H;
    }

    public ColorStateList getCursorColor() {
        return this.f12879J;
    }

    public ColorStateList getCursorErrorColor() {
        return this.f12881K;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f12921r0;
    }

    public EditText getEditText() {
        return this.f12907j;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f12902f.f1713p.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f12902f.f1713p.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.f12902f.f1719v;
    }

    public int getEndIconMode() {
        return this.f12902f.f1715r;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.f12902f.f1720w;
    }

    public CheckableImageButton getEndIconView() {
        return this.f12902f.f1713p;
    }

    public CharSequence getError() {
        u uVar = this.f12922s;
        if (uVar.f1752q) {
            return uVar.f1751p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f12922s.f1755t;
    }

    public CharSequence getErrorContentDescription() {
        return this.f12922s.f1754s;
    }

    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.f12922s.f1753r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.f12902f.f1709f.getDrawable();
    }

    public CharSequence getHelperText() {
        u uVar = this.f12922s;
        if (uVar.f1759x) {
            return uVar.f1758w;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.f12922s.f1760y;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.f12883L) {
            return this.f12884M;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.f12870E0.getCollapsedTextHeight();
    }

    public final int getHintCurrentCollapsedTextColor() {
        return this.f12870E0.getCurrentCollapsedTextColor();
    }

    public ColorStateList getHintTextColor() {
        return this.f12923s0;
    }

    public E getLengthCounter() {
        return this.f12930w;
    }

    public int getMaxEms() {
        return this.f12916p;
    }

    public int getMaxWidth() {
        return this.f12920r;
    }

    public int getMinEms() {
        return this.f12913n;
    }

    public int getMinWidth() {
        return this.f12918q;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f12902f.f1713p.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f12902f.f1713p.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f12863B) {
            return this.f12861A;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f12869E;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f12867D;
    }

    public CharSequence getPrefixText() {
        return this.f12900e.f1779f;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f12900e.f1778e.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f12900e.f1778e;
    }

    public p getShapeAppearanceModel() {
        return this.f12892U;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f12900e.f1780j.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f12900e.f1780j.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.f12900e.f1783p;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.f12900e.f1784q;
    }

    public CharSequence getSuffixText() {
        return this.f12902f.f1722y;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f12902f.f1723z.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f12902f.f1723z;
    }

    public Typeface getTypeface() {
        return this.f12909k0;
    }

    public final int h(int i2, boolean z6) {
        return i2 - ((z6 || getSuffixText() == null) ? (!z6 || getPrefixText() == null) ? this.f12907j.getCompoundPaddingRight() : this.f12900e.a() : this.f12902f.c());
    }

    public final void i() {
        int i2 = this.f12895a0;
        if (i2 == 0) {
            this.f12886O = null;
            this.f12890S = null;
            this.f12891T = null;
        } else if (i2 == 1) {
            this.f12886O = new j(this.f12892U);
            this.f12890S = new j();
            this.f12891T = new j();
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException(i.m(new StringBuilder(), this.f12895a0, " is illegal; only @BoxBackgroundMode constants are supported."));
            }
            if (!this.f12883L || (this.f12886O instanceof AbstractC0142h)) {
                this.f12886O = new j(this.f12892U);
            } else {
                p pVar = this.f12892U;
                int i7 = AbstractC0142h.f1675I;
                if (pVar == null) {
                    pVar = new p();
                }
                C0140f c0140f = new C0140f(pVar, new RectF());
                C0141g c0141g = new C0141g(c0140f);
                c0141g.f1676H = c0140f;
                this.f12886O = c0141g;
            }
            this.f12890S = null;
            this.f12891T = null;
        }
        s();
        x();
        if (this.f12895a0 == 1) {
            if (d.isFontScaleAtLeast2_0(getContext())) {
                this.f12897b0 = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (d.isFontScaleAtLeast1_3(getContext())) {
                this.f12897b0 = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f12907j != null && this.f12895a0 == 1) {
            if (d.isFontScaleAtLeast2_0(getContext())) {
                EditText editText = this.f12907j;
                AbstractC0181p0.setPaddingRelative(editText, AbstractC0181p0.getPaddingStart(editText), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), AbstractC0181p0.getPaddingEnd(this.f12907j), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (d.isFontScaleAtLeast1_3(getContext())) {
                EditText editText2 = this.f12907j;
                AbstractC0181p0.setPaddingRelative(editText2, AbstractC0181p0.getPaddingStart(editText2), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), AbstractC0181p0.getPaddingEnd(this.f12907j), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.f12895a0 != 0) {
            t();
        }
        EditText editText3 = this.f12907j;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i8 = this.f12895a0;
                if (i8 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i8 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    public boolean isEndIconVisible() {
        return this.f12902f.d();
    }

    public boolean isErrorEnabled() {
        return this.f12922s.f1752q;
    }

    public boolean isHelperTextEnabled() {
        return this.f12922s.f1759x;
    }

    public boolean isProvidingHint() {
        return this.f12885N;
    }

    public final void j() {
        if (e()) {
            int width = this.f12907j.getWidth();
            int gravity = this.f12907j.getGravity();
            a aVar = this.f12870E0;
            RectF rectF = this.f12908j0;
            aVar.getCollapsedTextActualBounds(rectF, width, gravity);
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            float f3 = rectF.left;
            float f7 = this.f12894W;
            rectF.left = f3 - f7;
            rectF.right += f7;
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f12898c0);
            AbstractC0142h abstractC0142h = (AbstractC0142h) this.f12886O;
            abstractC0142h.getClass();
            abstractC0142h.h(rectF.left, rectF.top, rectF.right, rectF.bottom);
        }
    }

    public final void l(AppCompatTextView appCompatTextView, int i2) {
        try {
            S.A.setTextAppearance(appCompatTextView, i2);
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        S.A.setTextAppearance(appCompatTextView, R.style.TextAppearance_AppCompat_Caption);
        appCompatTextView.setTextColor(h.getColor(getContext(), R.color.design_error));
    }

    public final boolean m() {
        u uVar = this.f12922s;
        return (uVar.f1750o != 1 || uVar.f1753r == null || TextUtils.isEmpty(uVar.f1751p)) ? false : true;
    }

    public final void n(Editable editable) {
        int a7 = ((g) this.f12930w).a(editable);
        boolean z6 = this.f12928v;
        int i2 = this.f12926u;
        if (i2 == -1) {
            this.f12932x.setText(String.valueOf(a7));
            this.f12932x.setContentDescription(null);
            this.f12928v = false;
        } else {
            this.f12928v = a7 > i2;
            Context context = getContext();
            this.f12932x.setContentDescription(context.getString(this.f12928v ? R.string.character_counter_overflowed_content_description : R.string.character_counter_content_description, Integer.valueOf(a7), Integer.valueOf(this.f12926u)));
            if (z6 != this.f12928v) {
                o();
            }
            this.f12932x.setText(K.c.getInstance().unicodeWrap(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(a7), Integer.valueOf(this.f12926u))));
        }
        if (this.f12907j == null || z6 == this.f12928v) {
            return;
        }
        u(false, false);
        x();
        r();
    }

    public final void o() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.f12932x;
        if (appCompatTextView != null) {
            l(appCompatTextView, this.f12928v ? this.f12934y : this.f12936z);
            if (!this.f12928v && (colorStateList2 = this.f12875H) != null) {
                this.f12932x.setTextColor(colorStateList2);
            }
            if (!this.f12928v || (colorStateList = this.f12877I) == null) {
                return;
            }
            this.f12932x.setTextColor(colorStateList);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f12870E0.maybeUpdateFontWeightAdjustment(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        int max;
        q qVar = this.f12902f;
        qVar.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z6 = false;
        this.f12882K0 = false;
        if (this.f12907j != null && this.f12907j.getMeasuredHeight() < (max = Math.max(qVar.getMeasuredHeight(), this.f12900e.getMeasuredHeight()))) {
            this.f12907j.setMinimumHeight(max);
            z6 = true;
        }
        boolean q6 = q();
        if (z6 || q6) {
            this.f12907j.post(new A3.d(this, 10));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        EditText editText = this.f12907j;
        if (editText != null) {
            Rect rect = this.f12905h0;
            AbstractC1833g.getDescendantRect(this, editText, rect);
            j jVar = this.f12890S;
            if (jVar != null) {
                int i10 = rect.bottom;
                jVar.setBounds(rect.left, i10 - this.f12899d0, rect.right, i10);
            }
            j jVar2 = this.f12891T;
            if (jVar2 != null) {
                int i11 = rect.bottom;
                jVar2.setBounds(rect.left, i11 - this.f12901e0, rect.right, i11);
            }
            if (this.f12883L) {
                float textSize = this.f12907j.getTextSize();
                a aVar = this.f12870E0;
                aVar.setExpandedTextSize(textSize);
                int gravity = this.f12907j.getGravity();
                aVar.setCollapsedTextGravity((gravity & (-113)) | 48);
                aVar.setExpandedTextGravity(gravity);
                if (this.f12907j == null) {
                    throw new IllegalStateException();
                }
                boolean isLayoutRtl = T.isLayoutRtl(this);
                int i12 = rect.bottom;
                Rect rect2 = this.f12906i0;
                rect2.bottom = i12;
                int i13 = this.f12895a0;
                if (i13 == 1) {
                    rect2.left = g(rect.left, isLayoutRtl);
                    rect2.top = rect.top + this.f12897b0;
                    rect2.right = h(rect.right, isLayoutRtl);
                } else if (i13 != 2) {
                    rect2.left = g(rect.left, isLayoutRtl);
                    rect2.top = getPaddingTop();
                    rect2.right = h(rect.right, isLayoutRtl);
                } else {
                    rect2.left = this.f12907j.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - c();
                    rect2.right = rect.right - this.f12907j.getPaddingRight();
                }
                aVar.setCollapsedBounds(rect2);
                if (this.f12907j == null) {
                    throw new IllegalStateException();
                }
                float expandedTextHeight = aVar.getExpandedTextHeight();
                rect2.left = this.f12907j.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.f12895a0 != 1 || this.f12907j.getMinLines() > 1) ? rect.top + this.f12907j.getCompoundPaddingTop() : (int) (rect.centerY() - (expandedTextHeight / 2.0f));
                rect2.right = rect.right - this.f12907j.getCompoundPaddingRight();
                rect2.bottom = (this.f12895a0 != 1 || this.f12907j.getMinLines() > 1) ? rect.bottom - this.f12907j.getCompoundPaddingBottom() : (int) (rect2.top + expandedTextHeight);
                aVar.setExpandedBounds(rect2);
                aVar.recalculate();
                if (!e() || this.f12868D0) {
                    return;
                }
                j();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        EditText editText;
        super.onMeasure(i2, i7);
        boolean z6 = this.f12882K0;
        q qVar = this.f12902f;
        if (!z6) {
            qVar.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f12882K0 = true;
        }
        if (this.f12865C != null && (editText = this.f12907j) != null) {
            this.f12865C.setGravity(editText.getGravity());
            this.f12865C.setPadding(this.f12907j.getCompoundPaddingLeft(), this.f12907j.getCompoundPaddingTop(), this.f12907j.getCompoundPaddingRight(), this.f12907j.getCompoundPaddingBottom());
        }
        qVar.m();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof H)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        H h7 = (H) parcelable;
        super.onRestoreInstanceState(h7.getSuperState());
        setError(h7.f1658f);
        if (h7.f1659j) {
            post(new B(this));
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        boolean z6 = i2 == 1;
        if (z6 != this.f12893V) {
            InterfaceC0104c topLeftCornerSize = this.f12892U.getTopLeftCornerSize();
            RectF rectF = this.f12908j0;
            float cornerSize = topLeftCornerSize.getCornerSize(rectF);
            float cornerSize2 = this.f12892U.getTopRightCornerSize().getCornerSize(rectF);
            p build = p.builder().setTopLeftCorner(this.f12892U.getTopRightCorner()).setTopRightCorner(this.f12892U.getTopLeftCorner()).setBottomLeftCorner(this.f12892U.getBottomRightCorner()).setBottomRightCorner(this.f12892U.getBottomLeftCorner()).setTopLeftCornerSize(cornerSize2).setTopRightCornerSize(cornerSize).setBottomLeftCornerSize(this.f12892U.getBottomRightCornerSize().getCornerSize(rectF)).setBottomRightCornerSize(this.f12892U.getBottomLeftCornerSize().getCornerSize(rectF)).build();
            this.f12893V = z6;
            setShapeAppearanceModel(build);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        H h7 = new H(super.onSaveInstanceState());
        if (m()) {
            h7.f1658f = getError();
        }
        q qVar = this.f12902f;
        h7.f1659j = qVar.f1715r != 0 && qVar.f1713p.isChecked();
        return h7;
    }

    public final void p() {
        Drawable textCursorDrawable;
        Drawable textCursorDrawable2;
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f12879J;
        if (colorStateList2 == null) {
            colorStateList2 = AbstractC1595a.getColorStateListOrNull(getContext(), R.attr.colorControlActivated);
        }
        EditText editText = this.f12907j;
        if (editText != null) {
            textCursorDrawable = editText.getTextCursorDrawable();
            if (textCursorDrawable == null) {
                return;
            }
            textCursorDrawable2 = this.f12907j.getTextCursorDrawable();
            Drawable mutate = E.c.wrap(textCursorDrawable2).mutate();
            if ((m() || (this.f12932x != null && this.f12928v)) && (colorStateList = this.f12881K) != null) {
                colorStateList2 = colorStateList;
            }
            E.c.setTintList(mutate, colorStateList2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean q() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.q():boolean");
    }

    public final void r() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.f12907j;
        if (editText == null || this.f12895a0 != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (P0.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (m()) {
            background.setColorFilter(I.getPorterDuffColorFilter(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f12928v && (appCompatTextView = this.f12932x) != null) {
            background.setColorFilter(I.getPorterDuffColorFilter(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            E.c.clearColorFilter(background);
            this.f12907j.refreshDrawableState();
        }
    }

    public void refreshStartIconDrawableState() {
        z zVar = this.f12900e;
        W.g(zVar.f1777b, zVar.f1780j, zVar.f1781m);
    }

    public final void s() {
        EditText editText = this.f12907j;
        if (editText == null || this.f12886O == null) {
            return;
        }
        if ((this.f12889R || editText.getBackground() == null) && this.f12895a0 != 0) {
            AbstractC0181p0.setBackground(this.f12907j, getEditTextBoxBackground());
            this.f12889R = true;
        }
    }

    public void setBoxBackgroundColor(int i2) {
        if (this.f12904g0 != i2) {
            this.f12904g0 = i2;
            this.f12933x0 = i2;
            this.f12937z0 = i2;
            this.f12862A0 = i2;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i2) {
        setBoxBackgroundColor(h.getColor(getContext(), i2));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f12933x0 = defaultColor;
        this.f12904g0 = defaultColor;
        this.f12935y0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f12937z0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.f12862A0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 == this.f12895a0) {
            return;
        }
        this.f12895a0 = i2;
        if (this.f12907j != null) {
            i();
        }
    }

    public void setBoxCollapsedPaddingTop(int i2) {
        this.f12897b0 = i2;
    }

    public void setBoxCornerFamily(int i2) {
        this.f12892U = this.f12892U.toBuilder().setTopLeftCorner(i2, this.f12892U.getTopLeftCornerSize()).setTopRightCorner(i2, this.f12892U.getTopRightCornerSize()).setBottomLeftCorner(i2, this.f12892U.getBottomLeftCornerSize()).setBottomRightCorner(i2, this.f12892U.getBottomRightCornerSize()).build();
        b();
    }

    public void setBoxStrokeColor(int i2) {
        if (this.f12929v0 != i2) {
            this.f12929v0 = i2;
            x();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f12925t0 = colorStateList.getDefaultColor();
            this.f12864B0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f12927u0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.f12929v0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.f12929v0 != colorStateList.getDefaultColor()) {
            this.f12929v0 = colorStateList.getDefaultColor();
        }
        x();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f12931w0 != colorStateList) {
            this.f12931w0 = colorStateList;
            x();
        }
    }

    public void setBoxStrokeWidth(int i2) {
        this.f12899d0 = i2;
        x();
    }

    public void setBoxStrokeWidthFocused(int i2) {
        this.f12901e0 = i2;
        x();
    }

    public void setBoxStrokeWidthFocusedResource(int i2) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i2));
    }

    public void setBoxStrokeWidthResource(int i2) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i2));
    }

    public void setCounterEnabled(boolean z6) {
        if (this.f12924t != z6) {
            u uVar = this.f12922s;
            if (z6) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f12932x = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.f12909k0;
                if (typeface != null) {
                    this.f12932x.setTypeface(typeface);
                }
                this.f12932x.setMaxLines(1);
                uVar.a(this.f12932x, 2);
                AbstractC0193w.setMarginStart((ViewGroup.MarginLayoutParams) this.f12932x.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                o();
                if (this.f12932x != null) {
                    EditText editText = this.f12907j;
                    n(editText != null ? editText.getText() : null);
                }
            } else {
                uVar.g(this.f12932x, 2);
                this.f12932x = null;
            }
            this.f12924t = z6;
        }
    }

    public void setCounterMaxLength(int i2) {
        if (this.f12926u != i2) {
            if (i2 > 0) {
                this.f12926u = i2;
            } else {
                this.f12926u = -1;
            }
            if (!this.f12924t || this.f12932x == null) {
                return;
            }
            EditText editText = this.f12907j;
            n(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i2) {
        if (this.f12934y != i2) {
            this.f12934y = i2;
            o();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f12877I != colorStateList) {
            this.f12877I = colorStateList;
            o();
        }
    }

    public void setCounterTextAppearance(int i2) {
        if (this.f12936z != i2) {
            this.f12936z = i2;
            o();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f12875H != colorStateList) {
            this.f12875H = colorStateList;
            o();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.f12879J != colorStateList) {
            this.f12879J = colorStateList;
            p();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.f12881K != colorStateList) {
            this.f12881K = colorStateList;
            if (m() || (this.f12932x != null && this.f12928v)) {
                p();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f12921r0 = colorStateList;
        this.f12923s0 = colorStateList;
        if (this.f12907j != null) {
            u(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        k(this, z6);
        super.setEnabled(z6);
    }

    public void setEndIconActivated(boolean z6) {
        this.f12902f.f1713p.setActivated(z6);
    }

    public void setEndIconCheckable(boolean z6) {
        this.f12902f.f1713p.setCheckable(z6);
    }

    public void setEndIconContentDescription(int i2) {
        q qVar = this.f12902f;
        CharSequence text = i2 != 0 ? qVar.getResources().getText(i2) : null;
        CheckableImageButton checkableImageButton = qVar.f1713p;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(int i2) {
        q qVar = this.f12902f;
        Drawable drawable = i2 != 0 ? AbstractC0876a.getDrawable(qVar.getContext(), i2) : null;
        CheckableImageButton checkableImageButton = qVar.f1713p;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = qVar.f1717t;
            PorterDuff.Mode mode = qVar.f1718u;
            TextInputLayout textInputLayout = qVar.f1707b;
            W.a(textInputLayout, checkableImageButton, colorStateList, mode);
            W.g(textInputLayout, checkableImageButton, qVar.f1717t);
        }
    }

    public void setEndIconMinSize(int i2) {
        q qVar = this.f12902f;
        if (i2 < 0) {
            qVar.getClass();
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i2 != qVar.f1719v) {
            qVar.f1719v = i2;
            CheckableImageButton checkableImageButton = qVar.f1713p;
            checkableImageButton.setMinimumWidth(i2);
            checkableImageButton.setMinimumHeight(i2);
            CheckableImageButton checkableImageButton2 = qVar.f1709f;
            checkableImageButton2.setMinimumWidth(i2);
            checkableImageButton2.setMinimumHeight(i2);
        }
    }

    public void setEndIconMode(int i2) {
        this.f12902f.g(i2);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        q qVar = this.f12902f;
        View.OnLongClickListener onLongClickListener = qVar.f1721x;
        CheckableImageButton checkableImageButton = qVar.f1713p;
        checkableImageButton.setOnClickListener(onClickListener);
        W.h(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        q qVar = this.f12902f;
        qVar.f1721x = onLongClickListener;
        CheckableImageButton checkableImageButton = qVar.f1713p;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        W.h(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        q qVar = this.f12902f;
        qVar.f1720w = scaleType;
        qVar.f1713p.setScaleType(scaleType);
        qVar.f1709f.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        q qVar = this.f12902f;
        if (qVar.f1717t != colorStateList) {
            qVar.f1717t = colorStateList;
            W.a(qVar.f1707b, qVar.f1713p, colorStateList, qVar.f1718u);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        q qVar = this.f12902f;
        if (qVar.f1718u != mode) {
            qVar.f1718u = mode;
            W.a(qVar.f1707b, qVar.f1713p, qVar.f1717t, mode);
        }
    }

    public void setEndIconVisible(boolean z6) {
        this.f12902f.h(z6);
    }

    public void setError(CharSequence charSequence) {
        u uVar = this.f12922s;
        if (!uVar.f1752q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            uVar.f();
            return;
        }
        uVar.c();
        uVar.f1751p = charSequence;
        uVar.f1753r.setText(charSequence);
        int i2 = uVar.f1749n;
        if (i2 != 1) {
            uVar.f1750o = 1;
        }
        uVar.i(i2, uVar.f1750o, uVar.h(uVar.f1753r, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i2) {
        u uVar = this.f12922s;
        uVar.f1755t = i2;
        AppCompatTextView appCompatTextView = uVar.f1753r;
        if (appCompatTextView != null) {
            AbstractC0181p0.setAccessibilityLiveRegion(appCompatTextView, i2);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        u uVar = this.f12922s;
        uVar.f1754s = charSequence;
        AppCompatTextView appCompatTextView = uVar.f1753r;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z6) {
        u uVar = this.f12922s;
        if (uVar.f1752q == z6) {
            return;
        }
        uVar.c();
        TextInputLayout textInputLayout = uVar.f1743h;
        if (z6) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(uVar.f1742g);
            uVar.f1753r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            uVar.f1753r.setTextAlignment(5);
            Typeface typeface = uVar.f1735B;
            if (typeface != null) {
                uVar.f1753r.setTypeface(typeface);
            }
            int i2 = uVar.f1756u;
            uVar.f1756u = i2;
            AppCompatTextView appCompatTextView2 = uVar.f1753r;
            if (appCompatTextView2 != null) {
                textInputLayout.l(appCompatTextView2, i2);
            }
            ColorStateList colorStateList = uVar.f1757v;
            uVar.f1757v = colorStateList;
            AppCompatTextView appCompatTextView3 = uVar.f1753r;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = uVar.f1754s;
            uVar.f1754s = charSequence;
            AppCompatTextView appCompatTextView4 = uVar.f1753r;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i7 = uVar.f1755t;
            uVar.f1755t = i7;
            AppCompatTextView appCompatTextView5 = uVar.f1753r;
            if (appCompatTextView5 != null) {
                AbstractC0181p0.setAccessibilityLiveRegion(appCompatTextView5, i7);
            }
            uVar.f1753r.setVisibility(4);
            uVar.a(uVar.f1753r, 0);
        } else {
            uVar.f();
            uVar.g(uVar.f1753r, 0);
            uVar.f1753r = null;
            textInputLayout.r();
            textInputLayout.x();
        }
        uVar.f1752q = z6;
    }

    public void setErrorIconDrawable(int i2) {
        q qVar = this.f12902f;
        qVar.i(i2 != 0 ? AbstractC0876a.getDrawable(qVar.getContext(), i2) : null);
        W.g(qVar.f1707b, qVar.f1709f, qVar.f1710j);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        q qVar = this.f12902f;
        CheckableImageButton checkableImageButton = qVar.f1709f;
        View.OnLongClickListener onLongClickListener = qVar.f1712n;
        checkableImageButton.setOnClickListener(onClickListener);
        W.h(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        q qVar = this.f12902f;
        qVar.f1712n = onLongClickListener;
        CheckableImageButton checkableImageButton = qVar.f1709f;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        W.h(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        q qVar = this.f12902f;
        if (qVar.f1710j != colorStateList) {
            qVar.f1710j = colorStateList;
            W.a(qVar.f1707b, qVar.f1709f, colorStateList, qVar.f1711m);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        q qVar = this.f12902f;
        if (qVar.f1711m != mode) {
            qVar.f1711m = mode;
            W.a(qVar.f1707b, qVar.f1709f, qVar.f1710j, mode);
        }
    }

    public void setErrorTextAppearance(int i2) {
        u uVar = this.f12922s;
        uVar.f1756u = i2;
        AppCompatTextView appCompatTextView = uVar.f1753r;
        if (appCompatTextView != null) {
            uVar.f1743h.l(appCompatTextView, i2);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        u uVar = this.f12922s;
        uVar.f1757v = colorStateList;
        AppCompatTextView appCompatTextView = uVar.f1753r;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z6) {
        if (this.f12872F0 != z6) {
            this.f12872F0 = z6;
            u(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (isHelperTextEnabled()) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!isHelperTextEnabled()) {
            setHelperTextEnabled(true);
        }
        u uVar = this.f12922s;
        uVar.c();
        uVar.f1758w = charSequence;
        uVar.f1760y.setText(charSequence);
        int i2 = uVar.f1749n;
        if (i2 != 2) {
            uVar.f1750o = 2;
        }
        uVar.i(i2, uVar.f1750o, uVar.h(uVar.f1760y, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        u uVar = this.f12922s;
        uVar.f1734A = colorStateList;
        AppCompatTextView appCompatTextView = uVar.f1760y;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z6) {
        u uVar = this.f12922s;
        if (uVar.f1759x == z6) {
            return;
        }
        uVar.c();
        if (z6) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(uVar.f1742g);
            uVar.f1760y = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            uVar.f1760y.setTextAlignment(5);
            Typeface typeface = uVar.f1735B;
            if (typeface != null) {
                uVar.f1760y.setTypeface(typeface);
            }
            uVar.f1760y.setVisibility(4);
            AbstractC0181p0.setAccessibilityLiveRegion(uVar.f1760y, 1);
            int i2 = uVar.f1761z;
            uVar.f1761z = i2;
            AppCompatTextView appCompatTextView2 = uVar.f1760y;
            if (appCompatTextView2 != null) {
                S.A.setTextAppearance(appCompatTextView2, i2);
            }
            ColorStateList colorStateList = uVar.f1734A;
            uVar.f1734A = colorStateList;
            AppCompatTextView appCompatTextView3 = uVar.f1760y;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            uVar.a(uVar.f1760y, 1);
            uVar.f1760y.setAccessibilityDelegate(new t(uVar));
        } else {
            uVar.c();
            int i7 = uVar.f1749n;
            if (i7 == 2) {
                uVar.f1750o = 0;
            }
            uVar.i(i7, uVar.f1750o, uVar.h(uVar.f1760y, ""));
            uVar.g(uVar.f1760y, 1);
            uVar.f1760y = null;
            TextInputLayout textInputLayout = uVar.f1743h;
            textInputLayout.r();
            textInputLayout.x();
        }
        uVar.f1759x = z6;
    }

    public void setHelperTextTextAppearance(int i2) {
        u uVar = this.f12922s;
        uVar.f1761z = i2;
        AppCompatTextView appCompatTextView = uVar.f1760y;
        if (appCompatTextView != null) {
            S.A.setTextAppearance(appCompatTextView, i2);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.f12883L) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z6) {
        this.f12874G0 = z6;
    }

    public void setHintEnabled(boolean z6) {
        if (z6 != this.f12883L) {
            this.f12883L = z6;
            if (z6) {
                CharSequence hint = this.f12907j.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f12884M)) {
                        setHint(hint);
                    }
                    this.f12907j.setHint((CharSequence) null);
                }
                this.f12885N = true;
            } else {
                this.f12885N = false;
                if (!TextUtils.isEmpty(this.f12884M) && TextUtils.isEmpty(this.f12907j.getHint())) {
                    this.f12907j.setHint(this.f12884M);
                }
                setHintInternal(null);
            }
            if (this.f12907j != null) {
                t();
            }
        }
    }

    public void setHintTextAppearance(int i2) {
        a aVar = this.f12870E0;
        aVar.setCollapsedTextAppearance(i2);
        this.f12923s0 = aVar.getCollapsedTextColor();
        if (this.f12907j != null) {
            u(false, false);
            t();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f12923s0 != colorStateList) {
            if (this.f12921r0 == null) {
                this.f12870E0.setCollapsedTextColor(colorStateList);
            }
            this.f12923s0 = colorStateList;
            if (this.f12907j != null) {
                u(false, false);
            }
        }
    }

    public void setLengthCounter(E e3) {
        this.f12930w = e3;
    }

    public void setMaxEms(int i2) {
        this.f12916p = i2;
        EditText editText = this.f12907j;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMaxEms(i2);
    }

    public void setMaxWidth(int i2) {
        this.f12920r = i2;
        EditText editText = this.f12907j;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMaxWidth(i2);
    }

    public void setMaxWidthResource(int i2) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i2));
    }

    public void setMinEms(int i2) {
        this.f12913n = i2;
        EditText editText = this.f12907j;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMinEms(i2);
    }

    public void setMinWidth(int i2) {
        this.f12918q = i2;
        EditText editText = this.f12907j;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMinWidth(i2);
    }

    public void setMinWidthResource(int i2) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i2));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i2) {
        q qVar = this.f12902f;
        qVar.f1713p.setContentDescription(i2 != 0 ? qVar.getResources().getText(i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i2) {
        q qVar = this.f12902f;
        qVar.f1713p.setImageDrawable(i2 != 0 ? AbstractC0876a.getDrawable(qVar.getContext(), i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z6) {
        q qVar = this.f12902f;
        if (z6 && qVar.f1715r != 1) {
            qVar.g(1);
        } else if (z6) {
            qVar.getClass();
        } else {
            qVar.g(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        q qVar = this.f12902f;
        qVar.f1717t = colorStateList;
        W.a(qVar.f1707b, qVar.f1713p, colorStateList, qVar.f1718u);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        q qVar = this.f12902f;
        qVar.f1718u = mode;
        W.a(qVar.f1707b, qVar.f1713p, qVar.f1717t, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f12865C == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f12865C = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            AbstractC0181p0.setImportantForAccessibility(this.f12865C, 2);
            c d7 = d();
            this.f12871F = d7;
            d7.setStartDelay(67L);
            this.f12873G = d();
            setPlaceholderTextAppearance(this.f12869E);
            setPlaceholderTextColor(this.f12867D);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f12863B) {
                setPlaceholderTextEnabled(true);
            }
            this.f12861A = charSequence;
        }
        EditText editText = this.f12907j;
        v(editText == null ? null : editText.getText());
    }

    public void setPlaceholderTextAppearance(int i2) {
        this.f12869E = i2;
        AppCompatTextView appCompatTextView = this.f12865C;
        if (appCompatTextView != null) {
            S.A.setTextAppearance(appCompatTextView, i2);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f12867D != colorStateList) {
            this.f12867D = colorStateList;
            AppCompatTextView appCompatTextView = this.f12865C;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        z zVar = this.f12900e;
        zVar.getClass();
        zVar.f1779f = TextUtils.isEmpty(charSequence) ? null : charSequence;
        zVar.f1778e.setText(charSequence);
        zVar.e();
    }

    public void setPrefixTextAppearance(int i2) {
        S.A.setTextAppearance(this.f12900e.f1778e, i2);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f12900e.f1778e.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(p pVar) {
        j jVar = this.f12886O;
        if (jVar == null || jVar.getShapeAppearanceModel() == pVar) {
            return;
        }
        this.f12892U = pVar;
        b();
    }

    public void setStartIconCheckable(boolean z6) {
        this.f12900e.f1780j.setCheckable(z6);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f12900e.f1780j;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i2) {
        setStartIconDrawable(i2 != 0 ? AbstractC0876a.getDrawable(getContext(), i2) : null);
    }

    public void setStartIconMinSize(int i2) {
        z zVar = this.f12900e;
        if (i2 < 0) {
            zVar.getClass();
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i2 != zVar.f1783p) {
            zVar.f1783p = i2;
            CheckableImageButton checkableImageButton = zVar.f1780j;
            checkableImageButton.setMinimumWidth(i2);
            checkableImageButton.setMinimumHeight(i2);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        z zVar = this.f12900e;
        View.OnLongClickListener onLongClickListener = zVar.f1785r;
        CheckableImageButton checkableImageButton = zVar.f1780j;
        checkableImageButton.setOnClickListener(onClickListener);
        W.h(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        z zVar = this.f12900e;
        zVar.f1785r = onLongClickListener;
        CheckableImageButton checkableImageButton = zVar.f1780j;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        W.h(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        z zVar = this.f12900e;
        zVar.f1784q = scaleType;
        zVar.f1780j.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        z zVar = this.f12900e;
        if (zVar.f1781m != colorStateList) {
            zVar.f1781m = colorStateList;
            W.a(zVar.f1777b, zVar.f1780j, colorStateList, zVar.f1782n);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        z zVar = this.f12900e;
        if (zVar.f1782n != mode) {
            zVar.f1782n = mode;
            W.a(zVar.f1777b, zVar.f1780j, zVar.f1781m, mode);
        }
    }

    public void setStartIconVisible(boolean z6) {
        this.f12900e.c(z6);
    }

    public void setSuffixText(CharSequence charSequence) {
        q qVar = this.f12902f;
        qVar.getClass();
        qVar.f1722y = TextUtils.isEmpty(charSequence) ? null : charSequence;
        qVar.f1723z.setText(charSequence);
        qVar.n();
    }

    public void setSuffixTextAppearance(int i2) {
        S.A.setTextAppearance(this.f12902f.f1723z, i2);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f12902f.f1723z.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(D d7) {
        EditText editText = this.f12907j;
        if (editText != null) {
            AbstractC0181p0.setAccessibilityDelegate(editText, d7);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f12909k0) {
            this.f12909k0 = typeface;
            this.f12870E0.setTypefaces(typeface);
            u uVar = this.f12922s;
            if (typeface != uVar.f1735B) {
                uVar.f1735B = typeface;
                AppCompatTextView appCompatTextView = uVar.f1753r;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = uVar.f1760y;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.f12932x;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        if (this.f12895a0 != 1) {
            FrameLayout frameLayout = this.f12896b;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int c7 = c();
            if (c7 != layoutParams.topMargin) {
                layoutParams.topMargin = c7;
                frameLayout.requestLayout();
            }
        }
    }

    public final void u(boolean z6, boolean z7) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f12907j;
        boolean z8 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f12907j;
        boolean z9 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.f12921r0;
        a aVar = this.f12870E0;
        if (colorStateList2 != null) {
            aVar.setCollapsedAndExpandedTextColor(colorStateList2);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f12921r0;
            aVar.setCollapsedAndExpandedTextColor(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f12864B0) : this.f12864B0));
        } else if (m()) {
            AppCompatTextView appCompatTextView2 = this.f12922s.f1753r;
            aVar.setCollapsedAndExpandedTextColor(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.f12928v && (appCompatTextView = this.f12932x) != null) {
            aVar.setCollapsedAndExpandedTextColor(appCompatTextView.getTextColors());
        } else if (z9 && (colorStateList = this.f12923s0) != null) {
            aVar.setCollapsedTextColor(colorStateList);
        }
        q qVar = this.f12902f;
        z zVar = this.f12900e;
        if (z8 || !this.f12872F0 || (isEnabled() && z9)) {
            if (z7 || this.f12868D0) {
                ValueAnimator valueAnimator = this.f12876H0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f12876H0.cancel();
                }
                if (z6 && this.f12874G0) {
                    a(1.0f);
                } else {
                    aVar.setExpansionFraction(1.0f);
                }
                this.f12868D0 = false;
                if (e()) {
                    j();
                }
                EditText editText3 = this.f12907j;
                v(editText3 != null ? editText3.getText() : null);
                zVar.f1786s = false;
                zVar.e();
                qVar.f1702A = false;
                qVar.n();
                return;
            }
            return;
        }
        if (z7 || !this.f12868D0) {
            ValueAnimator valueAnimator2 = this.f12876H0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f12876H0.cancel();
            }
            if (z6 && this.f12874G0) {
                a(0.0f);
            } else {
                aVar.setExpansionFraction(0.0f);
            }
            if (e() && !((AbstractC0142h) this.f12886O).f1676H.f1674q.isEmpty() && e()) {
                ((AbstractC0142h) this.f12886O).h(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f12868D0 = true;
            AppCompatTextView appCompatTextView3 = this.f12865C;
            if (appCompatTextView3 != null && this.f12863B) {
                appCompatTextView3.setText((CharSequence) null);
                AbstractC1798B.beginDelayedTransition(this.f12896b, this.f12873G);
                this.f12865C.setVisibility(4);
            }
            zVar.f1786s = true;
            zVar.e();
            qVar.f1702A = true;
            qVar.n();
        }
    }

    public final void v(Editable editable) {
        int a7 = ((g) this.f12930w).a(editable);
        FrameLayout frameLayout = this.f12896b;
        if (a7 != 0 || this.f12868D0) {
            AppCompatTextView appCompatTextView = this.f12865C;
            if (appCompatTextView == null || !this.f12863B) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            AbstractC1798B.beginDelayedTransition(frameLayout, this.f12873G);
            this.f12865C.setVisibility(4);
            return;
        }
        if (this.f12865C == null || !this.f12863B || TextUtils.isEmpty(this.f12861A)) {
            return;
        }
        this.f12865C.setText(this.f12861A);
        AbstractC1798B.beginDelayedTransition(frameLayout, this.f12871F);
        this.f12865C.setVisibility(0);
        this.f12865C.bringToFront();
        announceForAccessibility(this.f12861A);
    }

    public final void w(boolean z6, boolean z7) {
        int defaultColor = this.f12931w0.getDefaultColor();
        int colorForState = this.f12931w0.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f12931w0.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z6) {
            this.f12903f0 = colorForState2;
        } else if (z7) {
            this.f12903f0 = colorForState;
        } else {
            this.f12903f0 = defaultColor;
        }
    }

    public final void x() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.f12886O == null || this.f12895a0 == 0) {
            return;
        }
        boolean z6 = false;
        boolean z7 = isFocused() || ((editText2 = this.f12907j) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f12907j) != null && editText.isHovered())) {
            z6 = true;
        }
        if (!isEnabled()) {
            this.f12903f0 = this.f12864B0;
        } else if (m()) {
            if (this.f12931w0 != null) {
                w(z7, z6);
            } else {
                this.f12903f0 = getErrorCurrentTextColors();
            }
        } else if (!this.f12928v || (appCompatTextView = this.f12932x) == null) {
            if (z7) {
                this.f12903f0 = this.f12929v0;
            } else if (z6) {
                this.f12903f0 = this.f12927u0;
            } else {
                this.f12903f0 = this.f12925t0;
            }
        } else if (this.f12931w0 != null) {
            w(z7, z6);
        } else {
            this.f12903f0 = appCompatTextView.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            p();
        }
        q qVar = this.f12902f;
        qVar.l();
        CheckableImageButton checkableImageButton = qVar.f1709f;
        ColorStateList colorStateList = qVar.f1710j;
        TextInputLayout textInputLayout = qVar.f1707b;
        W.g(textInputLayout, checkableImageButton, colorStateList);
        ColorStateList colorStateList2 = qVar.f1717t;
        CheckableImageButton checkableImageButton2 = qVar.f1713p;
        W.g(textInputLayout, checkableImageButton2, colorStateList2);
        if (qVar.b() instanceof l) {
            if (!textInputLayout.m() || checkableImageButton2.getDrawable() == null) {
                W.a(textInputLayout, checkableImageButton2, qVar.f1717t, qVar.f1718u);
            } else {
                Drawable mutate = E.c.wrap(checkableImageButton2.getDrawable()).mutate();
                E.c.setTint(mutate, textInputLayout.getErrorCurrentTextColors());
                checkableImageButton2.setImageDrawable(mutate);
            }
        }
        refreshStartIconDrawableState();
        if (this.f12895a0 == 2) {
            int i2 = this.f12898c0;
            if (z7 && isEnabled()) {
                this.f12898c0 = this.f12901e0;
            } else {
                this.f12898c0 = this.f12899d0;
            }
            if (this.f12898c0 != i2 && e() && !this.f12868D0) {
                if (e()) {
                    ((AbstractC0142h) this.f12886O).h(0.0f, 0.0f, 0.0f, 0.0f);
                }
                j();
            }
        }
        if (this.f12895a0 == 1) {
            if (!isEnabled()) {
                this.f12904g0 = this.f12935y0;
            } else if (z6 && !z7) {
                this.f12904g0 = this.f12862A0;
            } else if (z7) {
                this.f12904g0 = this.f12937z0;
            } else {
                this.f12904g0 = this.f12933x0;
            }
        }
        b();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputLayout(android.content.Context r17, android.util.AttributeSet r18, int r19) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f12900e.b(drawable);
    }

    public void setHint(int i2) {
        setHint(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setStartIconContentDescription(int i2) {
        setStartIconContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f12902f.f1713p.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f12902f.f1713p.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f12902f.i(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f12902f.f1713p;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        q qVar = this.f12902f;
        CheckableImageButton checkableImageButton = qVar.f1713p;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = qVar.f1717t;
            PorterDuff.Mode mode = qVar.f1718u;
            TextInputLayout textInputLayout = qVar.f1707b;
            W.a(textInputLayout, checkableImageButton, colorStateList, mode);
            W.g(textInputLayout, checkableImageButton, qVar.f1717t);
        }
    }
}
