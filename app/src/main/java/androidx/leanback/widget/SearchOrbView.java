package androidx.leanback.widget;

import M.AbstractC0181p0;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class SearchOrbView extends FrameLayout implements View.OnClickListener {

    /* renamed from: B, reason: collision with root package name */
    public static final /* synthetic */ int f6696B = 0;

    /* renamed from: A, reason: collision with root package name */
    public final d1 f6697A;

    /* renamed from: b, reason: collision with root package name */
    public View.OnClickListener f6698b;

    /* renamed from: e, reason: collision with root package name */
    public final View f6699e;

    /* renamed from: f, reason: collision with root package name */
    public final View f6700f;

    /* renamed from: j, reason: collision with root package name */
    public final ImageView f6701j;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f6702m;

    /* renamed from: n, reason: collision with root package name */
    public e1 f6703n;

    /* renamed from: p, reason: collision with root package name */
    public final float f6704p;

    /* renamed from: q, reason: collision with root package name */
    public final int f6705q;

    /* renamed from: r, reason: collision with root package name */
    public final int f6706r;

    /* renamed from: s, reason: collision with root package name */
    public final float f6707s;

    /* renamed from: t, reason: collision with root package name */
    public final float f6708t;

    /* renamed from: u, reason: collision with root package name */
    public ValueAnimator f6709u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f6710v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f6711w;

    /* renamed from: x, reason: collision with root package name */
    public final ArgbEvaluator f6712x;

    /* renamed from: y, reason: collision with root package name */
    public final d1 f6713y;

    /* renamed from: z, reason: collision with root package name */
    public ValueAnimator f6714z;

    public SearchOrbView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.leanback.R.attr.searchOrbViewStyle);
    }

    public final void a(boolean z6) {
        float f3 = z6 ? this.f6704p : 1.0f;
        ViewPropertyAnimator scaleY = this.f6699e.animate().scaleX(f3).scaleY(f3);
        long j7 = this.f6706r;
        scaleY.setDuration(j7).start();
        if (this.f6714z == null) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f6714z = ofFloat;
            ofFloat.addUpdateListener(this.f6697A);
        }
        if (z6) {
            this.f6714z.start();
        } else {
            this.f6714z.reverse();
        }
        this.f6714z.setDuration(j7);
        enableOrbColorAnimation(z6);
    }

    public final void b() {
        ValueAnimator valueAnimator = this.f6709u;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f6709u = null;
        }
        if (this.f6710v && this.f6711w) {
            ValueAnimator ofObject = ValueAnimator.ofObject(this.f6712x, Integer.valueOf(this.f6703n.f6786a), Integer.valueOf(this.f6703n.f6787b), Integer.valueOf(this.f6703n.f6786a));
            this.f6709u = ofObject;
            ofObject.setRepeatCount(-1);
            this.f6709u.setDuration(this.f6705q * 2);
            this.f6709u.addUpdateListener(this.f6713y);
            this.f6709u.start();
        }
    }

    public void enableOrbColorAnimation(boolean z6) {
        this.f6710v = z6;
        b();
    }

    public float getFocusedZoom() {
        return this.f6704p;
    }

    public int getLayoutResourceId() {
        return androidx.leanback.R.layout.lb_search_orb;
    }

    public int getOrbColor() {
        return this.f6703n.f6786a;
    }

    public e1 getOrbColors() {
        return this.f6703n;
    }

    public Drawable getOrbIcon() {
        return this.f6702m;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6711w = true;
        b();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener = this.f6698b;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f6711w = false;
        b();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z6, int i2, Rect rect) {
        super.onFocusChanged(z6, i2, rect);
        a(z6);
    }

    public void setOnOrbClickedListener(View.OnClickListener onClickListener) {
        this.f6698b = onClickListener;
    }

    public void setOrbColor(int i2) {
        setOrbColors(new e1(i2, i2, 0));
    }

    public void setOrbColors(e1 e1Var) {
        this.f6703n = e1Var;
        this.f6701j.setColorFilter(e1Var.f6788c);
        if (this.f6709u == null) {
            setOrbViewColor(this.f6703n.f6786a);
        } else {
            enableOrbColorAnimation(true);
        }
    }

    public void setOrbIcon(Drawable drawable) {
        this.f6702m = drawable;
        this.f6701j.setImageDrawable(drawable);
    }

    public void setOrbViewColor(int i2) {
        View view = this.f6700f;
        if (view.getBackground() instanceof GradientDrawable) {
            ((GradientDrawable) view.getBackground()).setColor(i2);
        }
    }

    public void setSearchOrbZ(float f3) {
        float f7 = this.f6708t;
        float f8 = this.f6707s;
        AbstractC0181p0.setZ(this.f6700f, ((f7 - f8) * f3) + f8);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.leanback.widget.d1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.leanback.widget.d1] */
    @SuppressLint({"CustomViewStyleable"})
    public SearchOrbView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6712x = new ArgbEvaluator();
        final int i7 = 0;
        this.f6713y = new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.leanback.widget.d1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchOrbView f6783e;

            {
                this.f6783e = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SearchOrbView searchOrbView = this.f6783e;
                switch (i7) {
                    case 0:
                        int i8 = SearchOrbView.f6696B;
                        searchOrbView.getClass();
                        searchOrbView.setOrbViewColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                        break;
                    default:
                        int i9 = SearchOrbView.f6696B;
                        searchOrbView.getClass();
                        searchOrbView.setSearchOrbZ(valueAnimator.getAnimatedFraction());
                        break;
                }
            }
        };
        final int i8 = 1;
        this.f6697A = new ValueAnimator.AnimatorUpdateListener(this) { // from class: androidx.leanback.widget.d1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchOrbView f6783e;

            {
                this.f6783e = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SearchOrbView searchOrbView = this.f6783e;
                switch (i8) {
                    case 0:
                        int i82 = SearchOrbView.f6696B;
                        searchOrbView.getClass();
                        searchOrbView.setOrbViewColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                        break;
                    default:
                        int i9 = SearchOrbView.f6696B;
                        searchOrbView.getClass();
                        searchOrbView.setSearchOrbZ(valueAnimator.getAnimatedFraction());
                        break;
                }
            }
        };
        Resources resources = context.getResources();
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(getLayoutResourceId(), (ViewGroup) this, true);
        this.f6699e = inflate;
        this.f6700f = inflate.findViewById(androidx.leanback.R.id.search_orb);
        ImageView imageView = (ImageView) inflate.findViewById(androidx.leanback.R.id.icon);
        this.f6701j = imageView;
        this.f6704p = context.getResources().getFraction(androidx.leanback.R.fraction.lb_search_orb_focused_zoom, 1, 1);
        this.f6705q = context.getResources().getInteger(androidx.leanback.R.integer.lb_search_orb_pulse_duration_ms);
        this.f6706r = context.getResources().getInteger(androidx.leanback.R.integer.lb_search_orb_scale_duration_ms);
        float dimensionPixelSize = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_search_orb_focused_z);
        this.f6708t = dimensionPixelSize;
        this.f6707s = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_search_orb_unfocused_z);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.leanback.R.styleable.lbSearchOrbView, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(this, context, androidx.leanback.R.styleable.lbSearchOrbView, attributeSet, obtainStyledAttributes, i2, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(androidx.leanback.R.styleable.lbSearchOrbView_searchOrbIcon);
        setOrbIcon(drawable == null ? resources.getDrawable(androidx.leanback.R.drawable.lb_ic_in_app_search) : drawable);
        int color = obtainStyledAttributes.getColor(androidx.leanback.R.styleable.lbSearchOrbView_searchOrbColor, resources.getColor(androidx.leanback.R.color.lb_default_search_color));
        setOrbColors(new e1(color, obtainStyledAttributes.getColor(androidx.leanback.R.styleable.lbSearchOrbView_searchOrbBrightColor, color), obtainStyledAttributes.getColor(androidx.leanback.R.styleable.lbSearchOrbView_searchOrbIconColor, 0)));
        obtainStyledAttributes.recycle();
        setFocusable(true);
        setClipChildren(false);
        setOnClickListener(this);
        setSoundEffectsEnabled(false);
        setSearchOrbZ(0.0f);
        AbstractC0181p0.setZ(imageView, dimensionPixelSize);
    }
}
