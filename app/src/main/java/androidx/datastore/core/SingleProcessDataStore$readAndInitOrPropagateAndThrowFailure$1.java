package androidx.datastore.core;

import A5.d;
import cz.msebera.android.httpclient.HttpStatus;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {HttpStatus.SC_MOVED_TEMPORARILY}, m = "readAndInitOrPropagateAndThrowFailure")
/* loaded from: classes.dex */
final class SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public SingleProcessDataStore f5675b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f5676e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5677f;

    /* renamed from: j, reason: collision with root package name */
    public int f5678j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5677f = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object c7;
        this.f5676e = obj;
        this.f5678j |= Integer.MIN_VALUE;
        c7 = this.f5677f.c(this);
        return c7;
    }
}
