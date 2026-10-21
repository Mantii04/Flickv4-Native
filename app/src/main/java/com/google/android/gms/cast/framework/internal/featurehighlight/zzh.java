package com.google.android.gms.cast.framework.internal.featurehighlight;

import M.r;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.internal.cast.zzep;

/* loaded from: classes.dex */
public final class zzh extends ViewGroup {

    /* renamed from: w, reason: collision with root package name */
    public static final /* synthetic */ int f9911w = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f9912b;

    /* renamed from: e, reason: collision with root package name */
    public final Rect f9913e;

    /* renamed from: f, reason: collision with root package name */
    public final Rect f9914f;

    /* renamed from: j, reason: collision with root package name */
    public final OuterHighlightDrawable f9915j;

    /* renamed from: m, reason: collision with root package name */
    public final InnerZoneDrawable f9916m;

    /* renamed from: n, reason: collision with root package name */
    public View f9917n;

    /* renamed from: p, reason: collision with root package name */
    public AnimatorSet f9918p;

    /* renamed from: q, reason: collision with root package name */
    public final zzi f9919q;

    /* renamed from: r, reason: collision with root package name */
    public final r f9920r;

    /* renamed from: s, reason: collision with root package name */
    public r f9921s;

    /* renamed from: t, reason: collision with root package name */
    public zzg f9922t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f9923u;

    /* renamed from: v, reason: collision with root package name */
    public HelpTextView f9924v;

