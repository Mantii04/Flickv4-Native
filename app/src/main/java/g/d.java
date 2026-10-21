package g;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;

/* loaded from: classes.dex */
public final class d extends f {

    /* renamed from: a, reason: collision with root package name */
    public final ObjectAnimator f16316a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f16317b;

    public d(AnimationDrawable animationDrawable, boolean z6, boolean z7) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i2 = z6 ? numberOfFrames - 1 : 0;
        int i7 = z6 ? 0 : numberOfFrames - 1;
        e eVar = new e();
        int numberOfFrames2 = animationDrawable.getNumberOfFrames();
        eVar.f16319b = numberOfFrames2;
        int[] iArr = eVar.f16318a;
        if (iArr == null || iArr.length < numberOfFrames2) {
            eVar.f16318a = new int[numberOfFrames2];
        }
        int[] iArr2 = eVar.f16318a;
        int i8 = 0;
        for (int i9 = 0; i9 < numberOfFrames2; i9++) {
            int duration = animationDrawable.getDuration(z6 ? (numberOfFrames2 - i9) - 1 : i9);
            iArr2[i9] = duration;
            i8 += duration;
        }
        eVar.f16320c = i8;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i2, i7);
        h.b.setAutoCancel(ofInt, true);
        ofInt.setDuration(eVar.f16320c);
        ofInt.setInterpolator(eVar);
        this.f16317b = z7;
        this.f16316a = ofInt;
    }

    @Override // g.f
    public boolean canReverse() {
        return this.f16317b;
    }

    @Override // g.f
    public void reverse() {
        this.f16316a.reverse();
    }

    @Override // g.f
    public void start() {
        this.f16316a.start();
    }

    @Override // g.f
    public void stop() {
        this.f16316a.cancel();
    }
}
