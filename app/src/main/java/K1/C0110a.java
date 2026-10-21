package K1;

/* renamed from: K1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0110a {

    /* renamed from: a, reason: collision with root package name */
    public final String f1628a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1629b;

    public C0110a(String workSpecId, String prerequisiteId) {
        kotlin.jvm.internal.j.checkNotNullParameter(workSpecId, "workSpecId");
        kotlin.jvm.internal.j.checkNotNullParameter(prerequisiteId, "prerequisiteId");
        this.f1628a = workSpecId;
        this.f1629b = prerequisiteId;
    }

    public final String getPrerequisiteId() {
        return this.f1629b;
    }

    public final String getWorkSpecId() {
        return this.f1628a;
    }
}
