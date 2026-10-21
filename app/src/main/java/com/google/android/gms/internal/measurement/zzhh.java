package com.google.android.gms.internal.measurement;

import A.i;
import android.content.Context;
import android.net.Uri;
import p.g;

/* loaded from: classes2.dex */
public final class zzhh {
    private static final g zza = new g();

    public static synchronized Uri zza(String str) {
        Uri uri;
        synchronized (zzhh.class) {
            g gVar = zza;
            uri = (Uri) gVar.get(str);
            if (uri == null) {
                uri = Uri.parse("content://com.google.android.gms.phenotype/" + Uri.encode(str));
                gVar.put(str, uri);
            }
        }
        return uri;
    }

    public static String zza(Context context, String str) {
        if (!str.contains("#")) {
            return i.C(str, "#", context.getPackageName());
        }
        throw new IllegalArgumentException("The passed in package cannot already have a subpackage: ".concat(str));
    }

    public static boolean zza(String str, String str2) {
        if (str.equals("eng") || str.equals("userdebug")) {
            return str2.contains("dev-keys") || str2.contains("test-keys");
        }
        return false;
    }
}
