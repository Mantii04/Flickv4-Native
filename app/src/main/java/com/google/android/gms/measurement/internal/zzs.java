package com.google.android.gms.measurement.internal;

import java.util.HashSet;
import p.g;

/* loaded from: classes2.dex */
final class zzs extends zzmy {

    /* renamed from: d, reason: collision with root package name */
    public String f12249d;

    /* renamed from: e, reason: collision with root package name */
    public HashSet f12250e;

    /* renamed from: f, reason: collision with root package name */
    public g f12251f;

    /* renamed from: g, reason: collision with root package name */
    public Long f12252g;

    /* renamed from: h, reason: collision with root package name */
    public Long f12253h;

    public final zzu a(Integer num) {
        if (this.f12251f.containsKey(num)) {
            return (zzu) this.f12251f.get(num);
        }
        zzu zzuVar = new zzu(this, this.f12249d);
        this.f12251f.put(num, zzuVar);
        return zzuVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:402:0x0a06, code lost:
    
        r0 = zzj().zzu();
        r8 = com.google.android.gms.measurement.internal.zzgb.zza(r45.f12249d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x0a18, code lost:
    
        if (r10.zzi() == false) goto L367;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x0a1a, code lost:
    
        r9 = java.lang.Integer.valueOf(r10.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x0a24, code lost:
    
        r0.zza("Invalid property filter ID. appId, id", r8, java.lang.String.valueOf(r9));
        r10 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0a23, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0570  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x073e  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0889 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0895  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0a5c  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x01b8 A[Catch: all -> 0x01b2, SQLiteException -> 0x01b6, TRY_ENTER, TryCatch #6 {SQLiteException -> 0x01b6, blocks: (B:75:0x01a4, B:77:0x01aa, B:477:0x01b8, B:478:0x01bd, B:480:0x01c5, B:481:0x01d7, B:482:0x01f5, B:489:0x01e0), top: B:74:0x01a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0bb9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01aa A[Catch: all -> 0x01b2, SQLiteException -> 0x01b6, TRY_LEAVE, TryCatch #6 {SQLiteException -> 0x01b6, blocks: (B:75:0x01a4, B:77:0x01aa, B:477:0x01b8, B:478:0x01bd, B:480:0x01c5, B:481:0x01d7, B:482:0x01f5, B:489:0x01e0), top: B:74:0x01a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02cb  */
    /* JADX WARN: Type inference failed for: r0v128, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v141, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r5v24, types: [java.util.Map, p.g] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList b(java.lang.String r46, java.util.List r47, java.util.List r48, java.lang.Long r49, java.lang.Long r50) {
        /*
            Method dump skipped, instructions count: 3005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzs.b(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.ArrayList");
    }

    @Override // com.google.android.gms.measurement.internal.zzmy
    public final boolean zzc() {
        return false;
    }
}
