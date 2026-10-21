package androidx.datastore.core;

import A5.d;
import H5.l;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1", f = "DataMigrationInitializer.kt", l = {45}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataMigrationInitializer$Companion$runMigrations$2$1$1 extends SuspendLambda implements l {

    /* renamed from: b, reason: collision with root package name */
    public int f5610b;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(InterfaceC1944c interfaceC1944c) {
        return new DataMigrationInitializer$Companion$runMigrations$2$1$1(1, interfaceC1944c);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f5610b;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            this.f5610b = 1;
            throw null;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        b.throwOnFailure(obj);
        return C1711j.f20329a;
    }

    @Override // H5.l
    public final Object invoke(InterfaceC1944c interfaceC1944c) {
        return ((DataMigrationInitializer$Companion$runMigrations$2$1$1) create(interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }
}
