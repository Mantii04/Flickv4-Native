package b1;

import P3.v;
import androidx.media3.common.util.Util;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;

/* renamed from: b1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0634f {

    /* renamed from: a, reason: collision with root package name */
    public final String f8365a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8366b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8367c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f8368d;

    public C0634f(String str, int i2, String str2, Set set) {
        this.f8366b = i2;
        this.f8365a = str;
        this.f8367c = str2;
        this.f8368d = set;
    }

    public static C0634f buildStartTag(String str, int i2) {
        String str2;
        String trim = str.trim();
        v.checkArgument(!trim.isEmpty());
        int indexOf = trim.indexOf(StringUtils.SPACE);
        if (indexOf == -1) {
            str2 = "";
        } else {
            String trim2 = trim.substring(indexOf).trim();
            trim = trim.substring(0, indexOf);
            str2 = trim2;
        }
        String[] split = Util.split(trim, "\\.");
        String str3 = split[0];
        HashSet hashSet = new HashSet();
        for (int i7 = 1; i7 < split.length; i7++) {
            hashSet.add(split[i7]);
        }
        return new C0634f(str3, i2, str2, hashSet);
    }

    public static C0634f buildWholeCueVirtualTag() {
        return new C0634f("", 0, "", Collections.EMPTY_SET);
    }
}
