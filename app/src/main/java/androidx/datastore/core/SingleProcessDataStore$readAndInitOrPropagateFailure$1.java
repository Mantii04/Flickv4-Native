package androidx.datastore.core;

import A5.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {311}, m = "readAndInitOrPropagateFailure")
/* loaded from: classes.dex */
final class SingleProcessDataStore$readAndInitOrPropagateFailure$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public SingleProcessDataStore f5679b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f5680e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5681f;

    /* renamed from: j, reason: collision with root package name */
    public int f5682j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$readAndInitOrPropagateFailure$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5681f = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d7;
        this.f5680e = obj;
        this.f5682j |= Integer.MIN_VALUE;
        d7 = this.f5681f.d(this);
        return d7;
    }
}
