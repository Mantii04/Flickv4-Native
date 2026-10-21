package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import b.c;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzft;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzon;
import com.google.android.gms.internal.measurement.zzpy;
import com.google.android.gms.internal.measurement.zzqk;
import com.google.android.gms.measurement.internal.zziq;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class zznm extends zzmy {
    public static void A(StringBuilder sb, String str, zzft.zzl zzlVar) {
        if (zzlVar == null) {
            return;
        }
        v(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (zzlVar.zzb() != 0) {
            v(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l7 : zzlVar.zzi()) {
                int i7 = i2 + 1;
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l7);
                i2 = i7;
            }
            sb.append('\n');
        }
        if (zzlVar.zzd() != 0) {
            v(sb, 4);
            sb.append("status: ");
            int i8 = 0;
            for (Long l8 : zzlVar.zzk()) {
                int i9 = i8 + 1;
                if (i8 != 0) {
                    sb.append(", ");
                }
                sb.append(l8);
                i8 = i9;
            }
            sb.append('\n');
        }
        if (zzlVar.zza() != 0) {
            v(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i10 = 0;
            for (zzft.zzd zzdVar : zzlVar.zzh()) {
                int i11 = i10 + 1;
                if (i10 != 0) {
                    sb.append(", ");
                }
                sb.append(zzdVar.zzf() ? Integer.valueOf(zzdVar.zza()) : null);
                sb.append(":");
                sb.append(zzdVar.zze() ? Long.valueOf(zzdVar.zzb()) : null);
                i10 = i11;
            }
            sb.append("}\n");
        }
        if (zzlVar.zzc() != 0) {
            v(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i12 = 0;
            for (zzft.zzm zzmVar : zzlVar.zzj()) {
                int i13 = i12 + 1;
                if (i12 != 0) {
                    sb.append(", ");
                }
                sb.append(zzmVar.zzf() ? Integer.valueOf(zzmVar.zzb()) : null);
                sb.append(": [");
                Iterator<Long> it = zzmVar.zze().iterator();
                int i14 = 0;
                while (it.hasNext()) {
                    long longValue = it.next().longValue();
                    int i15 = i14 + 1;
                    if (i14 != 0) {
                        sb.append(", ");
                    }
                    sb.append(longValue);
                    i14 = i15;
                }
                sb.append("]");
                i12 = i13;
            }
            sb.append("}\n");
        }
        v(sb, 3);
        sb.append("}\n");
    }

    public static boolean B(int i2, List list) {
        if (i2 < (list.size() << 6)) {
            return ((1 << (i2 % 64)) & ((Long) list.get(i2 / 64)).longValue()) != 0;
        }
        return false;
    }

    public static Bundle D(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzft.zzg zzgVar = (zzft.zzg) it.next();
            String zzg = zzgVar.zzg();
            if (zzgVar.zzj()) {
                bundle.putString(zzg, String.valueOf(zzgVar.zza()));
            } else if (zzgVar.zzk()) {
                bundle.putString(zzg, String.valueOf(zzgVar.zzb()));
            } else if (zzgVar.zzn()) {
                bundle.putString(zzg, zzgVar.zzh());
            } else if (zzgVar.zzl()) {
                bundle.putString(zzg, String.valueOf(zzgVar.zzd()));
            }
        }
        return bundle;
    }

    /* JADX WARN: Type inference failed for: r6v9, types: [android.os.Bundle[], java.io.Serializable] */
    public static Serializable E(zzft.zze zzeVar, String str) {
        zzft.zzg f3 = f(zzeVar, str);
        if (f3 == null) {
            return null;
        }
        if (f3.zzn()) {
            return f3.zzh();
        }
        if (f3.zzl()) {
            return Long.valueOf(f3.zzd());
        }
        if (f3.zzj()) {
            return Double.valueOf(f3.zza());
        }
        if (f3.zzc() <= 0) {
            return null;
        }
        List<zzft.zzg> zzi = f3.zzi();
        ArrayList arrayList = new ArrayList();
        for (zzft.zzg zzgVar : zzi) {
            if (zzgVar != null) {
                Bundle bundle = new Bundle();
                for (zzft.zzg zzgVar2 : zzgVar.zzi()) {
                    if (zzgVar2.zzn()) {
                        bundle.putString(zzgVar2.zzg(), zzgVar2.zzh());
                    } else if (zzgVar2.zzl()) {
                        bundle.putLong(zzgVar2.zzg(), zzgVar2.zzd());
                    } else if (zzgVar2.zzj()) {
                        bundle.putDouble(zzgVar2.zzg(), zzgVar2.zza());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static boolean F(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static Bundle H(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzft.zzn zznVar = (zzft.zzn) it.next();
            String zzg = zznVar.zzg();
            if (zznVar.zzi()) {
                bundle.putString(zzg, String.valueOf(zznVar.zza()));
            } else if (zznVar.zzj()) {
                bundle.putString(zzg, String.valueOf(zznVar.zzb()));
            } else if (zznVar.zzm()) {
                bundle.putString(zzg, zznVar.zzh());
            } else if (zznVar.zzk()) {
                bundle.putString(zzg, String.valueOf(zznVar.zzc()));
            }
        }
        return bundle;
    }

    public static int a(zzft.zzj.zza zzaVar, String str) {
        if (zzaVar == null) {
            return -1;
        }
        for (int i2 = 0; i2 < zzaVar.zzd(); i2++) {
            if (str.equals(zzaVar.zzk(i2).zzg())) {
                return i2;
            }
        }
        return -1;
    }

    public static Bundle c(Map map, boolean z6) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z6) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    arrayList2.add(c((Map) obj2, false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public static zzft.zzg f(zzft.zze zzeVar, String str) {
        for (zzft.zzg zzgVar : zzeVar.zzh()) {
            if (zzgVar.zzg().equals(str)) {
                return zzgVar;
            }
        }
        return null;
    }

    public static com.google.android.gms.internal.measurement.zzlf g(zzjt.zza zzaVar, byte[] bArr) {
        com.google.android.gms.internal.measurement.zzjg zza = com.google.android.gms.internal.measurement.zzjg.zza();
        return zza != null ? zzaVar.zza(bArr, zza) : zzaVar.zza(bArr);
    }

    public static zzbf h(com.google.android.gms.internal.measurement.zzad zzadVar) {
        Object obj;
        Bundle c7 = c(zzadVar.zzc(), true);
        String obj2 = (!c7.containsKey("_o") || (obj = c7.get("_o")) == null) ? "app" : obj.toString();
        String zzb = zzit.zzb(zzadVar.zzb());
        if (zzb == null) {
            zzb = zzadVar.zzb();
        }
        return new zzbf(zzb, new zzba(c7), obj2, zzadVar.zza());
    }

    public static String l(boolean z6, boolean z7, boolean z8) {
        StringBuilder sb = new StringBuilder();
        if (z6) {
            sb.append("Dynamic ");
        }
        if (z7) {
            sb.append("Sequence ");
        }
        if (z8) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    public static ArrayList m(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            long j7 = 0;
            for (int i7 = 0; i7 < 64; i7++) {
                int i8 = (i2 << 6) + i7;
                if (i8 < bitSet.length()) {
                    if (bitSet.get(i8)) {
                        j7 |= 1 << i7;
                    }
                }
            }
            arrayList.add(Long.valueOf(j7));
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r5 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (r4 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        r3 = (android.os.Parcelable[]) r3;
        r4 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        if (r7 >= r4) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        r5.add(n((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0080, code lost:
    
        r0.put(r2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        if ((r3 instanceof java.util.ArrayList) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        r3 = (java.util.ArrayList) r3;
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
    
        if (r7 >= r4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
    
        r8 = r3.get(r7);
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
    
        r5.add(n((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
    
        if ((r3 instanceof android.os.Bundle) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0077, code lost:
    
        r5.add(n((android.os.Bundle) r3, false));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap n(android.os.Bundle r10, boolean r11) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r10.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L84
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r10.get(r2)
            boolean r4 = r3 instanceof android.os.Parcelable[]
            if (r4 != 0) goto L30
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 != 0) goto L30
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto L2a
            goto L30
        L2a:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L30:
            if (r11 == 0) goto Ld
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r6 = 0
            if (r4 == 0) goto L52
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r4 = r3.length
            r7 = r6
        L3e:
            if (r7 >= r4) goto L80
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L4f
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.HashMap r8 = n(r8, r6)
            r5.add(r8)
        L4f:
            int r7 = r7 + 1
            goto L3e
        L52:
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 == 0) goto L73
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r4 = r3.size()
            r7 = r6
        L5d:
            if (r7 >= r4) goto L80
            java.lang.Object r8 = r3.get(r7)
            int r7 = r7 + 1
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L5d
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.HashMap r8 = n(r8, r6)
            r5.add(r8)
            goto L5d
        L73:
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L80
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.HashMap r3 = n(r3, r6)
            r5.add(r3)
        L80:
            r0.put(r2, r5)
            goto Ld
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznm.n(android.os.Bundle, boolean):java.util.HashMap");
    }

    public static void p(Uri.Builder builder, String str, String str2, Set set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    public static void q(Uri.Builder builder, String[] strArr, Bundle bundle, Set set) {
        for (String str : strArr) {
            String[] split = str.split(",");
            String str2 = split[0];
            String str3 = split[split.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                p(builder, str3, string, set);
            }
        }
    }

    public static void r(zzft.zze.zza zzaVar, String str, Long l7) {
        List<zzft.zzg> zzf = zzaVar.zzf();
        int i2 = 0;
        while (true) {
            if (i2 >= zzf.size()) {
                i2 = -1;
                break;
            } else if (str.equals(zzf.get(i2).zzg())) {
                break;
            } else {
                i2++;
            }
        }
        zzft.zzg.zza zza = zzft.zzg.zze().zza(str);
        if (l7 instanceof Long) {
            zza.zza(l7.longValue());
        }
        if (i2 >= 0) {
            zzaVar.zza(i2, zza);
        } else {
            zzaVar.zza(zza);
        }
    }

    public static void v(StringBuilder sb, int i2) {
        for (int i7 = 0; i7 < i2; i7++) {
            sb.append("  ");
        }
    }

    public static void x(StringBuilder sb, int i2, String str, zzfh.zzd zzdVar) {
        if (zzdVar == null) {
            return;
        }
        v(sb, i2);
        sb.append(str);
        sb.append(" {\n");
        if (zzdVar.zzh()) {
            y(sb, i2, "comparison_type", zzdVar.zza().name());
        }
        if (zzdVar.zzj()) {
            y(sb, i2, "match_as_float", Boolean.valueOf(zzdVar.zzg()));
        }
        if (zzdVar.zzi()) {
            y(sb, i2, "comparison_value", zzdVar.zzd());
        }
        if (zzdVar.zzl()) {
            y(sb, i2, "min_comparison_value", zzdVar.zzf());
        }
        if (zzdVar.zzk()) {
            y(sb, i2, "max_comparison_value", zzdVar.zze());
        }
        v(sb, i2);
        sb.append("}\n");
    }

    public static void y(StringBuilder sb, int i2, String str, Object obj) {
        if (obj == null) {
            return;
        }
        v(sb, i2 + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    public final boolean C(long j7, long j8) {
        return j7 == 0 || j8 <= 0 || Math.abs(zzb().currentTimeMillis() - j7) > j8;
    }

    public final byte[] G(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e3) {
            zzj().zzg().zza("Failed to gzip content", e3);
            throw e3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ef A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean I(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznm.I(java.lang.String):boolean");
    }

    public final byte[] J(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (IOException e3) {
            zzj().zzg().zza("Failed to ungzip content", e3);
            throw e3;
        }
    }

    public final ArrayList K() {
        Map<String, String> zza = zzbh.zza(this.f12138b.zza());
        if (zza != null && !zza.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int intValue = ((Integer) zzbh.f11294Q.zza(null)).intValue();
            for (Map.Entry<String, String> entry : zza.entrySet()) {
                if (entry.getKey().startsWith("measurement.id.")) {
                    try {
                        int parseInt = Integer.parseInt(entry.getValue());
                        if (parseInt != 0) {
                            arrayList.add(Integer.valueOf(parseInt));
                            if (arrayList.size() >= intValue) {
                                zzj().zzu().zza("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                                break;
                            }
                            continue;
                        } else {
                            continue;
                        }
                    } catch (NumberFormatException e3) {
                        zzj().zzu().zza("Experiment ID NumberFormatException", e3);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
        }
        return null;
    }

    public final long b(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        zzq().zzt();
        MessageDigest P6 = zznt.P();
        if (P6 != null) {
            return zznt.d(P6.digest(bArr));
        }
        zzj().zzg().zza("Failed to get MD5");
        return 0L;
    }

    public final Parcelable d(byte[] bArr, Parcelable.Creator creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return (Parcelable) creator.createFromParcel(obtain);
        } catch (SafeParcelReader.ParseException unused) {
            zzj().zzg().zza("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    public final zzft.zze e(zzay zzayVar) {
        zzft.zze.zza zza = zzft.zze.zze().zza(zzayVar.f11234e);
        zzba zzbaVar = zzayVar.f11235f;
        Iterator<String> it = zzbaVar.iterator();
        while (it.hasNext()) {
            String next = it.next();
            zzft.zzg.zza zza2 = zzft.zzg.zze().zza(next);
            Object obj = zzbaVar.f11244b.get(next);
            Preconditions.checkNotNull(obj);
            s(zza2, obj);
            zza.zza(zza2);
        }
        return (zzft.zze) ((com.google.android.gms.internal.measurement.zzjt) zza.zzah());
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zznm g_() {
        return super.g_();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0155  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzmv i(java.lang.String r10, com.google.android.gms.internal.measurement.zzft.zzj.zza r11, com.google.android.gms.internal.measurement.zzft.zze.zza r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznm.i(java.lang.String, com.google.android.gms.internal.measurement.zzft$zzj$zza, com.google.android.gms.internal.measurement.zzft$zze$zza, java.lang.String):com.google.android.gms.measurement.internal.zzmv");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0155  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzmv j(java.lang.String r10, com.google.android.gms.internal.measurement.zzft.zzj r11, com.google.android.gms.internal.measurement.zzft.zze.zza r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznm.j(java.lang.String, com.google.android.gms.internal.measurement.zzft$zzj, com.google.android.gms.internal.measurement.zzft$zze$zza, java.lang.String):com.google.android.gms.measurement.internal.zzmv");
    }

    public final String k(zzft.zzi zziVar) {
        zzft.zzb zzt;
        if (zziVar == null) {
            return "";
        }
        StringBuilder o6 = c.o("\nbatch {\n");
        for (zzft.zzj zzjVar : zziVar.zzd()) {
            if (zzjVar != null) {
                v(o6, 1);
                o6.append("bundle {\n");
                if (zzjVar.zzbk()) {
                    y(o6, 1, "protocol_version", Integer.valueOf(zzjVar.zze()));
                }
                if (zzqk.zza() && zze().zze(zzjVar.zzx(), zzbh.f11353s0) && zzjVar.zzbn()) {
                    y(o6, 1, "session_stitching_token", zzjVar.zzam());
                }
                y(o6, 1, "platform", zzjVar.zzak());
                if (zzjVar.zzbf()) {
                    y(o6, 1, "gmp_version", Long.valueOf(zzjVar.zzm()));
                }
                if (zzjVar.zzbs()) {
                    y(o6, 1, "uploading_gmp_version", Long.valueOf(zzjVar.zzs()));
                }
                if (zzjVar.zzbd()) {
                    y(o6, 1, "dynamite_version", Long.valueOf(zzjVar.zzk()));
                }
                if (zzjVar.zzay()) {
                    y(o6, 1, "config_version", Long.valueOf(zzjVar.zzi()));
                }
                y(o6, 1, "gmp_app_id", zzjVar.zzah());
                y(o6, 1, "admob_app_id", zzjVar.zzw());
                y(o6, 1, "app_id", zzjVar.zzx());
                y(o6, 1, "app_version", zzjVar.zzaa());
                if (zzjVar.zzav()) {
                    y(o6, 1, "app_version_major", Integer.valueOf(zzjVar.zzb()));
                }
                y(o6, 1, "firebase_instance_id", zzjVar.zzag());
                if (zzjVar.zzbc()) {
                    y(o6, 1, "dev_cert_hash", Long.valueOf(zzjVar.zzj()));
                }
                y(o6, 1, "app_store", zzjVar.zzz());
                if (zzjVar.zzbr()) {
                    y(o6, 1, "upload_timestamp_millis", Long.valueOf(zzjVar.zzr()));
                }
                if (zzjVar.zzbo()) {
                    y(o6, 1, "start_timestamp_millis", Long.valueOf(zzjVar.zzp()));
                }
                if (zzjVar.zzbe()) {
                    y(o6, 1, "end_timestamp_millis", Long.valueOf(zzjVar.zzl()));
                }
                if (zzjVar.zzbj()) {
                    y(o6, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzjVar.zzo()));
                }
                if (zzjVar.zzbi()) {
                    y(o6, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzjVar.zzn()));
                }
                y(o6, 1, "app_instance_id", zzjVar.zzy());
                y(o6, 1, "resettable_device_id", zzjVar.zzal());
                y(o6, 1, "ds_id", zzjVar.zzaf());
                if (zzjVar.zzbh()) {
                    y(o6, 1, "limited_ad_tracking", Boolean.valueOf(zzjVar.zzat()));
                }
                y(o6, 1, "os_version", zzjVar.h_());
                y(o6, 1, "device_model", zzjVar.zzae());
                y(o6, 1, "user_default_language", zzjVar.zzan());
                if (zzjVar.zzbq()) {
                    y(o6, 1, "time_zone_offset_minutes", Integer.valueOf(zzjVar.zzg()));
                }
                if (zzjVar.zzax()) {
                    y(o6, 1, "bundle_sequential_index", Integer.valueOf(zzjVar.zzc()));
                }
                if (zzjVar.zzbm()) {
                    y(o6, 1, "service_upload", Boolean.valueOf(zzjVar.zzau()));
                }
                y(o6, 1, "health_monitor", zzjVar.zzai());
                if (zzjVar.zzbl()) {
                    y(o6, 1, "retry_counter", Integer.valueOf(zzjVar.zzf()));
                }
                if (zzjVar.zzba()) {
                    y(o6, 1, "consent_signals", zzjVar.zzac());
                }
                if (zzjVar.zzbg()) {
                    y(o6, 1, "is_dma_region", Boolean.valueOf(zzjVar.zzas()));
                }
                if (zzjVar.zzbb()) {
                    y(o6, 1, "core_platform_services", zzjVar.zzad());
                }
                if (zzjVar.zzaz()) {
                    y(o6, 1, "consent_diagnostics", zzjVar.zzab());
                }
                if (zzjVar.zzbp()) {
                    y(o6, 1, "target_os_version", Long.valueOf(zzjVar.zzq()));
                }
                if (zzpy.zza() && zze().zze(zzjVar.zzx(), zzbh.f11271E0)) {
                    y(o6, 1, "ad_services_version", Integer.valueOf(zzjVar.zza()));
                    if (zzjVar.zzaw() && (zzt = zzjVar.zzt()) != null) {
                        v(o6, 2);
                        o6.append("attribution_eligibility_status {\n");
                        y(o6, 2, "eligible", Boolean.valueOf(zzt.zzf()));
                        y(o6, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(zzt.zzh()));
                        y(o6, 2, "pre_r", Boolean.valueOf(zzt.zzi()));
                        y(o6, 2, "r_extensions_too_old", Boolean.valueOf(zzt.zzj()));
                        y(o6, 2, "adservices_extension_too_old", Boolean.valueOf(zzt.zze()));
                        y(o6, 2, "ad_storage_not_allowed", Boolean.valueOf(zzt.zzd()));
                        y(o6, 2, "measurement_manager_disabled", Boolean.valueOf(zzt.zzg()));
                        v(o6, 2);
                        o6.append("}\n");
                    }
                }
                List<zzft.zzn> zzaq = zzjVar.zzaq();
                if (zzaq != null) {
                    for (zzft.zzn zznVar : zzaq) {
                        if (zznVar != null) {
                            v(o6, 2);
                            o6.append("user_property {\n");
                            y(o6, 2, "set_timestamp_millis", zznVar.zzl() ? Long.valueOf(zznVar.zzd()) : null);
                            y(o6, 2, "name", zzi().zzc(zznVar.zzg()));
                            y(o6, 2, "string_value", zznVar.zzh());
                            y(o6, 2, "int_value", zznVar.zzk() ? Long.valueOf(zznVar.zzc()) : null);
                            y(o6, 2, "double_value", zznVar.zzi() ? Double.valueOf(zznVar.zza()) : null);
                            v(o6, 2);
                            o6.append("}\n");
                        }
                    }
                }
                List<zzft.zzc> zzao = zzjVar.zzao();
                zzjVar.zzx();
                if (zzao != null) {
                    for (zzft.zzc zzcVar : zzao) {
                        if (zzcVar != null) {
                            v(o6, 2);
                            o6.append("audience_membership {\n");
                            if (zzcVar.zzg()) {
                                y(o6, 2, "audience_id", Integer.valueOf(zzcVar.zza()));
                            }
                            if (zzcVar.zzh()) {
                                y(o6, 2, "new_audience", Boolean.valueOf(zzcVar.zzf()));
                            }
                            A(o6, "current_data", zzcVar.zzd());
                            if (zzcVar.zzi()) {
                                A(o6, "previous_data", zzcVar.zze());
                            }
                            v(o6, 2);
                            o6.append("}\n");
                        }
                    }
                }
                List<zzft.zze> zzap = zzjVar.zzap();
                if (zzap != null) {
                    for (zzft.zze zzeVar : zzap) {
                        if (zzeVar != null) {
                            v(o6, 2);
                            o6.append("event {\n");
                            y(o6, 2, "name", zzi().zza(zzeVar.zzg()));
                            if (zzeVar.zzk()) {
                                y(o6, 2, "timestamp_millis", Long.valueOf(zzeVar.zzd()));
                            }
                            if (zzeVar.zzj()) {
                                y(o6, 2, "previous_timestamp_millis", Long.valueOf(zzeVar.zzc()));
                            }
                            if (zzeVar.zzi()) {
                                y(o6, 2, "count", Integer.valueOf(zzeVar.zza()));
                            }
                            if (zzeVar.zzb() != 0) {
                                z(o6, 2, zzeVar.zzh());
                            }
                            v(o6, 2);
                            o6.append("}\n");
                        }
                    }
                }
                v(o6, 1);
                o6.append("}\n");
            }
        }
        o6.append("}\n");
        return o6.toString();
    }

    public final List o(List list, List list2) {
        int i2;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                zzj().zzu().zza("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    zzj().zzu().zza("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i7 = size2;
            i2 = size;
            size = i7;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i2);
    }

    public final void s(zzft.zzg.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zze().zzc().zzb().zzd();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            zzj().zzg().zza("Ignoring invalid (type) event param value", obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                zzft.zzg.zza zze = zzft.zzg.zze();
                for (String str : bundle.keySet()) {
                    zzft.zzg.zza zza = zzft.zzg.zze().zza(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        zza.zza(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        zza.zzb((String) obj2);
                    } else if (obj2 instanceof Double) {
                        zza.zza(((Double) obj2).doubleValue());
                    }
                    zze.zza(zza);
                }
                if (zze.zza() > 0) {
                    arrayList.add((zzft.zzg) ((com.google.android.gms.internal.measurement.zzjt) zze.zzah()));
                }
            }
        }
        zzaVar.zza(arrayList);
    }

    public final void t(zzft.zzj.zza zzaVar) {
        zzj().zzp().zza("Checking account type status for ad personalization signals");
        if (I(zzaVar.zzt())) {
            zzj().zzc().zza("Turning off ad personalization due to account type");
            zzft.zzn.zza zza = zzft.zzn.zze().zza("_npa");
            zzaz zzf = zzf();
            zzf.zzt();
            zzft.zzn zznVar = (zzft.zzn) ((com.google.android.gms.internal.measurement.zzjt) zza.zzb(zzf.f11240g).zza(1L).zzah());
            int i2 = 0;
            while (true) {
                if (i2 >= zzaVar.zzd()) {
                    zzaVar.zza(zznVar);
                    break;
                } else {
                    if ("_npa".equals(zzaVar.zzk(i2).zzg())) {
                        zzaVar.zza(i2, zznVar);
                        break;
                    }
                    i2++;
                }
            }
            if (zzon.zza() && zze().zza(zzbh.f11287M0)) {
                zzaj zza2 = zzaj.zza(zzaVar.zzv());
                zza2.zza(zziq.zza.AD_PERSONALIZATION, zzai.CHILD_ACCOUNT);
                zzaVar.zzf(zza2.toString());
            }
        }
    }

    public final void u(zzft.zzn.zza zzaVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzaVar.zzc().zzb().zza();
        if (obj instanceof String) {
            zzaVar.zzb((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzaVar.zza(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzaVar.zza(((Double) obj).doubleValue());
        } else {
            zzj().zzg().zza("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void w(StringBuilder sb, int i2, zzfh.zzc zzcVar) {
        if (zzcVar == null) {
            return;
        }
        v(sb, i2);
        sb.append("filter {\n");
        if (zzcVar.zzg()) {
            y(sb, i2, "complement", Boolean.valueOf(zzcVar.zzf()));
        }
        if (zzcVar.zzi()) {
            y(sb, i2, "param_name", zzi().zzb(zzcVar.zze()));
        }
        if (zzcVar.zzj()) {
            int i7 = i2 + 1;
            zzfh.zzf zzd = zzcVar.zzd();
            if (zzd != null) {
                v(sb, i7);
                sb.append("string_filter");
                sb.append(" {\n");
                if (zzd.zzj()) {
                    y(sb, i7, "match_type", zzd.zzb().name());
                }
                if (zzd.zzi()) {
                    y(sb, i7, "expression", zzd.zze());
                }
                if (zzd.zzh()) {
                    y(sb, i7, "case_sensitive", Boolean.valueOf(zzd.zzg()));
                }
                if (zzd.zza() > 0) {
                    v(sb, i2 + 2);
                    sb.append("expression_list {\n");
                    for (String str : zzd.zzf()) {
                        v(sb, i2 + 3);
                        sb.append(str);
                        sb.append(StringUtils.LF);
                    }
                    sb.append("}\n");
                }
                v(sb, i7);
                sb.append("}\n");
            }
        }
        if (zzcVar.zzh()) {
            x(sb, i2 + 1, "number_filter", zzcVar.zzc());
        }
        v(sb, i2);
        sb.append("}\n");
    }

    public final void z(StringBuilder sb, int i2, List list) {
        if (list == null) {
            return;
        }
        int i7 = i2 + 1;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzft.zzg zzgVar = (zzft.zzg) it.next();
            if (zzgVar != null) {
                v(sb, i7);
                sb.append("param {\n");
                y(sb, i7, "name", zzgVar.zzm() ? zzi().zzb(zzgVar.zzg()) : null);
                y(sb, i7, "string_value", zzgVar.zzn() ? zzgVar.zzh() : null);
                y(sb, i7, "int_value", zzgVar.zzl() ? Long.valueOf(zzgVar.zzd()) : null);
                y(sb, i7, "double_value", zzgVar.zzj() ? Double.valueOf(zzgVar.zza()) : null);
                if (zzgVar.zzc() > 0) {
                    z(sb, i7, zzgVar.zzi());
                }
                v(sb, i7);
                sb.append("}\n");
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzmy
    public final boolean zzc() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzad zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzae zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zzan zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzfw zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzgb zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzgm zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzhh zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zzgy zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zzmd zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzmz
    public final /* bridge */ /* synthetic */ zznb zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public static Bundle zza(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzft.zzg zzgVar = (zzft.zzg) it.next();
            String zzg = zzgVar.zzg();
            if (zzgVar.zzj()) {
                bundle.putDouble(zzg, zzgVar.zza());
            } else if (zzgVar.zzk()) {
                bundle.putFloat(zzg, zzgVar.zzb());
            } else if (zzgVar.zzn()) {
                bundle.putString(zzg, zzgVar.zzh());
            } else if (zzgVar.zzl()) {
                bundle.putLong(zzg, zzgVar.zzd());
            }
        }
        return bundle;
    }
}
