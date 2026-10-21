package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.CastUtils;
import com.google.firebase.sessions.settings.RemoteSettings;
import java.util.Collection;
import java.util.Locale;

/* loaded from: classes.dex */
final class zzw {

    /* renamed from: a, reason: collision with root package name */
    public final String f10546a;

    /* renamed from: b, reason: collision with root package name */
    public final Collection f10547b;

    public /* synthetic */ zzw(String str, Collection collection) {
        this.f10546a = str;
        this.f10547b = collection;
    }

    public static /* bridge */ /* synthetic */ String a(zzw zzwVar) {
        StringBuilder sb = new StringBuilder("com.google.android.gms.cast.CATEGORY_CAST");
        String str = zzwVar.f10546a;
        if (str != null) {
            String upperCase = str.toUpperCase(Locale.ROOT);
            if (!upperCase.matches("[A-F0-9]+")) {
                throw new IllegalArgumentException("Invalid application ID: ".concat(str));
            }
            sb.append(RemoteSettings.FORWARD_SLASH_STRING);
            sb.append(upperCase);
        }
        Collection<String> collection = zzwVar.f10547b;
        if (collection != null) {
            if (collection.isEmpty()) {
                throw new IllegalArgumentException("Must specify at least one namespace");
            }
            if (str == null) {
                sb.append(RemoteSettings.FORWARD_SLASH_STRING);
            }
            sb.append(RemoteSettings.FORWARD_SLASH_STRING);
            boolean z6 = true;
            for (String str2 : collection) {
                CastUtils.throwIfInvalidNamespace(str2);
                if (!z6) {
                    sb.append(",");
                }
                sb.append(CastUtils.zzc(str2));
                z6 = false;
            }
        }
        if (str == null && collection == null) {
            sb.append(RemoteSettings.FORWARD_SLASH_STRING);
        }
        if (collection == null) {
            sb.append(RemoteSettings.FORWARD_SLASH_STRING);
        }
        sb.append("//ALLOW_IPV6");
        return sb.toString();
    }
}
