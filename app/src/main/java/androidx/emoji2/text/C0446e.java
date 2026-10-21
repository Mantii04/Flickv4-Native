package androidx.emoji2.text;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import java.util.List;

/* renamed from: androidx.emoji2.text.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0446e extends AbstractC0445d {
    @Override // androidx.emoji2.text.AbstractC0445d
    public ProviderInfo getProviderInfo(ResolveInfo resolveInfo) {
        return resolveInfo.providerInfo;
    }

    @Override // androidx.emoji2.text.AbstractC0445d
    public List<ResolveInfo> queryIntentContentProviders(PackageManager packageManager, Intent intent, int i2) {
        return packageManager.queryIntentContentProviders(intent, i2);
    }
}
