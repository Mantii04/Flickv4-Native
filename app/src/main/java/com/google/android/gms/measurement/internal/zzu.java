package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzft;
import com.google.android.gms.internal.measurement.zzou;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import p.g;

/* loaded from: classes2.dex */
final class zzu {

    /* renamed from: a, reason: collision with root package name */
    public final String f12255a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12256b;

    /* renamed from: c, reason: collision with root package name */
    public final zzft.zzl f12257c;

    /* renamed from: d, reason: collision with root package name */
    public final BitSet f12258d;

    /* renamed from: e, reason: collision with root package name */
    public final BitSet f12259e;

    /* renamed from: f, reason: collision with root package name */
    public final g f12260f;

    /* renamed from: g, reason: collision with root package name */
    public final g f12261g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ zzs f12262h;

    public zzu(zzs zzsVar, String str) {
        this.f12262h = zzsVar;
        this.f12255a = str;
        this.f12256b = true;
        this.f12258d = new BitSet();
        this.f12259e = new BitSet();
        this.f12260f = new g();
        this.f12261g = new g();
    }

    public final void a(zzab zzabVar) {
        int a7 = zzabVar.a();
        Boolean bool = zzabVar.f11160c;
        if (bool != null) {
            this.f12259e.set(a7, bool.booleanValue());
        }
        Boolean bool2 = zzabVar.f11161d;
        if (bool2 != null) {
            this.f12258d.set(a7, bool2.booleanValue());
        }
        if (zzabVar.f11162e != null) {
            Integer valueOf = Integer.valueOf(a7);
            g gVar = this.f12260f;
            Long l7 = (Long) gVar.get(valueOf);
            long longValue = zzabVar.f11162e.longValue() / 1000;
            if (l7 == null || longValue > l7.longValue()) {
                gVar.put(Integer.valueOf(a7), Long.valueOf(longValue));
            }
        }
        if (zzabVar.f11163f != null) {
            g gVar2 = this.f12261g;
            List list = (List) gVar2.get(Integer.valueOf(a7));
            if (list == null) {
                list = new ArrayList();
                gVar2.put(Integer.valueOf(a7), list);
            }
            if (zzabVar.g()) {
                list.clear();
            }
            boolean zza = zzou.zza();
            String str = this.f12255a;
            zzs zzsVar = this.f12262h;
            if (zza && zzsVar.zze().zzf(str, zzbh.f11333i0) && zzabVar.f()) {
                list.clear();
            }
            if (!zzou.zza() || !zzsVar.zze().zzf(str, zzbh.f11333i0)) {
                list.add(Long.valueOf(zzabVar.f11163f.longValue() / 1000));
                return;
            }
            long longValue2 = zzabVar.f11163f.longValue() / 1000;
            if (list.contains(Long.valueOf(longValue2))) {
                return;
            }
            list.add(Long.valueOf(longValue2));
        }
    }

    public zzu(zzs zzsVar, String str, zzft.zzl zzlVar, BitSet bitSet, BitSet bitSet2, g gVar, g gVar2) {
        this.f12262h = zzsVar;
        this.f12255a = str;
        this.f12258d = bitSet;
        this.f12259e = bitSet2;
        this.f12260f = gVar;
        this.f12261g = new g();
        Iterator<Object> it = gVar2.keySet().iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) gVar2.get(num));
            this.f12261g.put(num, arrayList);
        }
        this.f12256b = false;
        this.f12257c = zzlVar;
    }
}
