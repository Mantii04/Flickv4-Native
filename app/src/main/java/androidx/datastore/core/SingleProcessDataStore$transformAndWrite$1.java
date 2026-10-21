package androidx.datastore.core;

import A5.d;
import cz.msebera.android.httpclient.HttpStatus;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {HttpStatus.SC_PAYMENT_REQUIRED, HttpStatus.SC_GONE}, m = "transformAndWrite")
/* loaded from: classes.dex */
final class SingleProcessDataStore$transformAndWrite$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public SingleProcessDataStore f5693b;

    /* renamed from: e, reason: collision with root package name */
    public Object f5694e;

    /* renamed from: f, reason: collision with root package name */
    public Object f5695f;

    /* renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f5696j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5697m;

    /* renamed from: n, reason: collision with root package name */
    public int f5698n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$transformAndWrite$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5697m = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object g7;
        this.f5696j = obj;
        this.f5698n |= Integer.MIN_VALUE;
        g7 = this.f5697m.g(null, null, this);
        return g7;
    }
}
