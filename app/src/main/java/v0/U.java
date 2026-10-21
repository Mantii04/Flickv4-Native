package v0;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class U {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f20392c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a, reason: collision with root package name */
    public int f20393a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f20394b = -1;

    public final boolean a(String str) {
        Matcher matcher = f20392c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt((String) Util.castNonNull(matcher.group(1)), 16);
            int parseInt2 = Integer.parseInt((String) Util.castNonNull(matcher.group(2)), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f20393a = parseInt;
            this.f20394b = parseInt2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public boolean hasGaplessInfo() {
        return (this.f20393a == -1 || this.f20394b == -1) ? false : true;
    }

    public boolean setFromMetadata(Metadata metadata) {
        Q3.x0 it = metadata.getMatchingEntries(J0.e.class, new O0.d(4)).iterator();
        while (it.hasNext()) {
            if (a(((J0.e) it.next()).f1452d)) {
                return true;
            }
        }
        Q3.x0 it2 = metadata.getMatchingEntries(J0.m.class, new O0.d(5)).iterator();
        while (it2.hasNext()) {
            if (a(((J0.m) it2.next()).f1467d)) {
                return true;
            }
        }
        return false;
    }
}
