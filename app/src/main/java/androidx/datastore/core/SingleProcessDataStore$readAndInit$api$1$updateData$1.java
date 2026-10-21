package androidx.datastore.core;

import A5.d;
import cz.msebera.android.httpclient.HttpStatus;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1", f = "SingleProcessDataStore.kt", l = {HttpStatus.SC_SERVICE_UNAVAILABLE, 337, 339}, m = "updateData")
/* loaded from: classes.dex */
public final class SingleProcessDataStore$readAndInit$api$1$updateData$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public Object f5667b;

    /* renamed from: e, reason: collision with root package name */
    public Object f5668e;

    /* renamed from: f, reason: collision with root package name */
    public Object f5669f;

    /* renamed from: j, reason: collision with root package name */
    public Ref$ObjectRef f5670j;

    /* renamed from: m, reason: collision with root package name */
    public SingleProcessDataStore f5671m;

    /* renamed from: n, reason: collision with root package name */
    public /* synthetic */ Object f5672n;

    /* renamed from: p, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore$readAndInit$api$1 f5673p;

    /* renamed from: q, reason: collision with root package name */
    public int f5674q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$readAndInit$api$1$updateData$1(SingleProcessDataStore$readAndInit$api$1 singleProcessDataStore$readAndInit$api$1, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5673p = singleProcessDataStore$readAndInit$api$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f5672n = obj;
        this.f5674q |= Integer.MIN_VALUE;
        return this.f5673p.updateData(null, this);
    }
}
