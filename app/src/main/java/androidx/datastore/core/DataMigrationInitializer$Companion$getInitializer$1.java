package androidx.datastore.core;

import A5.d;
import H5.p;
import Y.c;
import Y.g;
import java.util.List;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "androidx.datastore.core.DataMigrationInitializer$Companion$getInitializer$1", f = "DataMigrationInitializer.kt", l = {33}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataMigrationInitializer$Companion$getInitializer$1 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f5596b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f5597e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ List f5598f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$getInitializer$1(List list, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5598f = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        DataMigrationInitializer$Companion$getInitializer$1 dataMigrationInitializer$Companion$getInitializer$1 = new DataMigrationInitializer$Companion$getInitializer$1(this.f5598f, interfaceC1944c);
        dataMigrationInitializer$Companion$getInitializer$1.f5597e = obj;
        return dataMigrationInitializer$Companion$getInitializer$1;
    }

    @Override // H5.p
    public final Object invoke(g gVar, InterfaceC1944c interfaceC1944c) {
        return ((DataMigrationInitializer$Companion$getInitializer$1) create(gVar, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f5596b;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            g gVar = (g) this.f5597e;
            DataMigrationInitializer$Companion dataMigrationInitializer$Companion = c.f4253a;
            this.f5596b = 1;
            if (DataMigrationInitializer$Companion.access$runMigrations(dataMigrationInitializer$Companion, this.f5598f, gVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b.throwOnFailure(obj);
        }
        return C1711j.f20329a;
    }
}
