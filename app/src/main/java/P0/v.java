package P0;

import v0.k0;

/* loaded from: classes.dex */
public final class v implements k0 {

    /* renamed from: b, reason: collision with root package name */
    public static final v f2672b = new v(true);

    /* renamed from: c, reason: collision with root package name */
    public static final v f2673c = new v(false);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2674a;

    public v(boolean z6) {
        this.f2674a = z6;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IncorrectFragmentation{expected=");
        sb.append(!this.f2674a);
        sb.append("}");
        return sb.toString();
    }
}
