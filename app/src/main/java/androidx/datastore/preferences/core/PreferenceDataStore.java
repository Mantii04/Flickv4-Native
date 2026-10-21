package androidx.datastore.preferences.core;

import H5.p;
import U5.b;
import Y.d;
import kotlin.jvm.internal.j;
import y5.InterfaceC1944c;

/* loaded from: classes.dex */
public final class PreferenceDataStore implements d {

    /* renamed from: a, reason: collision with root package name */
    public final d f5730a;

    public PreferenceDataStore(d delegate) {
        j.checkNotNullParameter(delegate, "delegate");
        this.f5730a = delegate;
    }

    @Override // Y.d
    public b getData() {
        return this.f5730a.getData();
    }

    @Override // Y.d
    public Object updateData(p pVar, InterfaceC1944c interfaceC1944c) {
        return this.f5730a.updateData(new PreferenceDataStore$updateData$2(pVar, null), interfaceC1944c);
    }
}
