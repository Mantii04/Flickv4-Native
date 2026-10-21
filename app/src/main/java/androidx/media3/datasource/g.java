package androidx.media3.datasource;

import P3.AbstractC0226a;
import android.text.TextUtils;
import androidx.media3.common.MimeTypes;

/* loaded from: classes.dex */
public abstract /* synthetic */ class g {
    public static /* synthetic */ boolean a(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = AbstractC0226a.toLowerCase(str);
        return (TextUtils.isEmpty(lowerCase) || (lowerCase.contains(MimeTypes.BASE_TYPE_TEXT) && !lowerCase.contains(MimeTypes.TEXT_VTT)) || lowerCase.contains("html") || lowerCase.contains("xml")) ? false : true;
    }
}
