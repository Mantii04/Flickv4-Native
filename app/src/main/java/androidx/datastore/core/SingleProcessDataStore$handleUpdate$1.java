package androidx.datastore.core;

import A5.d;
import R5.InterfaceC0302v;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {276, 281, 284}, m = "handleUpdate")
/* loaded from: classes.dex */
final class SingleProcessDataStore$handleUpdate$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public Object f5648b;

    /* renamed from: e, reason: collision with root package name */
    public SingleProcessDataStore f5649e;

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC0302v f5650f;

    /* renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f5651j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5652m;

    /* renamed from: n, reason: collision with root package name */
    public int f5653n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$handleUpdate$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5652m = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f5651j = obj;
        this.f5653n |= Integer.MIN_VALUE;
        return SingleProcessDataStore.access$handleUpdate(this.f5652m, null, this);
    }
}
