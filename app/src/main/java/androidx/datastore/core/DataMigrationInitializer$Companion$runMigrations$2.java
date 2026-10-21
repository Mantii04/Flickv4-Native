package androidx.datastore.core;

import A5.d;
import H5.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2", f = "DataMigrationInitializer.kt", l = {44, 46}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class DataMigrationInitializer$Companion$runMigrations$2 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public Iterator f5604b;

    /* renamed from: e, reason: collision with root package name */
    public Object f5605e;

    /* renamed from: f, reason: collision with root package name */
    public int f5606f;

    /* renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f5607j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ List f5608m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ ArrayList f5609n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$2(List list, ArrayList arrayList, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5608m = list;
        this.f5609n = arrayList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        DataMigrationInitializer$Companion$runMigrations$2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(this.f5608m, this.f5609n, interfaceC1944c);
        dataMigrationInitializer$Companion$runMigrations$2.f5607j = obj;
        return dataMigrationInitializer$Companion$runMigrations$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Iterator it;
        List list;
        AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f5606f;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            obj = this.f5607j;
            it = this.f5608m.iterator();
            list = this.f5609n;
        } else if (i2 == 1) {
            Object obj2 = this.f5605e;
            Iterator it2 = this.f5604b;
            List list2 = (List) this.f5607j;
            b.throwOnFailure(obj);
            if (((Boolean) obj).booleanValue()) {
                list2.add(new DataMigrationInitializer$Companion$runMigrations$2$1$1(1, null));
                this.f5607j = list2;
                this.f5604b = it2;
                this.f5605e = null;
                this.f5606f = 2;
                throw null;
            }
            obj = obj2;
            it = it2;
            list = list2;
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = this.f5604b;
            list = (List) this.f5607j;
            b.throwOnFailure(obj);
        }
        if (!it.hasNext()) {
            return obj;
        }
        if (it.next() != null) {
            throw new ClassCastException();
        }
        this.f5607j = list;
        this.f5604b = it;
        this.f5605e = obj;
        this.f5606f = 1;
        throw null;
    }

    @Override // H5.p
    public final Object invoke(Object obj, InterfaceC1944c interfaceC1944c) {
        return ((DataMigrationInitializer$Companion$runMigrations$2) create(obj, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }
}
