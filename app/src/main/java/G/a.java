package G;

/* loaded from: classes.dex */
public abstract class a {
    public static float clamp(float f3, float f7, float f8) {
        return f3 < f7 ? f7 : f3 > f8 ? f8 : f3;
    }

    public static int clamp(int i2, int i7, int i8) {
        return i2 < i7 ? i7 : i2 > i8 ? i8 : i2;
    }
}
