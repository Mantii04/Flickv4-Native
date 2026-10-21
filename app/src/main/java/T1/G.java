package T1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import b2.C0643c;
import f2.AbstractC0923d;
import g2.C0949c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class G extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: A, reason: collision with root package name */
    public boolean f3534A;

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f3535b = new Matrix();

    /* renamed from: e, reason: collision with root package name */
    public C0330i f3536e;

    /* renamed from: f, reason: collision with root package name */
    public final f2.e f3537f;

    /* renamed from: j, reason: collision with root package name */
    public float f3538j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f3539m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f3540n;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f3541p;

    /* renamed from: q, reason: collision with root package name */
    public ImageView.ScaleType f3542q;

    /* renamed from: r, reason: collision with root package name */
    public X1.b f3543r;

    /* renamed from: s, reason: collision with root package name */
    public String f3544s;

    /* renamed from: t, reason: collision with root package name */
    public X1.a f3545t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3546u;

    /* renamed from: v, reason: collision with root package name */
    public C0643c f3547v;

    /* renamed from: w, reason: collision with root package name */
    public int f3548w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f3549x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f3550y;

    /* renamed from: z, reason: collision with root package name */
    public final boolean f3551z;

    public G() {
        f2.e eVar = new f2.e();
        this.f3537f = eVar;
        this.f3538j = 1.0f;
        this.f3539m = true;
        this.f3540n = false;
        new HashSet();
        this.f3541p = new ArrayList();
        w wVar = new w(this);
        this.f3548w = 255;
        this.f3551z = true;
        this.f3534A = false;
        eVar.addUpdateListener(wVar);
    }

    public final void a(Canvas canvas) {
        float f3;
        float f7;
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        ImageView.ScaleType scaleType2 = this.f3542q;
        Matrix matrix = this.f3535b;
        int i2 = -1;
        if (scaleType != scaleType2) {
            if (this.f3547v == null) {
                return;
            }
            float f8 = this.f3538j;
            float min = Math.min(canvas.getWidth() / this.f3536e.getBounds().width(), canvas.getHeight() / this.f3536e.getBounds().height());
            if (f8 > min) {
                f3 = this.f3538j / min;
            } else {
                min = f8;
                f3 = 1.0f;
            }
            if (f3 > 1.0f) {
                i2 = canvas.save();
                float width = this.f3536e.getBounds().width() / 2.0f;
                float height = this.f3536e.getBounds().height() / 2.0f;
                float f9 = width * min;
                float f10 = height * min;
                canvas.translate((getScale() * width) - f9, (getScale() * height) - f10);
                canvas.scale(f3, f3, f9, f10);
            }
            matrix.reset();
            matrix.preScale(min, min);
            this.f3547v.draw(canvas, matrix, this.f3548w);
            if (i2 > 0) {
                canvas.restoreToCount(i2);
                return;
            }
            return;
        }
        if (this.f3547v == null) {
            return;
        }
        Rect bounds = getBounds();
        float width2 = bounds.width() / this.f3536e.getBounds().width();
        float height2 = bounds.height() / this.f3536e.getBounds().height();
        if (this.f3551z) {
            float min2 = Math.min(width2, height2);
            if (min2 < 1.0f) {
                f7 = 1.0f / min2;
                width2 /= f7;
                height2 /= f7;
            } else {
                f7 = 1.0f;
            }
            if (f7 > 1.0f) {
                i2 = canvas.save();
                float width3 = bounds.width() / 2.0f;
                float height3 = bounds.height() / 2.0f;
                float f11 = width3 * min2;
                float f12 = min2 * height3;
                canvas.translate(width3 - f11, height3 - f12);
                canvas.scale(f7, f7, f11, f12);
            }
        }
        matrix.reset();
        matrix.preScale(width2, height2);
        this.f3547v.draw(canvas, matrix, this.f3548w);
        if (i2 > 0) {
            canvas.restoreToCount(i2);
        }
    }

    public <T> void addValueCallback(Y1.e eVar, T t6, C0949c c0949c) {
        if (this.f3547v == null) {
            this.f3541p.add(new v(this, eVar, t6, c0949c));
            return;
        }
        boolean z6 = true;
        if (eVar.getResolvedElement() != null) {
            eVar.getResolvedElement().addValueCallback(t6, c0949c);
        } else {
            List<Y1.e> resolveKeyPath = resolveKeyPath(eVar);
            for (int i2 = 0; i2 < resolveKeyPath.size(); i2++) {
                resolveKeyPath.get(i2).getResolvedElement().addValueCallback(t6, c0949c);
            }
            z6 = true ^ resolveKeyPath.isEmpty();
        }
        if (z6) {
            invalidateSelf();
            if (t6 == K.f3579w) {
                setProgress(getProgress());
            }
        }
    }

    public final void b() {
        if (this.f3536e == null) {
            return;
        }
        float scale = getScale();
        setBounds(0, 0, (int) (this.f3536e.getBounds().width() * scale), (int) (this.f3536e.getBounds().height() * scale));
    }

    public void cancelAnimation() {
        this.f3541p.clear();
        this.f3537f.cancel();
    }

    public void clearComposition() {
        f2.e eVar = this.f3537f;
        if (eVar.isRunning()) {
            eVar.cancel();
        }
        this.f3536e = null;
        this.f3547v = null;
        this.f3543r = null;
        eVar.clearComposition();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f3534A = false;
        AbstractC0324c.beginSection("Drawable#draw");
        if (this.f3540n) {
            try {
                a(canvas);
            } catch (Throwable th) {
                AbstractC0923d.error("Lottie crashed in draw!", th);
            }
        } else {
            a(canvas);
        }
        AbstractC0324c.endSection("Drawable#draw");
    }

    public boolean enableMergePathsForKitKatAndAbove() {
        return this.f3546u;
    }

    public void endAnimation() {
        this.f3541p.clear();
        this.f3537f.endAnimation();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3548w;
    }

    public C0330i getComposition() {
        return this.f3536e;
    }

    public int getFrame() {
        return (int) this.f3537f.getFrame();
    }

    public Bitmap getImageAsset(String str) {
        X1.b bVar;
        if (getCallback() == null) {
            bVar = null;
        } else {
            X1.b bVar2 = this.f3543r;
            if (bVar2 != null) {
                Drawable.Callback callback = getCallback();
                if (!bVar2.hasSameContext((callback != null && (callback instanceof View)) ? ((View) callback).getContext() : null)) {
                    this.f3543r = null;
                }
            }
            if (this.f3543r == null) {
                this.f3543r = new X1.b(getCallback(), this.f3544s, null, this.f3536e.getImages());
            }
            bVar = this.f3543r;
        }
        if (bVar != null) {
            return bVar.bitmapForId(str);
        }
        return null;
    }

    public String getImageAssetsFolder() {
        return this.f3544s;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f3536e == null) {
            return -1;
        }
        return (int) (getScale() * r0.getBounds().height());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f3536e == null) {
            return -1;
        }
        return (int) (getScale() * r0.getBounds().width());
    }

    public float getMaxFrame() {
        return this.f3537f.getMaxFrame();
    }

    public float getMinFrame() {
        return this.f3537f.getMinFrame();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public P getPerformanceTracker() {
        C0330i c0330i = this.f3536e;
        if (c0330i != null) {
            return c0330i.getPerformanceTracker();
        }
        return null;
    }

    public float getProgress() {
        return this.f3537f.getAnimatedValueAbsolute();
    }

    public int getRepeatCount() {
        return this.f3537f.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.f3537f.getRepeatMode();
    }

    public float getScale() {
        return this.f3538j;
    }

    public float getSpeed() {
        return this.f3537f.getSpeed();
    }

    public S getTextDelegate() {
        return null;
    }

    public Typeface getTypeface(String str, String str2) {
        X1.a aVar;
        if (getCallback() == null) {
            aVar = null;
        } else {
            if (this.f3545t == null) {
                this.f3545t = new X1.a(getCallback(), null);
            }
            aVar = this.f3545t;
        }
        if (aVar != null) {
            return aVar.getTypeface(str, str2);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f3534A) {
            return;
        }
        this.f3534A = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public boolean isAnimating() {
        f2.e eVar = this.f3537f;
        if (eVar == null) {
            return false;
        }
        return eVar.isRunning();
    }

    public boolean isApplyingOpacityToLayersEnabled() {
        return this.f3550y;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return isAnimating();
    }

    public void pauseAnimation() {
        this.f3541p.clear();
        this.f3537f.pauseAnimation();
    }

    public void playAnimation() {
        if (this.f3547v == null) {
            this.f3541p.add(new x(this));
            return;
        }
        boolean z6 = this.f3539m;
        f2.e eVar = this.f3537f;
        if (z6 || getRepeatCount() == 0) {
            eVar.playAnimation();
        }
        if (this.f3539m) {
            return;
        }
        setFrame((int) (getSpeed() < 0.0f ? getMinFrame() : getMaxFrame()));
        eVar.endAnimation();
    }

    public List<Y1.e> resolveKeyPath(Y1.e eVar) {
        if (this.f3547v == null) {
            AbstractC0923d.warning("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        this.f3547v.resolveKeyPath(eVar, 0, arrayList, new Y1.e(new String[0]));
        return arrayList;
    }

    public void resumeAnimation() {
        if (this.f3547v == null) {
            this.f3541p.add(new y(this));
            return;
        }
        boolean z6 = this.f3539m;
        f2.e eVar = this.f3537f;
        if (z6 || getRepeatCount() == 0) {
            eVar.resumeAnimation();
        }
        if (this.f3539m) {
            return;
        }
        setFrame((int) (getSpeed() < 0.0f ? getMinFrame() : getMaxFrame()));
        eVar.endAnimation();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j7) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j7);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f3548w = i2;
        invalidateSelf();
    }

    public void setApplyingOpacityToLayersEnabled(boolean z6) {
        this.f3550y = z6;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC0923d.warning("Use addColorFilter instead.");
    }

    public boolean setComposition(C0330i c0330i) {
        if (this.f3536e == c0330i) {
            return false;
        }
        this.f3534A = false;
        clearComposition();
        this.f3536e = c0330i;
        this.f3547v = new C0643c(this, d2.s.parse(c0330i), this.f3536e.getLayers(), this.f3536e);
        f2.e eVar = this.f3537f;
        eVar.setComposition(c0330i);
        setProgress(eVar.getAnimatedFraction());
        setScale(this.f3538j);
        b();
        ArrayList arrayList = this.f3541p;
        Iterator it = new ArrayList(arrayList).iterator();
        while (it.hasNext()) {
            ((F) it.next()).run(c0330i);
            it.remove();
        }
        arrayList.clear();
        c0330i.setPerformanceTrackingEnabled(this.f3549x);
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof ImageView)) {
            return true;
        }
        ImageView imageView = (ImageView) callback;
        imageView.setImageDrawable(null);
        imageView.setImageDrawable(this);
        return true;
    }

    public void setFontAssetDelegate(AbstractC0322a abstractC0322a) {
        X1.a aVar = this.f3545t;
        if (aVar != null) {
            aVar.setDelegate(abstractC0322a);
        }
    }

    public void setFrame(int i2) {
        if (this.f3536e == null) {
            this.f3541p.add(new t(this, i2));
        } else {
            this.f3537f.setFrame(i2);
        }
    }

    public void setImageAssetDelegate(InterfaceC0323b interfaceC0323b) {
        X1.b bVar = this.f3543r;
        if (bVar != null) {
            bVar.setDelegate(interfaceC0323b);
        }
    }

    public void setImagesAssetsFolder(String str) {
        this.f3544s = str;
    }

    public void setMaxFrame(int i2) {
        if (this.f3536e == null) {
            this.f3541p.add(new B(this, i2));
        } else {
            this.f3537f.setMaxFrame(i2 + 0.99f);
        }
    }

    public void setMaxProgress(float f3) {
        C0330i c0330i = this.f3536e;
        if (c0330i == null) {
            this.f3541p.add(new C(this, f3));
        } else {
            setMaxFrame((int) f2.g.lerp(c0330i.getStartFrame(), this.f3536e.getEndFrame(), f3));
        }
    }

    public void setMinAndMaxFrame(String str) {
        C0330i c0330i = this.f3536e;
        if (c0330i == null) {
            this.f3541p.add(new r(this, str));
            return;
        }
        Y1.h marker = c0330i.getMarker(str);
        if (marker == null) {
            throw new IllegalArgumentException(A.i.l("Cannot find marker with name ", str, "."));
        }
        int i2 = (int) marker.f4363b;
        setMinAndMaxFrame(i2, ((int) marker.f4364c) + i2);
    }

    public void setMinFrame(int i2) {
        if (this.f3536e == null) {
            this.f3541p.add(new z(this, i2));
        } else {
            this.f3537f.setMinFrame(i2);
        }
    }

    public void setMinProgress(float f3) {
        C0330i c0330i = this.f3536e;
        if (c0330i == null) {
            this.f3541p.add(new A(this, f3));
        } else {
            setMinFrame((int) f2.g.lerp(c0330i.getStartFrame(), this.f3536e.getEndFrame(), f3));
        }
    }

    public void setPerformanceTrackingEnabled(boolean z6) {
        this.f3549x = z6;
        C0330i c0330i = this.f3536e;
        if (c0330i != null) {
            c0330i.setPerformanceTrackingEnabled(z6);
        }
    }

    public void setProgress(float f3) {
        if (this.f3536e == null) {
            this.f3541p.add(new u(this, f3));
            return;
        }
        AbstractC0324c.beginSection("Drawable#setProgress");
        this.f3537f.setFrame(f2.g.lerp(this.f3536e.getStartFrame(), this.f3536e.getEndFrame(), f3));
        AbstractC0324c.endSection("Drawable#setProgress");
    }

    public void setRepeatCount(int i2) {
        this.f3537f.setRepeatCount(i2);
    }

    public void setRepeatMode(int i2) {
        this.f3537f.setRepeatMode(i2);
    }

    public void setSafeMode(boolean z6) {
        this.f3540n = z6;
    }

    public void setScale(float f3) {
        this.f3538j = f3;
        b();
    }

    public void setSpeed(float f3) {
        this.f3537f.setSpeed(f3);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        playAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        endAnimation();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public boolean useTextGlyphs() {
        return this.f3536e.getCharacters().size() > 0;
    }

    public void enableMergePathsForKitKatAndAbove(boolean z6) {
        if (this.f3546u == z6) {
            return;
        }
        this.f3546u = z6;
        C0330i c0330i = this.f3536e;
        if (c0330i != null) {
            this.f3547v = new C0643c(this, d2.s.parse(c0330i), this.f3536e.getLayers(), this.f3536e);
        }
    }

    public void setMaxFrame(String str) {
        C0330i c0330i = this.f3536e;
        if (c0330i == null) {
            this.f3541p.add(new E(this, str));
            return;
        }
        Y1.h marker = c0330i.getMarker(str);
        if (marker != null) {
            setMaxFrame((int) (marker.f4363b + marker.f4364c));
            return;
        }
        throw new IllegalArgumentException(A.i.l("Cannot find marker with name ", str, "."));
    }

    public void setMinFrame(String str) {
        C0330i c0330i = this.f3536e;
        if (c0330i == null) {
            this.f3541p.add(new D(this, str));
            return;
        }
        Y1.h marker = c0330i.getMarker(str);
        if (marker != null) {
            setMinFrame((int) marker.f4363b);
            return;
        }
        throw new IllegalArgumentException(A.i.l("Cannot find marker with name ", str, "."));
    }

    public void setMinAndMaxFrame(int i2, int i7) {
        if (this.f3536e == null) {
            this.f3541p.add(new C0339s(this, i2, i7));
        } else {
            this.f3537f.setMinAndMaxFrames(i2, i7 + 0.99f);
        }
    }

    public void setTextDelegate(S s6) {
    }
}
