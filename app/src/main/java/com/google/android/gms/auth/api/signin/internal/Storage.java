package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

@KeepForSdk
/* loaded from: classes.dex */
public class Storage {

    /* renamed from: c, reason: collision with root package name */
    public static final ReentrantLock f9563c = new ReentrantLock();

    /* renamed from: d, reason: collision with root package name */
    public static Storage f9564d;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantLock f9565a = new ReentrantLock();

    /* renamed from: b, reason: collision with root package name */
    public final SharedPreferences f9566b;

    public Storage(Context context) {
        this.f9566b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @KeepForSdk
    public static Storage getInstance(Context context) {
        Preconditions.checkNotNull(context);
        ReentrantLock reentrantLock = f9563c;
        reentrantLock.lock();
        try {
            if (f9564d == null) {
                f9564d = new Storage(context.getApplicationContext());
            }
            Storage storage = f9564d;
            reentrantLock.unlock();
            return storage;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @KeepForSdk
    public GoogleSignInAccount getSavedDefaultGoogleSignInAccount() {
        String zaa = zaa("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(zaa)) {
            return null;
        }
        StringBuilder sb = new StringBuilder("googleSignInAccount".length() + 1 + String.valueOf(zaa).length());
        sb.append("googleSignInAccount");
        sb.append(":");
        sb.append(zaa);
        String zaa2 = zaa(sb.toString());
        if (zaa2 != null) {
            try {
                return GoogleSignInAccount.zab(zaa2);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public final String zaa(String str) {
        ReentrantLock reentrantLock = this.f9565a;
        reentrantLock.lock();
        try {
            return this.f9566b.getString(str, null);
        } finally {
            reentrantLock.unlock();
        }
    }
}
