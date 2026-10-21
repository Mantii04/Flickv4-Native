package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.C;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import p.g;

/* loaded from: classes.dex */
public final class zzd extends C implements LifecycleFragment {

    /* renamed from: f0, reason: collision with root package name */
    public final Map f10815f0 = Collections.synchronizedMap(new g());

    /* renamed from: g0, reason: collision with root package name */
    public int f10816g0 = 0;

    /* renamed from: h0, reason: collision with root package name */
    public Bundle f10817h0;

    static {
        new WeakHashMap();
    }

    @Override // androidx.fragment.app.C
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator it = this.f10815f0.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final /* synthetic */ Activity getLifecycleActivity() {
        return getActivity();
    }

    @Override // androidx.fragment.app.C
    public final void onActivityResult(int i2, int i7, Intent intent) {
        super.onActivityResult(i2, i7, intent);
        Iterator it = this.f10815f0.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onActivityResult(i2, i7, intent);
        }
    }

    @Override // androidx.fragment.app.C
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f10816g0 = 1;
        this.f10817h0 = bundle;
        for (Map.Entry entry : this.f10815f0.entrySet()) {
            ((LifecycleCallback) entry.getValue()).onCreate(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.C
    public final void onDestroy() {
        super.onDestroy();
        this.f10816g0 = 5;
        Iterator it = this.f10815f0.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onDestroy();
        }
    }

    @Override // androidx.fragment.app.C
    public final void onResume() {
        super.onResume();
        this.f10816g0 = 3;
        Iterator it = this.f10815f0.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onResume();
        }
    }

    @Override // androidx.fragment.app.C
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f10815f0.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((LifecycleCallback) entry.getValue()).onSaveInstanceState(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.C
    public final void onStart() {
        super.onStart();
        this.f10816g0 = 2;
        Iterator it = this.f10815f0.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStart();
        }
    }

    @Override // androidx.fragment.app.C
    public final void onStop() {
        super.onStop();
        this.f10816g0 = 4;
        Iterator it = this.f10815f0.values().iterator();
        while (it.hasNext()) {
            ((LifecycleCallback) it.next()).onStop();
        }
    }
}
