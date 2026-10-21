package androidx.privacysandbox.ads.adservices.java.measurement;

import R5.AbstractC0277i;
import R5.J;
import R5.N;
import R5.U;
import V3.F;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import j1.AbstractC1039b;
import k1.AbstractC1090a;
import k1.AbstractC1093d;
import k1.AbstractC1094e;
import k1.AbstractC1095f;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class MeasurementManagerFutures$Api33Ext5JavaImpl extends AbstractC1039b {

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC1093d f7949b;

    public MeasurementManagerFutures$Api33Ext5JavaImpl(AbstractC1093d mMeasurementManager) {
        j.checkNotNullParameter(mMeasurementManager, "mMeasurementManager");
        this.f7949b = mMeasurementManager;
    }

    public F deleteRegistrationsAsync(AbstractC1090a deletionRequest) {
        N async$default;
        j.checkNotNullParameter(deletionRequest, "deletionRequest");
        async$default = AbstractC0277i.async$default(J.CoroutineScope(U.getDefault()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this, null), 3, null);
        return CoroutineAdapterKt.asListenableFuture$default(async$default, null, 1, null);
    }

    @Override // j1.AbstractC1039b
    public F getMeasurementApiStatusAsync() {
        N async$default;
        async$default = AbstractC0277i.async$default(J.CoroutineScope(U.getDefault()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this, null), 3, null);
        return CoroutineAdapterKt.asListenableFuture$default(async$default, null, 1, null);
    }

    public F registerSourceAsync(Uri attributionSource, InputEvent inputEvent) {
        N async$default;
        j.checkNotNullParameter(attributionSource, "attributionSource");
        async$default = AbstractC0277i.async$default(J.CoroutineScope(U.getDefault()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this, attributionSource, inputEvent, null), 3, null);
        return CoroutineAdapterKt.asListenableFuture$default(async$default, null, 1, null);
    }

    @Override // j1.AbstractC1039b
    public F registerTriggerAsync(Uri trigger) {
        N async$default;
        j.checkNotNullParameter(trigger, "trigger");
        async$default = AbstractC0277i.async$default(J.CoroutineScope(U.getDefault()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this, trigger, null), 3, null);
        return CoroutineAdapterKt.asListenableFuture$default(async$default, null, 1, null);
    }

    public F registerWebSourceAsync(AbstractC1094e request) {
        N async$default;
        j.checkNotNullParameter(request, "request");
        async$default = AbstractC0277i.async$default(J.CoroutineScope(U.getDefault()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this, null), 3, null);
        return CoroutineAdapterKt.asListenableFuture$default(async$default, null, 1, null);
    }

    public F registerWebTriggerAsync(AbstractC1095f request) {
        N async$default;
        j.checkNotNullParameter(request, "request");
        async$default = AbstractC0277i.async$default(J.CoroutineScope(U.getDefault()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1(this, null), 3, null);
        return CoroutineAdapterKt.asListenableFuture$default(async$default, null, 1, null);
    }
}
