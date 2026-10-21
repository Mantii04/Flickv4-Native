package Z4;

import android.webkit.ValueCallback;
import org.apache.commons.lang3.StringEscapeUtils;

/* loaded from: classes2.dex */
public final class w implements ValueCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f4603a;

    public w(x xVar) {
        this.f4603a = xVar;
    }

    @Override // android.webkit.ValueCallback
    public void onReceiveValue(String str) {
        y yVar = this.f4603a.f4604a;
        yVar.getClass();
        if (str == null || str.length() < 100) {
            return;
        }
        try {
            String unescapeJava = StringEscapeUtils.unescapeJava(str);
            if (unescapeJava.contains("Just a moment...") || unescapeJava.contains("Checking if the site connection is secure") || unescapeJava.contains("Checking your browser before accessing") || !yVar.f4608d) {
                return;
            }
            yVar.e(unescapeJava, true);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
