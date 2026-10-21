package androidx.datastore.core;

import A5.d;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {426}, m = "writeData$datastore_core")
/* loaded from: classes.dex */
public final class SingleProcessDataStore$writeData$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public SingleProcessDataStore f5702b;

    /* renamed from: e, reason: collision with root package name */
    public File f5703e;

    /* renamed from: f, reason: collision with root package name */
    public FileOutputStream f5704f;

    /* renamed from: j, reason: collision with root package name */
    public FileOutputStream f5705j;

    /* renamed from: m, reason: collision with root package name */
    public /* synthetic */ Object f5706m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5707n;

    /* renamed from: p, reason: collision with root package name */
    public int f5708p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$writeData$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5707n = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f5706m = obj;
        this.f5708p |= Integer.MIN_VALUE;
        return this.f5707n.writeData$datastore_core(null, this);
    }
}
