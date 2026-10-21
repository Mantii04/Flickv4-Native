package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.R;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public class StringResourceValueReader {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f10902a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10903b;

    public StringResourceValueReader(Context context) {
        Preconditions.checkNotNull(context);
        Resources resources = context.getResources();
        this.f10902a = resources;
        this.f10903b = resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    @KeepForSdk
    public String getString(String str) {
        Resources resources = this.f10902a;
        int identifier = resources.getIdentifier(str, "string", this.f10903b);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }
}
