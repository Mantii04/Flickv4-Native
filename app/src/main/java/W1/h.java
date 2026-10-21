package W1;

import g2.C0947a;
import g2.C0949c;
import java.util.List;

/* loaded from: classes.dex */
public final class h extends k {
    public h(List<C0947a> list) {
        super(list);
    }

    public final float c(C0947a c0947a, float f3) {
        float f7;
        if (c0947a.f16441b == null || c0947a.f16442c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        C0949c c0949c = this.f4125e;
        if (c0949c != null) {
            f7 = f3;
            Float f8 = (Float) c0949c.getValueInternal(c0947a.f16444e, c0947a.f16445f.floatValue(), c0947a.f16441b, c0947a.f16442c, f7, b(), getProgress());
            if (f8 != null) {
                return f8.floatValue();
            }
        } else {
            f7 = f3;
        }
        return f2.g.lerp(c0947a.getStartValueFloat(), c0947a.getEndValueFloat(), f7);
    }

    public float getFloatValue() {
        return c(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }

    @Override // W1.f
    public final Object getValue(C0947a c0947a, float f3) {
        return Float.valueOf(c(c0947a, f3));
    }
}
