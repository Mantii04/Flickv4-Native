package W0;

import P3.v;
import android.graphics.PointF;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f4099c = Pattern.compile("\\{([^}]*)\\}");

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f4100d = Pattern.compile(Util.formatInvariant("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f4101e = Pattern.compile(Util.formatInvariant("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

    /* renamed from: f, reason: collision with root package name */
    public static final Pattern f4102f = Pattern.compile("\\\\an(\\d+)");

    /* renamed from: a, reason: collision with root package name */
    public final int f4103a;

    /* renamed from: b, reason: collision with root package name */
    public final PointF f4104b;

    public d(int i2, PointF pointF) {
        this.f4103a = i2;
        this.f4104b = pointF;
    }

    public static PointF a(String str) {
        String group;
        String group2;
        Matcher matcher = f4100d.matcher(str);
        Matcher matcher2 = f4101e.matcher(str);
        boolean find = matcher.find();
        boolean find2 = matcher2.find();
        if (find) {
            if (find2) {
                Log.i("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
            }
            group = matcher.group(1);
            group2 = matcher.group(2);
        } else {
            if (!find2) {
                return null;
            }
            group = matcher2.group(1);
            group2 = matcher2.group(2);
        }
        return new PointF(Float.parseFloat(((String) v.checkNotNull(group)).trim()), Float.parseFloat(((String) v.checkNotNull(group2)).trim()));
    }

    public static d parseFromDialogue(String str) {
        Matcher matcher = f4099c.matcher(str);
        PointF pointF = null;
        int i2 = -1;
        while (matcher.find()) {
            String str2 = (String) v.checkNotNull(matcher.group(1));
            try {
                PointF a7 = a(str2);
                if (a7 != null) {
                    pointF = a7;
                }
            } catch (RuntimeException unused) {
            }
            try {
                Matcher matcher2 = f4102f.matcher(str2);
                int a8 = matcher2.find() ? e.a((String) v.checkNotNull(matcher2.group(1))) : -1;
                if (a8 != -1) {
                    i2 = a8;
                }
            } catch (RuntimeException unused2) {
            }
        }
        return new d(i2, pointF);
    }

    public static String stripStyleOverrides(String str) {
        return f4099c.matcher(str).replaceAll("");
    }
}