    public zzh(Context context) {
        super(context);
        this.f9912b = new int[2];
        this.f9913e = new Rect();
        this.f9914f = new Rect();
        setId(R.id.cast_featurehighlight_view);
        setWillNotDraw(false);
        InnerZoneDrawable innerZoneDrawable = new InnerZoneDrawable(context);
        this.f9916m = innerZoneDrawable;
        innerZoneDrawable.setCallback(this);
        OuterHighlightDrawable outerHighlightDrawable = new OuterHighlightDrawable(context);
        this.f9915j = outerHighlightDrawable;
        outerHighlightDrawable.setCallback(this);
        this.f9919q = new zzi(this);
        r rVar = new r(context, new zza(this));
        this.f9920r = rVar;
        rVar.setIsLongpressEnabled(false);
        setVisibility(8);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.save();
        OuterHighlightDrawable outerHighlightDrawable = this.f9915j;
        outerHighlightDrawable.draw(canvas);
        this.f9916m.draw(canvas);
        View view = this.f9917n;
        if (view == null) {
            throw new IllegalStateException("Neither target view nor drawable was set");
        }
        if (view.getParent() != null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f9917n.getWidth(), this.f9917n.getHeight(), Bitmap.Config.ARGB_8888);
            this.f9917n.draw(new Canvas(createBitmap));
            int zzc = outerHighlightDrawable.zzc();
            int red = Color.red(zzc);
            int green = Color.green(zzc);
            int blue = Color.blue(zzc);
            for (int i2 = 0; i2 < createBitmap.getHeight(); i2++) {
                for (int i7 = 0; i7 < createBitmap.getWidth(); i7++) {
                    int pixel = createBitmap.getPixel(i7, i2);
                    if (Color.alpha(pixel) != 0) {
                        createBitmap.setPixel(i7, i2, Color.argb(Color.alpha(pixel), red, green, blue));
                    }
                }
            }
            Rect rect = this.f9913e;
            canvas.drawBitmap(createBitmap, rect.left, rect.top, (Paint) null);
        }
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        View view = this.f9917n;
        if (view == null) {
            throw new IllegalStateException("Target view must be set before layout");
        }
        ViewParent parent = view.getParent();
        int[] iArr = this.f9912b;
        if (parent != null) {
            View view2 = this.f9917n;
            getLocationInWindow(iArr);
            int i10 = iArr[0];
            int i11 = iArr[1];
            view2.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i10;
            iArr[1] = iArr[1] - i11;
        }
        int i12 = iArr[0];
        int i13 = iArr[1];
        int width = this.f9917n.getWidth() + i12;
        int height = this.f9917n.getHeight() + iArr[1];
        Rect rect = this.f9913e;
        rect.set(i12, i13, width, height);
        Rect rect2 = this.f9914f;
        rect2.set(i2, i7, i8, i9);
        this.f9915j.setBounds(rect2);
        this.f9916m.setBounds(rect2);
        zzi zziVar = this.f9919q;
        zzh zzhVar = zziVar.f9930f;
        View asView = zzhVar.f9924v.asView();
        if (rect.isEmpty() || rect2.isEmpty()) {
            asView.layout(0, 0, 0, 0);
        } else {
            int centerY = rect.centerY();
            int centerX = rect.centerX();
            int centerY2 = rect2.centerY();
            int height2 = rect.height();
            int i14 = zziVar.f9926b;
            int max = Math.max(i14 + i14, height2) / 2;
            int i15 = centerY + max;
            int i16 = zziVar.f9927c;
            if (centerY < centerY2) {
                int i17 = i15 + i16;
                zziVar.b(asView, rect2.width(), rect2.bottom - i17);
                int a7 = zziVar.a(asView, rect2.left, rect2.right, asView.getMeasuredWidth(), centerX);
                asView.layout(a7, i17, asView.getMeasuredWidth() + a7, asView.getMeasuredHeight() + i17);
            } else {
                int i18 = (centerY - max) - i16;
                zziVar.b(asView, rect2.width(), i18 - rect2.top);
                int a8 = zziVar.a(asView, rect2.left, rect2.right, asView.getMeasuredWidth(), centerX);
                asView.layout(a8, i18 - asView.getMeasuredHeight(), asView.getMeasuredWidth() + a8, i18);
            }
        }
        int left = asView.getLeft();
        int top = asView.getTop();
        int right = asView.getRight();
        int bottom = asView.getBottom();
        Rect rect3 = zziVar.f9925a;
        rect3.set(left, top, right, bottom);
        zzhVar.f9915j.zzf(rect, rect3);
        zzhVar.f9916m.zzb(rect);
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i7) {
        setMeasuredDimension(View.resolveSize(View.MeasureSpec.getSize(i2), i2), View.resolveSize(View.MeasureSpec.getSize(i7), i7));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f9923u = this.f9913e.contains((int) motionEvent.getX(), (int) motionEvent.getY());
            actionMasked = 0;
        }
        if (this.f9923u) {
            r rVar = this.f9921s;
            if (rVar != null) {
                rVar.onTouchEvent(motionEvent);
                if (actionMasked == 1) {
                    motionEvent = MotionEvent.obtain(motionEvent);
                    motionEvent.setAction(3);
                }
            }
            if (this.f9917n.getParent() != null) {
                this.f9917n.onTouchEvent(motionEvent);
            }
        } else {
            this.f9920r.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f9915j || drawable == this.f9916m || drawable == null;
    }

    public final void zzg(Runnable runnable) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f9924v.asView(), "alpha", 0.0f).setDuration(200L);
        duration.setInterpolator(zzep.zza());
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f9915j, PropertyValuesHolder.ofFloat("scale", 1.125f), PropertyValuesHolder.ofInt("alpha", 0));
        ofPropertyValuesHolder.setInterpolator(zzep.zza());
        Animator duration2 = ofPropertyValuesHolder.setDuration(200L);
        Animator zza = this.f9916m.zza();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, duration2, zza);
        animatorSet.addListener(new zze(this, runnable));
        AnimatorSet animatorSet2 = this.f9918p;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f9918p = animatorSet;
        animatorSet.start();
    }

    public final void zzh(Runnable runnable) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f9924v.asView(), "alpha", 0.0f).setDuration(200L);
        duration.setInterpolator(zzep.zza());
        Rect rect = this.f9913e;
        float exactCenterX = rect.exactCenterX();
        OuterHighlightDrawable outerHighlightDrawable = this.f9915j;
        float zza = exactCenterX - outerHighlightDrawable.zza();
        float exactCenterY = rect.exactCenterY() - outerHighlightDrawable.zzb();
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(outerHighlightDrawable, PropertyValuesHolder.ofFloat("scale", 0.0f), PropertyValuesHolder.ofFloat("translationX", 0.0f, zza), PropertyValuesHolder.ofFloat("translationY", 0.0f, exactCenterY), PropertyValuesHolder.ofInt("alpha", 0));
        ofPropertyValuesHolder.setInterpolator(zzep.zza());
        Animator duration2 = ofPropertyValuesHolder.setDuration(200L);
        Animator zza2 = this.f9916m.zza();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, duration2, zza2);
        animatorSet.addListener(new zzf(this, runnable));
        AnimatorSet animatorSet2 = this.f9918p;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f9918p = animatorSet;
        animatorSet.start();
    }

    public final void zzi(View view, View view2, boolean z6, zzg zzgVar) {
        this.f9917n = view;
        this.f9922t = zzgVar;
        r rVar = new r(getContext(), new zzb(view, zzgVar));
        this.f9921s = rVar;
        rVar.setIsLongpressEnabled(false);
        setVisibility(4);
    }

    public final void zzj(int i2) {
        this.f9915j.zze(i2);
    }

    public final void zzk() {
        if (this.f9917n == null) {
            throw new IllegalStateException("Target view must be set before animation");
        }
        setVisibility(0);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.f9924v.asView(), "alpha", 0.0f, 1.0f).setDuration(350L);
        duration.setInterpolator(zzep.zzc());
        Rect rect = this.f9913e;
        float exactCenterX = rect.exactCenterX();
        OuterHighlightDrawable outerHighlightDrawable = this.f9915j;
        Animator zzd = outerHighlightDrawable.zzd(exactCenterX - outerHighlightDrawable.zza(), rect.exactCenterY() - outerHighlightDrawable.zzb());
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f9916m, PropertyValuesHolder.ofFloat("scale", 0.0f, 1.0f), PropertyValuesHolder.ofInt("alpha", 0, 255));
        ofPropertyValuesHolder.setInterpolator(zzep.zzc());
        Animator duration2 = ofPropertyValuesHolder.setDuration(350L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, zzd, duration2);
        animatorSet.addListener(new zzd(this));
        AnimatorSet animatorSet2 = this.f9918p;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f9918p = animatorSet;
        animatorSet.start();
    }

    public final void zzl(Runnable runnable) {
        addOnLayoutChangeListener(new zzc(this));
    }

    public final void zzn(HelpTextView helpTextView) {
        helpTextView.getClass();
        this.f9924v = helpTextView;
        addView(helpTextView.asView(), 0);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }
}
