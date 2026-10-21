package com.google.android.gms.internal.measurement;

import A.i;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzas implements zzaq, Iterable<zzaq> {
    private final String zza;

    public zzas(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.zza = str;
    }

    /* JADX WARN: Failed to check method usage
    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.MethodNode.getTopParentClass()" because "m" is null
    	at jadx.core.codegen.ClassGen.lambda$skipMethod$4(ClassGen.java:360)
    	at java.base/java.util.stream.ReferencePipeline$2$1.accept(ReferencePipeline.java:178)
    	at java.base/java.util.ArrayList$ArrayListSpliterator.forEachRemaining(ArrayList.java:1625)
    	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:509)
    	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:499)
    	at java.base/java.util.stream.ReduceOps$ReduceOp.evaluateSequential(ReduceOps.java:921)
    	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
    	at java.base/java.util.stream.ReferencePipeline.collect(ReferencePipeline.java:682)
    	at jadx.core.codegen.ClassGen.skipMethod(ClassGen.java:361)
    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:327)
    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
     */
    public static /* bridge */ /* synthetic */ String zza(zzas zzasVar) {
        return zzasVar.zza;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzas) {
            return this.zza.equals(((zzas) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<zzaq> iterator() {
        return new zzau(this);
    }

    public final String toString() {
        return i.l("\"", this.zza, "\"");
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zzc() {
        return new zzas(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Boolean zzd() {
        return Boolean.valueOf(!this.zza.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Double zze() {
        if (this.zza.isEmpty()) {
            return Double.valueOf(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        }
        try {
            return Double.valueOf(this.zza);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final String zzf() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzaq
    public final Iterator<zzaq> zzh() {
        return new zzav(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzaq
    public final zzaq zza(String str, zzh zzhVar, List<zzaq> list) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        double d7;
        char c7;
        int i2;
        zzas zzasVar;
        int i7;
        int i8;
        zzh zzhVar2;
        String zzf;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || FirebaseAnalytics.Event.SEARCH.equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str) || "toLocaleUpperCase".equals(str)) {
            str2 = "hasOwnProperty";
            str3 = "trim";
        } else {
            str2 = "hasOwnProperty";
            str3 = "trim";
            if (!str3.equals(str)) {
                throw new IllegalArgumentException(i.B(str, " is not a String function"));
            }
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1789698943:
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                if (str.equals(str4)) {
                    c7 = 0;
                    break;
                } else {
                    c7 = 65535;
                    break;
                }
            case -1776922004:
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                if (str.equals(str6)) {
                    str4 = str2;
                    c7 = 1;
                    break;
                } else {
                    c7 = 65535;
                    str4 = str2;
                    break;
                }
            case -1464939364:
                str5 = "charAt";
                str7 = "toLocaleLowerCase";
                if (str.equals(str7)) {
                    str4 = str2;
                    str6 = "toString";
                    c7 = 2;
                } else {
                    c7 = 65535;
                    str4 = str2;
                    str6 = "toString";
                }
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                break;
            case -1361633751:
                str5 = "charAt";
                if (!str.equals(str5)) {
                    c7 = 65535;
                    str4 = str2;
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                } else {
                    str4 = str2;
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    c7 = 3;
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                }
            case -1354795244:
                if (str.equals("concat")) {
                    c7 = 4;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    c7 = 5;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case -906336856:
                if (str.equals(FirebaseAnalytics.Event.SEARCH)) {
                    c7 = 6;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case -726908483:
                if (str.equals("toLocaleUpperCase")) {
                    c7 = 7;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c7 = '\b';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case -399551817:
                if (str.equals("toUpperCase")) {
                    c7 = '\t';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 3568674:
                if (str.equals(str3)) {
                    c7 = '\n';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 103668165:
                if (str.equals("match")) {
                    c7 = 11;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 109526418:
                if (str.equals("slice")) {
                    c7 = '\f';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 109648666:
                if (str.equals("split")) {
                    c7 = '\r';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 530542161:
                if (str.equals("substring")) {
                    c7 = 14;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 1094496948:
                if (str.equals("replace")) {
                    c7 = 15;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 1943291465:
                if (str.equals("indexOf")) {
                    c7 = 16;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    str7 = "toLocaleLowerCase";
                    d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    break;
                }
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            default:
                c7 = 65535;
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                str7 = "toLocaleLowerCase";
                d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                break;
        }
        switch (c7) {
            case 0:
                zzg.zza(str4, 1, list);
                String str8 = this.zza;
                zzaq zza = zzhVar.zza(list.get(0));
                if ("length".equals(zza.zzf())) {
                    return zzaq.zzh;
                }
                double doubleValue = zza.zze().doubleValue();
                return (doubleValue != Math.floor(doubleValue) || (i2 = (int) doubleValue) < 0 || i2 >= str8.length()) ? zzaq.zzi : zzaq.zzh;
            case 1:
                zzg.zza(str6, 0, list);
                return this;
            case 2:
                zzg.zza(str7, 0, list);
                return new zzas(this.zza.toLowerCase());
            case 3:
                zzg.zzc(str5, 1, list);
                int zza2 = !list.isEmpty() ? (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue()) : 0;
                String str9 = this.zza;
                return (zza2 < 0 || zza2 >= str9.length()) ? zzaq.zzj : new zzas(String.valueOf(str9.charAt(zza2)));
            case 4:
                zzasVar = this;
                if (!list.isEmpty()) {
                    StringBuilder sb = new StringBuilder(zzasVar.zza);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        sb.append(zzhVar.zza(list.get(i9)).zzf());
                    }
                    return new zzas(sb.toString());
                }
                return zzasVar;
            case 5:
                zzg.zza("toLowerCase", 0, list);
                return new zzas(this.zza.toLowerCase(Locale.ENGLISH));
            case 6:
                zzg.zzc(FirebaseAnalytics.Event.SEARCH, 1, list);
                return Pattern.compile(!list.isEmpty() ? zzhVar.zza(list.get(0)).zzf() : zzaq.zzc.zzf()).matcher(this.zza).find() ? new zzai(Double.valueOf(r0.start())) : new zzai(Double.valueOf(-1.0d));
            case 7:
                zzg.zza("toLocaleUpperCase", 0, list);
                return new zzas(this.zza.toUpperCase());
            case '\b':
                zzg.zzc("lastIndexOf", 2, list);
                String str10 = this.zza;
                String zzf2 = list.size() <= 0 ? zzaq.zzc.zzf() : zzhVar.zza(list.get(0)).zzf();
                return new zzai(Double.valueOf(str10.lastIndexOf(zzf2, (int) (Double.isNaN(list.size() < 2 ? Double.NaN : zzhVar.zza(list.get(1)).zze().doubleValue()) ? Double.POSITIVE_INFINITY : zzg.zza(r4)))));
            case '\t':
                zzg.zza("toUpperCase", 0, list);
                return new zzas(this.zza.toUpperCase(Locale.ENGLISH));
            case '\n':
                zzg.zza("toUpperCase", 0, list);
                return new zzas(this.zza.trim());
            case 11:
                zzg.zzc("match", 1, list);
                Matcher matcher = Pattern.compile(list.size() <= 0 ? "" : zzhVar.zza(list.get(0)).zzf()).matcher(this.zza);
                return matcher.find() ? new zzaf(new zzas(matcher.group())) : zzaq.zzd;
            case '\f':
                zzg.zzc("slice", 2, list);
                String str11 = this.zza;
                double zza3 = zzg.zza(!list.isEmpty() ? zzhVar.zza(list.get(0)).zze().doubleValue() : d7);
                int max = (int) (zza3 < d7 ? Math.max(str11.length() + zza3, d7) : Math.min(zza3, str11.length()));
                double zza4 = zzg.zza(list.size() > 1 ? zzhVar.zza(list.get(1)).zze().doubleValue() : str11.length());
                return new zzas(str11.substring(max, Math.max(0, ((int) (zza4 < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? Math.max(str11.length() + zza4, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) : Math.min(zza4, str11.length()))) - max) + max));
            case '\r':
                zzg.zzc("split", 2, list);
                String str12 = this.zza;
                if (str12.length() == 0) {
                    return new zzaf(this);
                }
                ArrayList arrayList = new ArrayList();
                if (list.isEmpty()) {
                    arrayList.add(this);
                } else {
                    String zzf3 = zzhVar.zza(list.get(0)).zzf();
                    long zzc = list.size() > 1 ? zzg.zzc(zzhVar.zza(list.get(1)).zze().doubleValue()) : 2147483647L;
                    if (zzc == 0) {
                        return new zzaf();
                    }
                    String[] split = str12.split(Pattern.quote(zzf3), ((int) zzc) + 1);
                    int length = split.length;
                    if (!zzf3.isEmpty() || split.length <= 0) {
                        i7 = 0;
                    } else {
                        boolean isEmpty = split[0].isEmpty();
                        i7 = isEmpty;
                        if (split[split.length - 1].isEmpty()) {
                            length = split.length - 1;
                            i7 = isEmpty;
                        }
                    }
                    if (split.length > zzc) {
                        length--;
                    }
                    while (i7 < length) {
                        arrayList.add(new zzas(split[i7]));
                        i7++;
                    }
                }
                return new zzaf(arrayList);
            case 14:
                zzg.zzc("substring", 2, list);
                String str13 = this.zza;
                int zza5 = !list.isEmpty() ? (int) zzg.zza(zzhVar.zza(list.get(0)).zze().doubleValue()) : 0;
                int zza6 = list.size() > 1 ? (int) zzg.zza(zzhVar.zza(list.get(1)).zze().doubleValue()) : str13.length();
                int min = Math.min(Math.max(zza5, 0), str13.length());
                int min2 = Math.min(Math.max(zza6, 0), str13.length());
                return new zzas(str13.substring(Math.min(min, min2), Math.max(min, min2)));
            case 15:
                zzasVar = this;
                zzg.zzc("replace", 2, list);
                zzaq zzaqVar = zzaq.zzc;
                String zzf4 = zzaqVar.zzf();
                if (!list.isEmpty()) {
                    zzf4 = zzhVar.zza(list.get(0)).zzf();
                    if (list.size() > 1) {
                        zzaqVar = zzhVar.zza(list.get(1));
                    }
                }
                String str14 = zzasVar.zza;
                int indexOf = str14.indexOf(zzf4);
                if (indexOf >= 0) {
                    if (zzaqVar instanceof zzal) {
                        i8 = 0;
                        zzaqVar = ((zzal) zzaqVar).zza(zzhVar, Arrays.asList(new zzas(zzf4), new zzai(Double.valueOf(indexOf)), zzasVar));
                    } else {
                        i8 = 0;
                    }
                    return new zzas(i.C(str14.substring(i8, indexOf), zzaqVar.zzf(), str14.substring(zzf4.length() + indexOf)));
                }
                return zzasVar;
            case 16:
                zzg.zzc("indexOf", 2, list);
                String str15 = this.zza;
                if (list.size() <= 0) {
                    zzf = zzaq.zzc.zzf();
                    zzhVar2 = zzhVar;
                } else {
                    zzhVar2 = zzhVar;
                    zzf = zzhVar2.zza(list.get(0)).zzf();
                }
                return new zzai(Double.valueOf(str15.indexOf(zzf, (int) zzg.zza(list.size() < 2 ? d7 : zzhVar2.zza(list.get(1)).zze().doubleValue()))));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }
}
