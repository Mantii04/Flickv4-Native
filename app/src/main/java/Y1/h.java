package Y1;

import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final String f4362a;

    /* renamed from: b, reason: collision with root package name */
    public final float f4363b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4364c;

    public h(String str, float f3, float f7) {
        this.f4362a = str;
        this.f4364c = f7;
        this.f4363b = f3;
    }

    public boolean matchesName(String str) {
        String str2 = this.f4362a;
        if (str2.equalsIgnoreCase(str)) {
            return true;
        }
        return str2.endsWith(StringUtils.CR) && str2.substring(0, str2.length() - 1).equalsIgnoreCase(str);
    }
}
