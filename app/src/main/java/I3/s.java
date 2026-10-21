package I3;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.google.android.material.R;
import h0.C0959b;
import r3.AbstractC1595a;
import x3.T;

/* loaded from: classes2.dex */
public abstract class s extends FrameLayout {

    /* renamed from: u, reason: collision with root package name */
    public static final r f1336u = new r();

    /* renamed from: b, reason: collision with root package name */
    public t f1337b;

    /* renamed from: e, reason: collision with root package name */
    public final G3.p f1338e;

    /* renamed from: f, reason: collision with root package name */
    public int f1339f;

    /* renamed from: j, reason: collision with root package name */
    public final float f1340j;

    /* renamed from: m, reason: collision with root package name */
    public final float f1341m;

    /* renamed from: n, reason: collision with root package name */
    public final int f1342n;

    /* renamed from: p, reason: collision with root package name */
    public final int f1343p;

    /* renamed from: q, reason: collision with root package name */
    public ColorStateList f1344q;

    /* renamed from: r, reason: collision with root package name */
    public PorterDuff.Mode f1345r;

    /* renamed from: s, reason: collision with root package name */
    public Rect f1346s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1347t;

    /* JADX WARN: Multi-variable type inference failed */
    public s(Context context, AttributeSet attributeSet) {
        super(M3.a.wrap(context, attributeSet, 0, 0), attributeSet);
        GradientDrawable gradientDrawable;
        Drawable wrap;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
        if (obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_elevation)) {
            AbstractC0181p0.setElevation(this, obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0));
        }
        this.f1339f = obtainStyledAttributes.getInt(R.styleable.SnackbarLayout_animationMode, 0);
        if (obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_shapeAppearance) || obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_shapeAppearanceOverlay)) {
            this.f1338e = G3.p.builder(context2, attributeSet, 0, 0).build();
        }
        this.f1340j = obtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
        setBackgroundTintList(C3.d.getColorStateList(context2, obtainStyledAttributes, R.styleable.SnackbarLayout_backgroundTint));
        setBackgroundTintMode(T.parseTintMode(obtainStyledAttributes.getInt(R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
        this.f1341m = obtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
        this.f1342n = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.f1343p = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
        setOnTouchListener(f1336u);
        setFocusable(true);
        if (getBackground() == null) {
            int layer = AbstractC1595a.layer(this, R.attr.colorSurface, R.attr.colorOnSurface, getBackgroundOverlayColorAlpha());
            G3.p pVar = this.f1338e;
            if (pVar != null) {
                C0959b c0959b = t.f1349v;
                G3.j jVar = new G3.j(pVar);
                jVar.setFillColor(ColorStateList.valueOf(layer));
                gradientDrawable = jVar;
            } else {
                Resources resources = getResources();
                C0959b c0959b2 = t.f1349v;
                float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(dimension);
                gradientDrawable2.setColor(layer);
                gradientDrawable = gradientDrawable2;
            }
            if (this.f1344q != null) {
                wrap = E.c.wrap(gradientDrawable);
                E.c.setTintList(wrap, this.f1344q);
            } else {
                wrap = E.c.wrap(gradientDrawable);
            }
            AbstractC0181p0.setBackground(this, wrap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBaseTransientBottomBar(t tVar) {
        this.f1337b = tVar;
    }

    public float getActionTextColorAlpha() {
        return this.f1341m;
    }

    public int getAnimationMode() {
        return this.f1339f;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f1340j;
    }

    public int getMaxInlineActionWidth() {
        return this.f1343p;
    }

    public int getMaxWidth() {
        return this.f1342n;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        WindowInsets rootWindowInsets;
        Insets mandatorySystemGestureInsets;
        int i2;
        super.onAttachedToWindow();
        t tVar = this.f1337b;
        if (tVar != null && Build.VERSION.SDK_INT >= 29 && (rootWindowInsets = tVar.f1362i.getRootWindowInsets()) != null) {
            mandatorySystemGestureInsets = rootWindowInsets.getMandatorySystemGestureInsets();
            i2 = mandatorySystemGestureInsets.bottom;
            tVar.f1370q = i2;
            tVar.c();
        }
        AbstractC0181p0.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        t tVar = this.f1337b;
        if (tVar == null || !tVar.isShownOrQueued()) {
            return;
        }
        t.f1352y.post(new m(tVar));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
        t tVar = this.f1337b;
        if (tVar == null || !tVar.f1372s) {
            return;
        }
        tVar.b();
        tVar.f1372s = false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i7) {
        super.onMeasure(i2, i7);
        int i8 = this.f1342n;
        if (i8 <= 0 || getMeasuredWidth() <= i8) {
            return;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), i7);
    }

    public void setAnimationMode(int i2) {
        this.f1339f = i2;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f1344q != null) {
            drawable = E.c.wrap(drawable.mutate());
            E.c.setTintList(drawable, this.f1344q);
            E.c.setTintMode(drawable, this.f1345r);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f1344q = colorStateList;
        if (getBackground() != null) {
            Drawable wrap = E.c.wrap(getBackground().mutate());
            E.c.setTintList(wrap, colorStateList);
            E.c.setTintMode(wrap, this.f1345r);
            if (wrap != getBackground()) {
                super.setBackgroundDrawable(wrap);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f1345r = mode;
        if (getBackground() != null) {
            Drawable wrap = E.c.wrap(getBackground().mutate());
            E.c.setTintMode(wrap, mode);
            if (wrap != getBackground()) {
                super.setBackgroundDrawable(wrap);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (this.f1347t || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        this.f1346s = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        t tVar = this.f1337b;
        if (tVar != null) {
            C0959b c0959b = t.f1349v;
            tVar.c();
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f1336u);
        super.setOnClickListener(onClickListener);
    }
}
