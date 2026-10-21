package s0;

/* renamed from: s0.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1610f {

    /* renamed from: a, reason: collision with root package name */
    public final int f19913a;

    public AbstractC1610f(int i2) {
        this.f19913a = i2;
    }

    public static String getBoxTypeString(int i2) {
        return "" + ((char) ((i2 >> 24) & 255)) + ((char) ((i2 >> 16) & 255)) + ((char) ((i2 >> 8) & 255)) + ((char) (i2 & 255));
    }

    public String toString() {
        return getBoxTypeString(this.f19913a);
    }
}
