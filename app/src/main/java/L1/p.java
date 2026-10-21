package L1;

import android.content.ComponentName;
import android.content.Context;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1881a = B1.t.tagWithPrefix("PackageManagerHelper");

    public static void setComponentEnabled(Context context, Class<?> cls, boolean z6) {
        String str = f1881a;
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z6 ? 1 : 2, 1);
            B1.t tVar = B1.t.get();
            StringBuilder sb = new StringBuilder();
            sb.append(cls.getName());
            sb.append(StringUtils.SPACE);
            sb.append(z6 ? "enabled" : "disabled");
            tVar.debug(str, sb.toString());
        } catch (Exception e3) {
            B1.t tVar2 = B1.t.get();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls.getName());
            sb2.append("could not be ");
            sb2.append(z6 ? "enabled" : "disabled");
            tVar2.debug(str, sb2.toString(), e3);
        }
    }
}
