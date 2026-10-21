package k1;

import R5.C0287n;
import android.adservices.measurement.DeletionRequest;
import android.adservices.measurement.MeasurementManager;
import android.adservices.measurement.WebSourceRegistrationRequest;
import android.adservices.measurement.WebTriggerRegistrationRequest;
import android.net.Uri;
import android.view.InputEvent;
import androidx.media3.exoplayer.audio.s;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.j;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* renamed from: k1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1091b extends AbstractC1093d {

    /* renamed from: b, reason: collision with root package name */
    public final MeasurementManager f17248b;

    public C1091b(MeasurementManager mMeasurementManager) {
        j.checkNotNullParameter(mMeasurementManager, "mMeasurementManager");
        this.f17248b = mMeasurementManager;
    }

    public static final DeletionRequest access$convertDeletionRequest(C1091b c1091b, AbstractC1090a abstractC1090a) {
        c1091b.getClass();
        s.m();
        throw null;
    }

    public static final WebSourceRegistrationRequest access$convertWebSourceRequest(C1091b c1091b, AbstractC1094e abstractC1094e) {
        c1091b.getClass();
        s.n();
        throw null;
    }

    public static final WebTriggerRegistrationRequest access$convertWebTriggerRequest(C1091b c1091b, AbstractC1095f abstractC1095f) {
        c1091b.getClass();
        s.e();
        throw null;
    }

    @Override // k1.AbstractC1093d
    public Object deleteRegistrations(AbstractC1090a abstractC1090a, InterfaceC1944c interfaceC1944c) {
        C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.initCancellability();
        this.f17248b.deleteRegistrations(access$convertDeletionRequest(this, abstractC1090a), new androidx.media3.exoplayer.dash.offline.a(0), androidx.core.os.a.asOutcomeReceiver(c0287n));
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result == AbstractC2008a.getCOROUTINE_SUSPENDED() ? result : C1711j.f20329a;
    }

    @Override // k1.AbstractC1093d
    public Object getMeasurementApiStatus(InterfaceC1944c interfaceC1944c) {
        C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.initCancellability();
        this.f17248b.getMeasurementApiStatus(new androidx.media3.exoplayer.dash.offline.a(0), androidx.core.os.a.asOutcomeReceiver(c0287n));
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result;
    }

    @Override // k1.AbstractC1093d
    public Object registerSource(Uri uri, InputEvent inputEvent, InterfaceC1944c interfaceC1944c) {
        C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.initCancellability();
        this.f17248b.registerSource(uri, inputEvent, new androidx.media3.exoplayer.dash.offline.a(0), androidx.core.os.a.asOutcomeReceiver(c0287n));
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result == AbstractC2008a.getCOROUTINE_SUSPENDED() ? result : C1711j.f20329a;
    }

    @Override // k1.AbstractC1093d
    public Object registerTrigger(Uri uri, InterfaceC1944c interfaceC1944c) {
        C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.initCancellability();
        this.f17248b.registerTrigger(uri, new androidx.media3.exoplayer.dash.offline.a(0), androidx.core.os.a.asOutcomeReceiver(c0287n));
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result == AbstractC2008a.getCOROUTINE_SUSPENDED() ? result : C1711j.f20329a;
    }

    @Override // k1.AbstractC1093d
    public Object registerWebSource(AbstractC1094e abstractC1094e, InterfaceC1944c interfaceC1944c) {
        C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.initCancellability();
        this.f17248b.registerWebSource(access$convertWebSourceRequest(this, abstractC1094e), new androidx.media3.exoplayer.dash.offline.a(0), androidx.core.os.a.asOutcomeReceiver(c0287n));
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result == AbstractC2008a.getCOROUTINE_SUSPENDED() ? result : C1711j.f20329a;
    }

    @Override // k1.AbstractC1093d
    public Object registerWebTrigger(AbstractC1095f abstractC1095f, InterfaceC1944c interfaceC1944c) {
        C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.initCancellability();
        this.f17248b.registerWebTrigger(access$convertWebTriggerRequest(this, abstractC1095f), new androidx.media3.exoplayer.dash.offline.a(0), androidx.core.os.a.asOutcomeReceiver(c0287n));
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            A5.f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result == AbstractC2008a.getCOROUTINE_SUSPENDED() ? result : C1711j.f20329a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1091b(android.content.Context r2) {
        /*
            r1 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.j.checkNotNullParameter(r2, r0)
            java.lang.Class r0 = androidx.media3.exoplayer.audio.s.d()
            java.lang.Object r2 = r2.getSystemService(r0)
            java.lang.String r0 = "context.getSystemService…:class.java\n            )"
            kotlin.jvm.internal.j.checkNotNullExpressionValue(r2, r0)
            android.adservices.measurement.MeasurementManager r2 = androidx.media3.exoplayer.audio.s.b(r2)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k1.C1091b.<init>(android.content.Context):void");
    }
}
