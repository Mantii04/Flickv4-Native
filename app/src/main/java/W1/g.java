package W1;

import f2.AbstractC0921b;
import g2.C0947a;
import g2.C0949c;
import java.util.List;

/* loaded from: classes.dex */
public final class g extends k {
    public g(List<C0947a> list) {
        super(list);
    }

    public int getIntValue(C0947a c0947a, float f3) {
        float f7;
        Object obj = c0947a.f16441b;
        if (obj == null || c0947a.f16442c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        Integer num = (Integer) obj;
        int intValue = num.intValue();
        Integer num2 = (Integer) c0947a.f16442c;
        int intValue2 = num2.intValue();
        C0949c c0949c = this.f4125e;
        if (c0949c != null) {
            f7 = f3;
            Integer num3 = (Integer) c0949c.getValueInternal(c0947a.f16444e, c0947a.f16445f.floatValue(), num, num2, f7, b(), getProgress());
            if (num3 != null) {
                return num3.intValue();
            }
        } else {
            f7 = f3;
        }
        return AbstractC0921b.evaluate(f2.g.clamp(f7, 0.0f, 1.0f), intValue, intValue2);
    }

    @Override // W1.f
    public final Object getValue(C0947a c0947a, float f3) {
        return Integer.valueOf(getIntValue(c0947a, f3));
    }

    public int getIntValue() {
        return getIntValue(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
