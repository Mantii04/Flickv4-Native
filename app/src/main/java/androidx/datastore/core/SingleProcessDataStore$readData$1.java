package androidx.datastore.core;

import A5.d;
import java.io.FileInputStream;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {381}, m = "readData")
/* loaded from: classes.dex */
final class SingleProcessDataStore$readData$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public SingleProcessDataStore f5683b;

    /* renamed from: e, reason: collision with root package name */
    public FileInputStream f5684e;

    /* renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f5685f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5686j;

    /* renamed from: m, reason: collision with root package name */
    public int f5687m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$readData$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5686j = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object e3;
        this.f5685f = obj;
        this.f5687m |= Integer.MIN_VALUE;
        e3 = this.f5686j.e(this);
        return e3;
    }
}
