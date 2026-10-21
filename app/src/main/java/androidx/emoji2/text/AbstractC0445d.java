package androidx.emoji2.text;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import java.util.List;

/* renamed from: androidx.emoji2.text.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0445d {
    public abstract ProviderInfo getProviderInfo(ResolveInfo resolveInfo);

    public Signature[] getSigningSignatures(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    public abstract List<ResolveInfo> queryIntentContentProviders(PackageManager packageManager, Intent intent, int i2);
}
