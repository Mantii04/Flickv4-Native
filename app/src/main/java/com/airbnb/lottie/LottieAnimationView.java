package com.airbnb.lottie;

import M.AbstractC0181p0;
import T1.AbstractC0322a;
import T1.AbstractC0324c;
import T1.AbstractC0338q;
import T1.C0325d;
import T1.C0326e;
import T1.C0327f;
import T1.C0329h;
import T1.C0330i;
import T1.G;
import T1.I;
import T1.InterfaceC0323b;
import T1.K;
import T1.O;
import T1.Q;
import T1.S;
import Y1.e;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import b.c;
import f2.h;
import g2.C0949c;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import l.P;

/* loaded from: classes.dex */
public class LottieAnimationView extends P {

    /* renamed from: E, reason: collision with root package name */
    public static final C0325d f9005E = new C0325d();

    /* renamed from: A, reason: collision with root package name */
    public final HashSet f9006A;

    /* renamed from: B, reason: collision with root package name */
    public int f9007B;

    /* renamed from: C, reason: collision with root package name */
    public O f9008C;

    /* renamed from: D, reason: collision with root package name */
    public C0330i f9009D;

    /* renamed from: j, reason: collision with root package name */
    public final C0326e f9010j;

    /* renamed from: m, reason: collision with root package name */
    public final C0327f f9011m;

    /* renamed from: n, reason: collision with root package name */
    public I f9012n;

    /* renamed from: p, reason: collision with root package name */
    public int f9013p;

    /* renamed from: q, reason: collision with root package name */
    public final G f9014q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f9015r;

    /* renamed from: s, reason: collision with root package name */
    public String f9016s;

    /* renamed from: t, reason: collision with root package name */
    public int f9017t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f9018u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f9019v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f9020w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f9021x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f9022y;

