package f2;

import T1.AbstractC0324c;
import T1.C0330i;
import android.animation.Animator;
import android.os.Build;
import android.view.Choreographer;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class e extends AbstractC0920a implements Choreographer.FrameCallback {

    /* renamed from: s, reason: collision with root package name */
    public C0330i f14366s;

    /* renamed from: f, reason: collision with root package name */
    public float f14359f = 1.0f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14360j = false;

    /* renamed from: m, reason: collision with root package name */
    public long f14361m = 0;

    /* renamed from: n, reason: collision with root package name */
    public float f14362n = 0.0f;

    /* renamed from: p, reason: collision with root package name */
    public int f14363p = 0;

    /* renamed from: q, reason: collision with root package name */
    public float f14364q = -2.14748365E9f;

    /* renamed from: r, reason: collision with root package name */
    public float f14365r = 2.14748365E9f;

    /* renamed from: t, reason: collision with root package name */
    public boolean f14367t = false;

    public final boolean c() {
        return getSpeed() < 0.0f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void cancel() {
        Iterator it = this.f14356e.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        removeFrameCallback();
    }

    public void clearComposition() {
        this.f14366s = null;
        this.f14364q = -2.14748365E9f;
        this.f14365r = 2.14748365E9f;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j7) {
        postFrameCallback();
        if (this.f14366s == null || !isRunning()) {
            return;
        }
        AbstractC0324c.beginSection("LottieValueAnimator#doFrame");
        long j8 = this.f14361m;
        long j9 = j8 != 0 ? j7 - j8 : 0L;
        C0330i c0330i = this.f14366s;
        float frameRate = j9 / (c0330i == null ? Float.MAX_VALUE : (1.0E9f / c0330i.getFrameRate()) / Math.abs(this.f14359f));
        float f3 = this.f14362n;
        if (c()) {
            frameRate = -frameRate;
        }
        float f7 = f3 + frameRate;
        this.f14362n = f7;
        boolean contains = g.contains(f7, getMinFrame(), getMaxFrame());
        this.f14362n = g.clamp(this.f14362n, getMinFrame(), getMaxFrame());
        this.f14361m = j7;
        b();
        if (!contains) {
            if (getRepeatCount() == -1 || this.f14363p < getRepeatCount()) {
                Iterator it = this.f14356e.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
                }
                this.f14363p++;
                if (getRepeatMode() == 2) {
                    this.f14360j = !this.f14360j;
                    reverseAnimationSpeed();
                } else {
                    this.f14362n = c() ? getMaxFrame() : getMinFrame();
                }
                this.f14361m = j7;
            } else {
                this.f14362n = this.f14359f < 0.0f ? getMinFrame() : getMaxFrame();
                removeFrameCallback();
                a(c());
            }
        }
        if (this.f14366s != null) {
            float f8 = this.f14362n;
            if (f8 < this.f14364q || f8 > this.f14365r) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f14364q), Float.valueOf(this.f14365r), Float.valueOf(this.f14362n)));
            }
        }
        AbstractC0324c.endSection("LottieValueAnimator#doFrame");
    }

    public void endAnimation() {
        removeFrameCallback();
        a(c());
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float minFrame;
        float maxFrame;
        float minFrame2;
        if (this.f14366s == null) {
            return 0.0f;
        }
        if (c()) {
            minFrame = getMaxFrame() - this.f14362n;
            maxFrame = getMaxFrame();
            minFrame2 = getMinFrame();
        } else {
            minFrame = this.f14362n - getMinFrame();
            maxFrame = getMaxFrame();
            minFrame2 = getMinFrame();
        }
        return minFrame / (maxFrame - minFrame2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(getAnimatedValueAbsolute());
    }

    public float getAnimatedValueAbsolute() {
        C0330i c0330i = this.f14366s;
        if (c0330i == null) {
            return 0.0f;
        }
        return (this.f14362n - c0330i.getStartFrame()) / (this.f14366s.getEndFrame() - this.f14366s.getStartFrame());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        C0330i c0330i = this.f14366s;
        if (c0330i == null) {
            return 0L;
        }
        return (long) c0330i.getDuration();
    }

    public float getFrame() {
        return this.f14362n;
    }

    public float getMaxFrame() {
        C0330i c0330i = this.f14366s;
        if (c0330i == null) {
            return 0.0f;
        }
        float f3 = this.f14365r;
        return f3 == 2.14748365E9f ? c0330i.getEndFrame() : f3;
    }

    public float getMinFrame() {
        C0330i c0330i = this.f14366s;
        if (c0330i == null) {
            return 0.0f;
        }
        float f3 = this.f14364q;
        return f3 == -2.14748365E9f ? c0330i.getStartFrame() : f3;
    }

    public float getSpeed() {
        return this.f14359f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f14367t;
    }

    public void pauseAnimation() {
        removeFrameCallback();
    }

    public void playAnimation() {
        this.f14367t = true;
        boolean c7 = c();
        Iterator it = this.f14356e.iterator();
        while (it.hasNext()) {
            Animator.AnimatorListener animatorListener = (Animator.AnimatorListener) it.next();
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, c7);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
        setFrame((int) (c() ? getMaxFrame() : getMinFrame()));
        this.f14361m = 0L;
        this.f14363p = 0;
        postFrameCallback();
    }

    public void postFrameCallback() {
        if (isRunning()) {
            removeFrameCallback(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    public void removeFrameCallback() {
        removeFrameCallback(true);
    }

    public void resumeAnimation() {
        this.f14367t = true;
        postFrameCallback();
        this.f14361m = 0L;
        if (c() && getFrame() == getMinFrame()) {
            this.f14362n = getMaxFrame();
        } else {
            if (c() || getFrame() != getMaxFrame()) {
                return;
            }
            this.f14362n = getMinFrame();
        }
    }

    public void reverseAnimationSpeed() {
        setSpeed(-getSpeed());
    }

    public void setComposition(C0330i c0330i) {
        boolean z6 = this.f14366s == null;
        this.f14366s = c0330i;
        if (z6) {
            setMinAndMaxFrames((int) Math.max(this.f14364q, c0330i.getStartFrame()), (int) Math.min(this.f14365r, c0330i.getEndFrame()));
        } else {
            setMinAndMaxFrames((int) c0330i.getStartFrame(), (int) c0330i.getEndFrame());
        }
        float f3 = this.f14362n;
        this.f14362n = 0.0f;
        setFrame((int) f3);
        b();
    }

    public void setFrame(float f3) {
        if (this.f14362n == f3) {
            return;
        }
        this.f14362n = g.clamp(f3, getMinFrame(), getMaxFrame());
        this.f14361m = 0L;
        b();
    }

    public void setMaxFrame(float f3) {
        setMinAndMaxFrames(this.f14364q, f3);
    }

    public void setMinAndMaxFrames(float f3, float f7) {
        if (f3 > f7) {
            throw new IllegalArgumentException("minFrame (" + f3 + ") must be <= maxFrame (" + f7 + ")");
        }
        C0330i c0330i = this.f14366s;
        float startFrame = c0330i == null ? -3.4028235E38f : c0330i.getStartFrame();
        C0330i c0330i2 = this.f14366s;
        float endFrame = c0330i2 == null ? Float.MAX_VALUE : c0330i2.getEndFrame();
        this.f14364q = g.clamp(f3, startFrame, endFrame);
        this.f14365r = g.clamp(f7, startFrame, endFrame);
        setFrame((int) g.clamp(this.f14362n, f3, f7));
    }

    public void setMinFrame(int i2) {
        setMinAndMaxFrames(i2, (int) this.f14365r);
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i2) {
        super.setRepeatMode(i2);
        if (i2 == 2 || !this.f14360j) {
            return;
        }
        this.f14360j = false;
        reverseAnimationSpeed();
    }

    public void setSpeed(float f3) {
        this.f14359f = f3;
    }

    public void removeFrameCallback(boolean z6) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z6) {
            this.f14367t = false;
        }
    }
}
