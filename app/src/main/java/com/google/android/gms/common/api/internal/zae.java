package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;

/* loaded from: classes.dex */
public final class zae<A extends BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>> extends zai {

    /* renamed from: b, reason: collision with root package name */
    public final BaseImplementation.ApiMethodImpl f10797b;

    public zae(int i2, A a7) {
        super(i2);
        this.f10797b = (BaseImplementation.ApiMethodImpl) Preconditions.checkNotNull(a7, "Null methods are not runnable.");
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Status status) {
        try {
            this.f10797b.setFailedResult(status);
        } catch (IllegalStateException e3) {
            Log.w("ApiCallRunner", "Exception reporting failure", e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        try {
            this.f10797b.setFailedResult(new Status(10, sb.toString()));
        } catch (IllegalStateException e3) {
            Log.w("ApiCallRunner", "Exception reporting failure", e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabq<?> zabqVar) throws DeadObjectException {
        try {
            this.f10797b.run(zabqVar.zaf());
        } catch (RuntimeException e3) {
            zae(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zag(zaad zaadVar, boolean z6) {
        Boolean valueOf = Boolean.valueOf(z6);
        Map map = zaadVar.f10679a;
        BaseImplementation.ApiMethodImpl apiMethodImpl = this.f10797b;
        map.put(apiMethodImpl, valueOf);
        apiMethodImpl.addStatusListener(new zaab(zaadVar, apiMethodImpl));
    }
}
