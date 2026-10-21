package R5;

/* renamed from: R5.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0306z {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3205a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0279j f3206b;

    /* renamed from: c, reason: collision with root package name */
    public final H5.l f3207c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f3208d;

    /* renamed from: e, reason: collision with root package name */
    public final Throwable f3209e;

    public C0306z(Object obj, AbstractC0279j abstractC0279j, H5.l lVar, Object obj2, Throwable th) {
        this.f3205a = obj;
        this.f3206b = abstractC0279j;
        this.f3207c = lVar;
        this.f3208d = obj2;
        this.f3209e = th;
    }

    public static /* synthetic */ C0306z copy$default(C0306z c0306z, Object obj, AbstractC0279j abstractC0279j, H5.l lVar, Object obj2, Throwable th, int i2, Object obj3) {
        if ((i2 & 1) != 0) {
            obj = c0306z.f3205a;
        }
        if ((i2 & 2) != 0) {
            abstractC0279j = c0306z.f3206b;
        }
        if ((i2 & 4) != 0) {
            lVar = c0306z.f3207c;
        }
        if ((i2 & 8) != 0) {
            obj2 = c0306z.f3208d;
        }
        if ((i2 & 16) != 0) {
            th = c0306z.f3209e;
        }
        Throwable th2 = th;
        H5.l lVar2 = lVar;
        return c0306z.copy(obj, abstractC0279j, lVar2, obj2, th2);
    }

    public final C0306z copy(Object obj, AbstractC0279j abstractC0279j, H5.l lVar, Object obj2, Throwable th) {
        return new C0306z(obj, abstractC0279j, lVar, obj2, th);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0306z)) {
            return false;
        }
        C0306z c0306z = (C0306z) obj;
        return kotlin.jvm.internal.j.areEqual(this.f3205a, c0306z.f3205a) && kotlin.jvm.internal.j.areEqual(this.f3206b, c0306z.f3206b) && kotlin.jvm.internal.j.areEqual(this.f3207c, c0306z.f3207c) && kotlin.jvm.internal.j.areEqual(this.f3208d, c0306z.f3208d) && kotlin.jvm.internal.j.areEqual(this.f3209e, c0306z.f3209e);
    }

    public final boolean getCancelled() {
        return this.f3209e != null;
    }

    public int hashCode() {
        Object obj = this.f3205a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        AbstractC0279j abstractC0279j = this.f3206b;
        int hashCode2 = (hashCode + (abstractC0279j == null ? 0 : abstractC0279j.hashCode())) * 31;
        H5.l lVar = this.f3207c;
        int hashCode3 = (hashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.f3208d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f3209e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final void invokeHandlers(C0287n c0287n, Throwable th) {
        AbstractC0279j abstractC0279j = this.f3206b;
        if (abstractC0279j != null) {
            c0287n.callCancelHandler(abstractC0279j, th);
        }
        H5.l lVar = this.f3207c;
        if (lVar != null) {
            c0287n.callOnCancellation(lVar, th);
        }
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f3205a + ", cancelHandler=" + this.f3206b + ", onCancellation=" + this.f3207c + ", idempotentResume=" + this.f3208d + ", cancelCause=" + this.f3209e + ')';
    }

    public /* synthetic */ C0306z(Object obj, AbstractC0279j abstractC0279j, H5.l lVar, Object obj2, Throwable th, int i2, kotlin.jvm.internal.g gVar) {
        this(obj, (i2 & 2) != 0 ? null : abstractC0279j, (i2 & 4) != 0 ? null : lVar, (i2 & 8) != 0 ? null : obj2, (i2 & 16) != 0 ? null : th);
    }
}
