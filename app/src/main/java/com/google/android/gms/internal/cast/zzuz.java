package com.google.android.gms.internal.cast;

import A.i;
import com.google.firebase.analytics.FirebaseAnalytics;
import cz.msebera.android.httpclient.message.TokenParser;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
final class zzuz {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, TokenParser.SP);
    }

    public static String zza(zzux zzuxVar, String str) {
        StringBuilder s6 = i.s("# ", str);
        zzd(zzuxVar, s6, 0);
        return s6.toString();
    }

    public static void zzb(StringBuilder sb, int i2, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zzb(sb, i2, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zzb(sb, i2, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        zzc(i2, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i7 = 1; i7 < str.length(); i7++) {
                char charAt = str.charAt(i7);
                if (Character.isUpperCase(charAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(charAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzvx.zza(new zzsr(((String) obj).getBytes(zzty.zzb))));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzsu) {
            sb.append(": \"");
            sb.append(zzvx.zza((zzsu) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zztp) {
            sb.append(" {");
            zzd((zztp) obj, sb, i2 + 2);
            sb.append(StringUtils.LF);
            zzc(i2, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        int i8 = i2 + 2;
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        zzb(sb, i8, "key", entry.getKey());
        zzb(sb, i8, FirebaseAnalytics.Param.VALUE, entry.getValue());
        sb.append(StringUtils.LF);
        zzc(i2, sb);
        sb.append("}");
    }

    private static void zzc(int i2, StringBuilder sb) {
        while (i2 > 0) {
            int i7 = 80;
            if (i2 <= 80) {
                i7 = i2;
            }
            sb.append(zza, 0, i7);
            i2 -= i7;
        }
    }

    private static void zzd(zzux zzuxVar, StringBuilder sb, int i2) {
        int i7;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzuxVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i8 = 0;
        while (true) {
            i7 = 3;
            if (i8 >= length) {
                break;
            }
            Method method3 = declaredMethods[i8];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i8++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i7);
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                zzb(sb, i2, substring.substring(0, substring.length() - 4), zztp.zzD(method2, zzuxVar, new Object[0]));
            } else if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                zzb(sb, i2, substring.substring(0, substring.length() - 3), zztp.zzD(method, zzuxVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object zzD = zztp.zzD(method4, zzuxVar, new Object[0]);
                    if (method5 != null) {
                        if (!((Boolean) zztp.zzD(method5, zzuxVar, new Object[0])).booleanValue()) {
                        }
                        zzb(sb, i2, substring, zzD);
                    } else if (zzD instanceof Boolean) {
                        if (!((Boolean) zzD).booleanValue()) {
                        }
                        zzb(sb, i2, substring, zzD);
                    } else if (zzD instanceof Integer) {
                        if (((Integer) zzD).intValue() == 0) {
                        }
                        zzb(sb, i2, substring, zzD);
                    } else if (zzD instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) zzD).floatValue()) == 0) {
                        }
                        zzb(sb, i2, substring, zzD);
                    } else if (zzD instanceof Double) {
                        if (Double.doubleToRawLongBits(((Double) zzD).doubleValue()) == 0) {
                        }
                        zzb(sb, i2, substring, zzD);
                    } else {
                        if (zzD instanceof String) {
                            equals = zzD.equals("");
                        } else if (zzD instanceof zzsu) {
                            equals = zzD.equals(zzsu.zzb);
                        } else if (zzD instanceof zzux) {
                            if (zzD == ((zzux) zzD).zzt()) {
                            }
                            zzb(sb, i2, substring, zzD);
                        } else {
                            if ((zzD instanceof Enum) && ((Enum) zzD).ordinal() == 0) {
                            }
                            zzb(sb, i2, substring, zzD);
                        }
                        if (equals) {
                        }
                        zzb(sb, i2, substring, zzD);
                    }
                }
            }
            i7 = 3;
        }
        if (zzuxVar instanceof zztn) {
            throw null;
        }
        zzwa zzwaVar = ((zztp) zzuxVar).zzc;
        if (zzwaVar != null) {
            zzwaVar.zzg(sb, i2);
        }
    }
}
