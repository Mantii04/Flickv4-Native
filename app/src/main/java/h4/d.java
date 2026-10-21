package h4;

/* loaded from: classes2.dex */
public final class d implements o {
    @Override // h4.o
    public Float evaluate(float f3, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(((number2.floatValue() - floatValue) * f3) + floatValue);
    }
}
