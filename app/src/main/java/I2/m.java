package I2;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* loaded from: classes.dex */
public final class m extends Animation {

    /* renamed from: b, reason: collision with root package name */
    public final l f1314b;

    public m(l lVar) {
        this.f1314b = lVar;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f3, Transformation transformation) {
        this.f1314b.onTimeUpdate(f3);
    }
}
