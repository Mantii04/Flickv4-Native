package B1;

/* renamed from: B1.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0037q {
    public static AbstractC0037q failure() {
        return new C0034n();
    }

    public static AbstractC0037q retry() {
        return new C0035o();
    }

    public static AbstractC0037q success() {
        return new C0036p();
    }

    public static AbstractC0037q success(C0028h c0028h) {
        return new C0036p(c0028h);
    }
}
