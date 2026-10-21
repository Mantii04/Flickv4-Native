package androidx.privacysandbox.ads.adservices.java.measurement;

import A5.d;
import H5.p;
import R5.I;
import android.net.Uri;
import k1.AbstractC1093d;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1", f = "MeasurementManagerFutures.kt", l = {141}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f7958b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MeasurementManagerFutures$Api33Ext5JavaImpl f7959e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Uri f7960f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(MeasurementManagerFutures$Api33Ext5JavaImpl measurementManagerFutures$Api33Ext5JavaImpl, Uri uri, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f7959e = measurementManagerFutures$Api33Ext5JavaImpl;
        this.f7960f = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        return new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this.f7959e, this.f7960f, interfaceC1944c);
    }

    @Override // H5.p
    public final Object invoke(I i2, InterfaceC1944c interfaceC1944c) {
        return ((MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1) create(i2, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC1093d abstractC1093d;
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f7958b;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            abstractC1093d = this.f7959e.f7949b;
            this.f7958b = 1;
            if (abstractC1093d.registerTrigger(this.f7960f, this) == coroutine_suspended) {
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
