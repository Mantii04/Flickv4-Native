package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.R;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzhi {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f11688a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11689b;

    public zzhi(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f11688a = context.getResources();
        if (TextUtils.isEmpty(str)) {
            this.f11689b = zza(context);
        } else {
            this.f11689b = str;
        }
    }

    public final String zza(String str) {
        String str2 = this.f11689b;
        Resources resources = this.f11688a;
        int identifier = resources.getIdentifier(str, "string", str2);
        if (identifier == 0) {
            return null;
        }
        try {
            return resources.getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static String zza(Context context) {
        try {
            return context.getResources().getResourcePackageName(R.string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException unused) {
            return context.getPackageName();
        }
    }
}
