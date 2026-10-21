package androidx.datastore.core;

import A5.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {359, 362, 365}, m = "readDataOrHandleCorruption")
/* loaded from: classes.dex */
final class SingleProcessDataStore$readDataOrHandleCorruption$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public Object f5688b;

    /* renamed from: e, reason: collision with root package name */
    public Object f5689e;

    /* renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f5690f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5691j;

    /* renamed from: m, reason: collision with root package name */
    public int f5692m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$readDataOrHandleCorruption$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5691j = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f3;
        this.f5690f = obj;
        this.f5692m |= Integer.MIN_VALUE;
        f3 = this.f5691j.f(this);
        return f3;
    }
}
