package m4;

import android.graphics.Bitmap;
import android.net.Uri;
import com.squareup.picasso.Picasso$Priority;
import cz.msebera.android.httpclient.message.TokenParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class I {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f18620a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18621b;

    /* renamed from: c, reason: collision with root package name */
    public final List f18622c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18623d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18624e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f18625f;

    /* renamed from: g, reason: collision with root package name */
    public final int f18626g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f18627h;

    /* renamed from: i, reason: collision with root package name */
    public final Bitmap.Config f18628i;

    /* renamed from: j, reason: collision with root package name */
    public final Picasso$Priority f18629j;

    static {
        TimeUnit.SECONDS.toNanos(5L);
    }

    public I(Uri uri, int i2, ArrayList arrayList, int i7, int i8, boolean z6, int i9, boolean z7, Bitmap.Config config, Picasso$Priority picasso$Priority) {
        this.f18620a = uri;
        this.f18621b = i2;
        if (arrayList == null) {
            this.f18622c = null;
        } else {
            this.f18622c = Collections.unmodifiableList(arrayList);
        }
        this.f18623d = i7;
        this.f18624e = i8;
        this.f18625f = z6;
        this.f18626g = i9;
        this.f18627h = z7;
        this.f18628i = config;
        this.f18629j = picasso$Priority;
    }

    public final boolean a() {
        return hasSize();
    }

    public boolean hasSize() {
        return (this.f18623d == 0 && this.f18624e == 0) ? false : true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i2 = this.f18621b;
        if (i2 > 0) {
            sb.append(i2);
        } else {
            sb.append(this.f18620a);
        }
        List<S> list = this.f18622c;
        if (list != null && !list.isEmpty()) {
            for (S s6 : list) {
                sb.append(TokenParser.SP);
                sb.append(((T4.d) s6).key());
            }
        }
        int i7 = this.f18623d;
        if (i7 > 0) {
            sb.append(" resize(");
            sb.append(i7);
            sb.append(',');
            sb.append(this.f18624e);
            sb.append(')');
        }
        if (this.f18625f) {
            sb.append(" centerCrop");
        }
        Bitmap.Config config = this.f18628i;
        if (config != null) {
            sb.append(TokenParser.SP);
            sb.append(config);
        }
        sb.append('}');
        return sb.toString();
    }
}
