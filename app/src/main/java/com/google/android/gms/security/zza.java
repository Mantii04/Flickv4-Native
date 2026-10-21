package com.google.android.gms.security;

import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

/* loaded from: classes2.dex */
final class zza extends AsyncTask {
    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        try {
            ProviderInstaller.installIfNeeded(null);
            return 0;
        } catch (GooglePlayServicesNotAvailableException e3) {
            return Integer.valueOf(e3.f10565b);
        } catch (GooglePlayServicesRepairableException e7) {
            return Integer.valueOf(e7.getConnectionStatusCode());
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        Integer num = (Integer) obj;
        if (num.intValue() == 0) {
            throw null;
        }
        ProviderInstaller.f12274a.getErrorResolutionIntent(null, num.intValue(), "pi");
        throw null;
    }
}
