package h5;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;

/* renamed from: h5.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0997k {

    /* renamed from: a, reason: collision with root package name */
    public final String f16623a;

    public C0997k(String str) {
        this.f16623a = str;
    }

    public boolean detect() {
        return Pattern.compile("eval\\(function\\(p,a,c,k,e,(?:r|d)").matcher(this.f16623a.replace(StringUtils.SPACE, "")).find();
    }

    public String unpack() {
        int i2;
        int i7;
        String str;
        HashMap hashMap;
        int i8;
        int i9;
        HashMap hashMap2;
        String str2;
        int i10;
        HashMap hashMap3;
        Integer num;
        try {
            Matcher matcher = Pattern.compile("\\}\\s*\\('(.*)',\\s*(.*?),\\s*(\\d+),\\s*'(.*?)'\\.split\\('\\|'\\)", 32).matcher(new String(this.f16623a));
            if (!matcher.find() || matcher.groupCount() != 4) {
                return null;
            }
            String replace = matcher.group(1).replace("\\'", "'");
            String group = matcher.group(2);
            String group2 = matcher.group(3);
            String[] split = matcher.group(4).split("\\|");
            try {
                i2 = Integer.parseInt(group);
            } catch (Exception unused) {
                i2 = 36;
            }
            int i11 = 0;
            try {
                i7 = Integer.parseInt(group2);
            } catch (Exception unused2) {
                i7 = 0;
            }
            try {
                if (split.length != i7) {
                    throw new Exception("Unknown p.a.c.k.e.r. encoding");
                }
                if (i2 > 36) {
                    str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
                    if (i2 < 62) {
                        str = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".substring(0, i2);
                    } else if (i2 > 62 && i2 < 95) {
                        str = " !\"#$%&\\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".substring(0, i2);
                    } else if (i2 != 62) {
                        str = i2 == 95 ? " !\"#$%&\\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\\\]^_`abcdefghijklmnopqrstuvwxyz{|}~" : null;
                    }
                    hashMap = new HashMap(95);
                    int i12 = 0;
                    while (i12 < str.length()) {
                        int i13 = i12 + 1;
                        hashMap.put(str.substring(i12, i13), Integer.valueOf(i12));
                        i12 = i13;
                    }
                } else {
                    str = null;
                    hashMap = null;
                }
                Matcher matcher2 = Pattern.compile("\\b\\w+\\b").matcher(replace);
                StringBuilder sb = new StringBuilder(replace);
                int i14 = 0;
                while (matcher2.find()) {
                    String group3 = matcher2.group(i11);
                    if (str == null) {
                        try {
                            i9 = Integer.parseInt(group3, i2);
                            i8 = i14;
                        } catch (Exception unused3) {
                            i8 = i14;
                            i9 = i11;
                        }
                        hashMap2 = hashMap;
                        str2 = null;
                    } else {
                        String sb2 = new StringBuilder(group3).reverse().toString();
                        int i15 = i11;
                        int i16 = i15;
                        while (i16 < sb2.length()) {
                            int i17 = i16 + 1;
                            String substring = sb2.substring(i16, i17);
                            if (!hashMap.containsKey(substring) || (num = (Integer) hashMap.get(substring)) == null) {
                                i10 = i14;
                                hashMap3 = hashMap;
                            } else {
                                i10 = i14;
                                hashMap3 = hashMap;
                                i15 = (int) ((Math.pow(i2, i16) * num.intValue()) + i15);
                            }
                            i16 = i17;
                            i14 = i10;
                            hashMap = hashMap3;
                        }
                        i8 = i14;
                        hashMap2 = hashMap;
                        str2 = null;
                        i9 = i15;
                    }
                    String str3 = i9 < split.length ? split[i9] : str2;
                    if (str3 == null || str3.length() <= 0) {
                        i14 = i8;
                    } else {
                        sb.replace(matcher2.start() + i8, matcher2.end() + i8, str3);
                        i14 = (str3.length() - group3.length()) + i8;
                    }
                    hashMap = hashMap2;
                    i11 = 0;
                }
                return sb.toString();
            } catch (Exception e3) {
                e = e3;
                e.printStackTrace();
                return null;
            }
        } catch (Exception e7) {
            e = e7;
        }
    }
}
