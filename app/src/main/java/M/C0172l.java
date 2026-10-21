package M;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import com.google.firebase.analytics.FirebaseAnalytics;

/* renamed from: M.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0172l implements InterfaceC0170k {

    /* renamed from: a, reason: collision with root package name */
    public final ClipData f2039a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2040b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2041c;

    /* renamed from: d, reason: collision with root package name */
    public final Uri f2042d;

    /* renamed from: e, reason: collision with root package name */
    public final Bundle f2043e;

    public C0172l(C0166i c0166i) {
        this.f2039a = (ClipData) L.h.checkNotNull(c0166i.f2031a);
        this.f2040b = L.h.checkArgumentInRange(c0166i.f2032b, 0, 5, FirebaseAnalytics.Param.SOURCE);
        this.f2041c = L.h.checkFlagsArgument(c0166i.f2033c, 1);
        this.f2042d = c0166i.f2034d;
        this.f2043e = c0166i.f2035e;
    }

    @Override // M.InterfaceC0170k
    public ClipData getClip() {
        return this.f2039a;
    }

    @Override // M.InterfaceC0170k
    public int getFlags() {
        return this.f2041c;
    }

    @Override // M.InterfaceC0170k
    public int getSource() {
        return this.f2040b;
    }

    @Override // M.InterfaceC0170k
    public ContentInfo getWrapped() {
        return null;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
        sb.append(this.f2039a.getDescription());
        sb.append(", source=");
        int i2 = this.f2040b;
        sb.append(i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? String.valueOf(i2) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
        sb.append(", flags=");
        int i7 = this.f2041c;
        sb.append((i7 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i7));
        Uri uri = this.f2042d;
        if (uri == null) {
            str = "";
        } else {
            str = ", hasLinkUri(" + uri.toString().length() + ")";
        }
        sb.append(str);
        return A.i.o(sb, this.f2043e != null ? ", hasExtras" : "", "}");
    }
}
