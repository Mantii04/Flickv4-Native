package androidx.datastore.core;

import A5.d;
import cz.msebera.android.httpclient.HttpStatus;
import java.io.Serializable;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.SingleProcessDataStore", f = "SingleProcessDataStore.kt", l = {322, 348, HttpStatus.SC_HTTP_VERSION_NOT_SUPPORTED}, m = "readAndInit")
/* loaded from: classes.dex */
final class SingleProcessDataStore$readAndInit$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public SingleProcessDataStore f5654b;

    /* renamed from: e, reason: collision with root package name */
    public Object f5655e;

    /* renamed from: f, reason: collision with root package name */
    public Serializable f5656f;

    /* renamed from: j, reason: collision with root package name */
    public Object f5657j;

    /* renamed from: m, reason: collision with root package name */
    public SingleProcessDataStore$readAndInit$api$1 f5658m;

    /* renamed from: n, reason: collision with root package name */
    public Iterator f5659n;

    /* renamed from: p, reason: collision with root package name */
    public /* synthetic */ Object f5660p;

    /* renamed from: q, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5661q;

    /* renamed from: r, reason: collision with root package name */
    public int f5662r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$readAndInit$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5661q = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object b7;
        this.f5660p = obj;
        this.f5662r |= Integer.MIN_VALUE;
        b7 = this.f5661q.b(this);
        return b7;
    }
}
