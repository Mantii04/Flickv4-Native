package x;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import androidx.constraintlayout.widget.l;
import com.google.firebase.sessions.settings.RemoteSettings;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public SparseArray f20702a;

    /* renamed from: b, reason: collision with root package name */
    public SparseArray f20703b;

    public final void a(Context context, XmlResourceParser xmlResourceParser) {
        l lVar = new l();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i2 = 0; i2 < attributeCount; i2++) {
            String attributeName = xmlResourceParser.getAttributeName(i2);
            String attributeValue = xmlResourceParser.getAttributeValue(i2);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains(RemoteSettings.FORWARD_SLASH_STRING) ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                lVar.load(context, xmlResourceParser);
                this.f20703b.put(identifier, lVar);
                return;
            }
        }
    }

    public void setOnConstraintsChanged(e eVar) {
    }
}
