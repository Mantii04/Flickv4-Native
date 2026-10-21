package Y;

import R5.InterfaceC0302v;
import y5.InterfaceC1952k;

/* loaded from: classes.dex */
public final class l extends m {

    /* renamed from: a, reason: collision with root package name */
    public final H5.p f4258a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0302v f4259b;

    /* renamed from: c, reason: collision with root package name */
    public final p f4260c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1952k f4261d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(H5.p transform, InterfaceC0302v ack, p pVar, InterfaceC1952k callerContext) {
        super(null);
        kotlin.jvm.internal.j.checkNotNullParameter(transform, "transform");
        kotlin.jvm.internal.j.checkNotNullParameter(ack, "ack");
        kotlin.jvm.internal.j.checkNotNullParameter(callerContext, "callerContext");
        this.f4258a = transform;
        this.f4259b = ack;
        this.f4260c = pVar;
        this.f4261d = callerContext;
    }

    public final InterfaceC0302v getAck() {
        return this.f4259b;
    }

    public final InterfaceC1952k getCallerContext() {
        return this.f4261d;
    }

    public p getLastState() {
        return this.f4260c;
    }

    public final H5.p getTransform() {
        return this.f4258a;
    }
}
