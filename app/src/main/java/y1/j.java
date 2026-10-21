package y1;

import android.animation.TypeEvaluator;

/* loaded from: classes.dex */
public final class j implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public D.f[] f20988a;

    @Override // android.animation.TypeEvaluator
    public D.f[] evaluate(float f3, D.f[] fVarArr, D.f[] fVarArr2) {
        if (!D.g.canMorph(fVarArr, fVarArr2)) {
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
        if (!D.g.canMorph(this.f20988a, fVarArr)) {
            this.f20988a = D.g.deepCopyNodes(fVarArr);
        }
        for (int i2 = 0; i2 < fVarArr.length; i2++) {
            this.f20988a[i2].interpolatePathDataNode(fVarArr[i2], fVarArr2[i2], f3);
        }
        return this.f20988a;
    }
}
