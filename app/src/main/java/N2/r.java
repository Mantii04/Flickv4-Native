package N2;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;

/* loaded from: classes.dex */
public abstract class r extends q {

    /* renamed from: K, reason: collision with root package name */
    public final q[] f2325K;

    /* renamed from: L, reason: collision with root package name */
    public int f2326L;

    public r() {
        q[] onCreateChild = onCreateChild();
        this.f2325K = onCreateChild;
        if (onCreateChild != null) {
            for (q qVar : onCreateChild) {
                qVar.setCallback(this);
            }
        }
        onChildCreated(this.f2325K);
    }

    @Override // N2.q, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        drawChild(canvas);
    }

    public void drawChild(Canvas canvas) {
        q[] qVarArr = this.f2325K;
        if (qVarArr != null) {
            for (q qVar : qVarArr) {
                int save = canvas.save();
                qVar.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
    }

    public q getChildAt(int i2) {
        q[] qVarArr = this.f2325K;
        if (qVarArr == null) {
            return null;
        }
        return qVarArr[i2];
    }

    public int getChildCount() {
        q[] qVarArr = this.f2325K;
        if (qVarArr == null) {
            return 0;
        }
        return qVarArr.length;
    }

    @Override // N2.q
    public int getColor() {
        return this.f2326L;
    }

    @Override // N2.q, android.graphics.drawable.Animatable
    public boolean isRunning() {
        return L2.a.isRunning(this.f2325K) || super.isRunning();
    }

    @Override // N2.q, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        for (q qVar : this.f2325K) {
            qVar.setBounds(rect);
        }
    }

    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        return null;
    }

    public abstract q[] onCreateChild();

    @Override // N2.q
    public void setColor(int i2) {
        this.f2326L = i2;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            getChildAt(i7).setColor(i2);
        }
    }

    @Override // N2.q, android.graphics.drawable.Animatable
    public void start() {
        super.start();
        L2.a.start(this.f2325K);
    }

    @Override // N2.q, android.graphics.drawable.Animatable
    public void stop() {
        super.stop();
        L2.a.stop(this.f2325K);
    }

    @Override // N2.q
    public void drawSelf(Canvas canvas) {
    }

    public void onChildCreated(q... qVarArr) {
    }
}
