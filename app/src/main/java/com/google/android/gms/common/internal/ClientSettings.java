package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p.i;

@VisibleForTesting
@KeepForSdk
/* loaded from: classes.dex */
public final class ClientSettings {

    /* renamed from: a, reason: collision with root package name */
    public final Account f10845a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f10846b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f10847c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f10848d;

    /* renamed from: e, reason: collision with root package name */
    public final View f10849e;

    /* renamed from: f, reason: collision with root package name */
    public final String f10850f;

    /* renamed from: g, reason: collision with root package name */
    public final String f10851g;

    /* renamed from: h, reason: collision with root package name */
    public final SignInOptions f10852h;

    /* renamed from: i, reason: collision with root package name */
    public Integer f10853i;

    @KeepForSdk
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public Account f10854a;

        /* renamed from: b, reason: collision with root package name */
        public i f10855b;

        /* renamed from: c, reason: collision with root package name */
        public String f10856c;

        /* renamed from: d, reason: collision with root package name */
        public String f10857d;

        @KeepForSdk
        public ClientSettings build() {
            return new ClientSettings(this.f10854a, this.f10855b, null, 0, null, this.f10856c, this.f10857d, SignInOptions.f12278b, false);
        }

        @KeepForSdk
        public Builder setRealClientPackageName(String str) {
            this.f10856c = str;
            return this;
        }

        public final Builder zaa(Collection<Scope> collection) {
            if (this.f10855b == null) {
                this.f10855b = new i();
            }
            this.f10855b.addAll(collection);
            return this;
        }

        public final Builder zab(Account account) {
            this.f10854a = account;
            return this;
        }

        public final Builder zac(String str) {
            this.f10857d = str;
            return this;
        }
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, zab> map, int i2, View view, String str, String str2, SignInOptions signInOptions, boolean z6) {
        this.f10845a = account;
        Set unmodifiableSet = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f10846b = unmodifiableSet;
        map = map == null ? Collections.EMPTY_MAP : map;
        this.f10848d = map;
        this.f10849e = view;
        this.f10850f = str;
        this.f10851g = str2;
        this.f10852h = signInOptions == null ? SignInOptions.f12278b : signInOptions;
        HashSet hashSet = new HashSet(unmodifiableSet);
        Iterator<zab> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().getClass();
            hashSet.addAll(null);
        }
        this.f10847c = Collections.unmodifiableSet(hashSet);
    }

    @KeepForSdk
    public Account getAccount() {
        return this.f10845a;
    }

    @KeepForSdk
    public Account getAccountOrDefault() {
        Account account = this.f10845a;
        return account != null ? account : new Account(BaseGmsClient.DEFAULT_ACCOUNT, "com.google");
    }

    @KeepForSdk
    public Set<Scope> getAllRequestedScopes() {
        return this.f10847c;
    }

    @KeepForSdk
    public String getRealClientPackageName() {
        return this.f10850f;
    }

    @KeepForSdk
    public Set<Scope> getRequiredScopes() {
        return this.f10846b;
    }

    public final SignInOptions zaa() {
        return this.f10852h;
    }

    public final Integer zab() {
        return this.f10853i;
    }

    public final String zac() {
        return this.f10851g;
    }

    public final Map<Api<?>, zab> zad() {
        return this.f10848d;
    }

    public final void zae(Integer num) {
        this.f10853i = num;
    }
}