    /* renamed from: z, reason: collision with root package name */
    public RenderMode f9023z;

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        String string;
        this.f9010j = new C0326e(this);
        this.f9011m = new C0327f(this);
        this.f9013p = 0;
        G g7 = new G();
        this.f9014q = g7;
        this.f9018u = false;
        this.f9019v = false;
        this.f9020w = false;
        this.f9021x = false;
        this.f9022y = true;
        this.f9023z = RenderMode.f9024b;
        this.f9006A = new HashSet();
        this.f9007B = 0;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.LottieAnimationView);
        if (!isInEditMode()) {
            this.f9022y = obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_cacheComposition, true);
            boolean hasValue = obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_rawRes);
            boolean hasValue2 = obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_fileName);
            boolean hasValue3 = obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_url);
            if (hasValue && hasValue2) {
                throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
            }
            if (hasValue) {
                int resourceId = obtainStyledAttributes.getResourceId(R.styleable.LottieAnimationView_lottie_rawRes, 0);
                if (resourceId != 0) {
                    setAnimation(resourceId);
                }
            } else if (hasValue2) {
                String string2 = obtainStyledAttributes.getString(R.styleable.LottieAnimationView_lottie_fileName);
                if (string2 != null) {
                    setAnimation(string2);
                }
            } else if (hasValue3 && (string = obtainStyledAttributes.getString(R.styleable.LottieAnimationView_lottie_url)) != null) {
                setAnimationFromUrl(string);
            }
            setFallbackResource(obtainStyledAttributes.getResourceId(R.styleable.LottieAnimationView_lottie_fallbackRes, 0));
        }
        if (obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.f9020w = true;
            this.f9021x = true;
        }
        if (obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_loop, false)) {
            g7.setRepeatCount(-1);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_repeatMode)) {
            setRepeatMode(obtainStyledAttributes.getInt(R.styleable.LottieAnimationView_lottie_repeatMode, 1));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_repeatCount)) {
            setRepeatCount(obtainStyledAttributes.getInt(R.styleable.LottieAnimationView_lottie_repeatCount, -1));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_speed)) {
            setSpeed(obtainStyledAttributes.getFloat(R.styleable.LottieAnimationView_lottie_speed, 1.0f));
        }
        setImageAssetsFolder(obtainStyledAttributes.getString(R.styleable.LottieAnimationView_lottie_imageAssetsFolder));
        setProgress(obtainStyledAttributes.getFloat(R.styleable.LottieAnimationView_lottie_progress, 0.0f));
        enableMergePathsForKitKatAndAbove(obtainStyledAttributes.getBoolean(R.styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        if (obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_colorFilter)) {
            addValueCallback(new e("**"), K.f3581y, new C0949c(new Q(obtainStyledAttributes.getColor(R.styleable.LottieAnimationView_lottie_colorFilter, 0))));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_scale)) {
            g7.setScale(obtainStyledAttributes.getFloat(R.styleable.LottieAnimationView_lottie_scale, 1.0f));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.LottieAnimationView_lottie_renderMode)) {
            int i2 = obtainStyledAttributes.getInt(R.styleable.LottieAnimationView_lottie_renderMode, 0);
            setRenderMode(RenderMode.values()[i2 >= RenderMode.values().length ? 0 : i2]);
        }
        if (getScaleType() != null) {
            g7.f3542q = getScaleType();
        }
        obtainStyledAttributes.recycle();
        g7.f3539m = h.getAnimationScale(getContext()) != 0.0f;
        b();
        this.f9015r = true;
    }

    private void setCompositionTask(O o6) {
        this.f9009D = null;
        this.f9014q.clearComposition();
        a();
        this.f9008C = o6.addListener(this.f9010j).addFailureListener(this.f9011m);
    }

    public final void a() {
        O o6 = this.f9008C;
        if (o6 != null) {
            o6.removeListener(this.f9010j);
            this.f9008C.removeFailureListener(this.f9011m);
        }
    }

    public <T> void addValueCallback(e eVar, T t6, C0949c c0949c) {
        this.f9014q.addValueCallback(eVar, t6, c0949c);
    }

    public final void b() {
        C0330i c0330i;
        C0330i c0330i2;
        int ordinal = this.f9023z.ordinal();
        int i2 = 2;
        if (ordinal == 0 ? !(((c0330i = this.f9009D) == null || !c0330i.hasDashPattern() || Build.VERSION.SDK_INT >= 28) && ((c0330i2 = this.f9009D) == null || c0330i2.getMaskAndMatteCount() <= 4)) : ordinal != 1) {
            i2 = 1;
        }
        if (i2 != getLayerType()) {
            setLayerType(i2, null);
        }
    }

    @Override // android.view.View
    public void buildDrawingCache(boolean z6) {
        AbstractC0324c.beginSection("buildDrawingCache");
        this.f9007B++;
        super.buildDrawingCache(z6);
        if (this.f9007B == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z6) == null) {
            setRenderMode(RenderMode.f9025e);
        }
        this.f9007B--;
        AbstractC0324c.endSection("buildDrawingCache");
    }

    public void cancelAnimation() {
        this.f9020w = false;
        this.f9019v = false;
        this.f9018u = false;
        this.f9014q.cancelAnimation();
        b();
    }

    public void enableMergePathsForKitKatAndAbove(boolean z6) {
        this.f9014q.enableMergePathsForKitKatAndAbove(z6);
    }

    public C0330i getComposition() {
        return this.f9009D;
    }

    public long getDuration() {
        C0330i c0330i = this.f9009D;
        if (c0330i != null) {
            return (long) c0330i.getDuration();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f9014q.getFrame();
    }

    public String getImageAssetsFolder() {
        return this.f9014q.getImageAssetsFolder();
    }

    public float getMaxFrame() {
        return this.f9014q.getMaxFrame();
    }

    public float getMinFrame() {
        return this.f9014q.getMinFrame();
    }

    public T1.P getPerformanceTracker() {
        return this.f9014q.getPerformanceTracker();
    }

    public float getProgress() {
        return this.f9014q.getProgress();
    }

    public int getRepeatCount() {
        return this.f9014q.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.f9014q.getRepeatMode();
    }

    public float getScale() {
        return this.f9014q.getScale();
    }

    public float getSpeed() {
        return this.f9014q.getSpeed();
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        G g7 = this.f9014q;
        if (drawable2 == g7) {
            super.invalidateDrawable(g7);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public boolean isAnimating() {
        return this.f9014q.isAnimating();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f9021x || this.f9020w) {
            playAnimation();
            this.f9021x = false;
            this.f9020w = false;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        if (isAnimating()) {
            cancelAnimation();
            this.f9020w = true;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0329h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0329h c0329h = (C0329h) parcelable;
        super.onRestoreInstanceState(c0329h.getSuperState());
        String str = c0329h.f3598b;
        this.f9016s = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.f9016s);
        }
        int i2 = c0329h.f3599e;
        this.f9017t = i2;
        if (i2 != 0) {
            setAnimation(i2);
        }
        setProgress(c0329h.f3600f);
        if (c0329h.f3601j) {
            playAnimation();
        }
        this.f9014q.setImagesAssetsFolder(c0329h.f3602m);
        setRepeatMode(c0329h.f3603n);
        setRepeatCount(c0329h.f3604p);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0329h c0329h = new C0329h(super.onSaveInstanceState());
        c0329h.f3598b = this.f9016s;
        c0329h.f3599e = this.f9017t;
        G g7 = this.f9014q;
        c0329h.f3600f = g7.getProgress();
        c0329h.f3601j = g7.isAnimating() || (!AbstractC0181p0.isAttachedToWindow(this) && this.f9020w);
        c0329h.f3602m = g7.getImageAssetsFolder();
        c0329h.f3603n = g7.getRepeatMode();
        c0329h.f3604p = g7.getRepeatCount();
        return c0329h;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        if (this.f9015r) {
            if (!isShown()) {
                if (isAnimating()) {
                    pauseAnimation();
                    this.f9019v = true;
                    return;
                }
                return;
            }
            if (this.f9019v) {
                resumeAnimation();
            } else if (this.f9018u) {
                playAnimation();
            }
            this.f9019v = false;
            this.f9018u = false;
        }
    }

    public void pauseAnimation() {
        this.f9021x = false;
        this.f9020w = false;
        this.f9019v = false;
        this.f9018u = false;
        this.f9014q.pauseAnimation();
        b();
    }

    public void playAnimation() {
        if (!isShown()) {
            this.f9018u = true;
        } else {
            this.f9014q.playAnimation();
            b();
        }
    }

    public void resumeAnimation() {
        if (isShown()) {
            this.f9014q.resumeAnimation();
            b();
        } else {
            this.f9018u = false;
            this.f9019v = true;
        }
    }

    public void setAnimation(int i2) {
        this.f9017t = i2;
        this.f9016s = null;
        setCompositionTask(this.f9022y ? AbstractC0338q.fromRawRes(getContext(), i2) : AbstractC0338q.fromRawRes(getContext(), i2, null));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f9022y ? AbstractC0338q.fromUrl(getContext(), str) : AbstractC0338q.fromUrl(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z6) {
        this.f9014q.setApplyingOpacityToLayersEnabled(z6);
    }

    public void setCacheComposition(boolean z6) {
        this.f9022y = z6;
    }

    public void setComposition(C0330i c0330i) {
        G g7 = this.f9014q;
        g7.setCallback(this);
        this.f9009D = c0330i;
        boolean composition = g7.setComposition(c0330i);
        b();
        if (getDrawable() != g7 || composition) {
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it = this.f9006A.iterator();
            if (it.hasNext()) {
                throw c.g(it);
            }
        }
    }

    public void setFailureListener(I i2) {
        this.f9012n = i2;
    }

    public void setFallbackResource(int i2) {
        this.f9013p = i2;
    }

    public void setFontAssetDelegate(AbstractC0322a abstractC0322a) {
        this.f9014q.setFontAssetDelegate(abstractC0322a);
    }

    public void setFrame(int i2) {
        this.f9014q.setFrame(i2);
    }

    public void setImageAssetDelegate(InterfaceC0323b interfaceC0323b) {
        this.f9014q.setImageAssetDelegate(interfaceC0323b);
    }

    public void setImageAssetsFolder(String str) {
        this.f9014q.setImagesAssetsFolder(str);
    }

    @Override // l.P, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        a();
        super.setImageBitmap(bitmap);
    }

    @Override // l.P, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        a();
        super.setImageDrawable(drawable);
    }

    @Override // l.P, android.widget.ImageView
    public void setImageResource(int i2) {
        a();
        super.setImageResource(i2);
    }

    public void setMaxFrame(int i2) {
        this.f9014q.setMaxFrame(i2);
    }

    public void setMaxProgress(float f3) {
        this.f9014q.setMaxProgress(f3);
    }

    public void setMinAndMaxFrame(String str) {
        this.f9014q.setMinAndMaxFrame(str);
    }

    public void setMinFrame(int i2) {
        this.f9014q.setMinFrame(i2);
    }

    public void setMinProgress(float f3) {
        this.f9014q.setMinProgress(f3);
    }

    public void setPerformanceTrackingEnabled(boolean z6) {
        this.f9014q.setPerformanceTrackingEnabled(z6);
    }

    public void setProgress(float f3) {
        this.f9014q.setProgress(f3);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.f9023z = renderMode;
        b();
    }

    public void setRepeatCount(int i2) {
        this.f9014q.setRepeatCount(i2);
    }

    public void setRepeatMode(int i2) {
        this.f9014q.setRepeatMode(i2);
    }

    public void setSafeMode(boolean z6) {
        this.f9014q.setSafeMode(z6);
    }

    public void setScale(float f3) {
        G g7 = this.f9014q;
        g7.setScale(f3);
        if (getDrawable() == g7) {
            setImageDrawable(null);
            setImageDrawable(g7);
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        super.setScaleType(scaleType);
        G g7 = this.f9014q;
        if (g7 != null) {
            g7.f3542q = scaleType;
        }
    }

    public void setSpeed(float f3) {
        this.f9014q.setSpeed(f3);
    }

    public void setTextDelegate(S s6) {
        this.f9014q.setTextDelegate(s6);
    }

    public void setAnimationFromJson(String str, String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setMaxFrame(String str) {
        this.f9014q.setMaxFrame(str);
    }

    public void setMinFrame(String str) {
        this.f9014q.setMinFrame(str);
    }

    public void setAnimation(String str) {
        this.f9016s = str;
        this.f9017t = 0;
        setCompositionTask(this.f9022y ? AbstractC0338q.fromAsset(getContext(), str) : AbstractC0338q.fromAsset(getContext(), str, null));
    }

    public void setAnimation(InputStream inputStream, String str) {
        setCompositionTask(AbstractC0338q.fromJsonInputStream(inputStream, str));
    }
}
