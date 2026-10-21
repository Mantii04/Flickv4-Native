package androidx.datastore.core;

import A5.d;
import java.io.Serializable;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import y5.InterfaceC1944c;

@d(c = "androidx.datastore.core.DataMigrationInitializer$Companion", f = "DataMigrationInitializer.kt", l = {42, 57}, m = "runMigrations")
/* loaded from: classes.dex */
final class DataMigrationInitializer$Companion$runMigrations$1<T> extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public Serializable f5599b;

    /* renamed from: e, reason: collision with root package name */
    public Iterator f5600e;

    /* renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f5601f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DataMigrationInitializer$Companion f5602j;

    /* renamed from: m, reason: collision with root package name */
    public int f5603m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$1(DataMigrationInitializer$Companion dataMigrationInitializer$Companion, InterfaceC1944c interfaceC1944c) {
        super(interfaceC1944c);
        this.f5602j = dataMigrationInitializer$Companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f5601f = obj;
        this.f5603m |= Integer.MIN_VALUE;
        return DataMigrationInitializer$Companion.access$runMigrations(this.f5602j, null, null, this);
    }
}
