package androidx.emoji2.text;

import android.content.pm.PackageManager;
import android.content.pm.Signature;

/* renamed from: androidx.emoji2.text.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0447f extends C0446e {
    @Override // androidx.emoji2.text.AbstractC0445d
    public Signature[] getSigningSignatures(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
        return packageManager.getPackageInfo(str, 64).signatures;
    }
}
